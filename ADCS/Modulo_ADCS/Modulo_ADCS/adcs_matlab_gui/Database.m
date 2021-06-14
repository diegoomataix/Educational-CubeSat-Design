classdef Database
    %SEARCHENGINE Summary of this class goes here
    %   Detailed explanation goes here
% ======================================================================= %   
    properties (Access = public)
        filename
        sheetname
        table
        sortedtable
    end
% ======================================================================= %
    properties (Access = private)      
        class_array = {'actuator','sensor','dock'};
        subclass_array = {{'reaction wheel','momentum wheel','magnetorquer','other actuator'},...
                          {'sun sensor','star sensor','earth sensor',...
                          'magnetometer','imu','gnss','other sensor'}};
        
        order_array = {'ascend','descend'};
        criteria_array = {'mass','price','power','name','supplier'};
        
        commonfieldvalues = {'name','supplier','mass','power','v_nom',...
                            'dim_x','dim_y','dim_z','temp_max','temp_min'};
    end
% ======================================================================= %    
    methods (Access = public)
        function obj = Database(varargin)
            obj.filename  = '../IDR_ADCS.xlsm';
            obj.sheetname = 'Database';
            obj.log('==========================================================================');
            obj.log('GUI loaded');
            obj.table     = obj.getData();
        end
        
        function table = getData(obj,varargin)                             % GETDATA Returns catalog data from excel file
            if ~exist(fullfile(cd, obj.filename), 'file')                  % Check if file exists
                error('File does not exist. Check the filename and current path.');
            end
            [~, sheets, ~] = xlsfinfo(obj.filename);                       % Get information from the file
            if ~any(strcmp(sheets,obj.sheetname))                          % Check if spreadsheet exists
                error('Sheet does not exist within the file. Check the sheetname.');
            end
            [~, ~, raw] = xlsread(obj.filename,obj.sheetname);             % Read data from spreadsheet
            [table,~,~] = obj.raw2table(raw);                              % Split headers from data and convert data to a table
            obj.log('Table from Excel imported');
        end
        
        function table = sortData(obj,table,criteria,varargin)             % SORTDATA Sort data imported from Excel by a given criteria
            if isempty(varargin)                                           % Check if order exists
                order = 'ascend';
            else
                order = varargin{1};
            end
            if ~any(strcmp(order,obj.order_array))                         % Check if order matches any of the permitted values
                order = 'ascend';
            end
            if ~any(strcmp(criteria,obj.criteria_array))                   % Check if criteria matches any of the permitted values
                error('Criteria not given to sort data');
            else 
                if strcmp(criteria,'supplier')                             % Sort by name too if sorting by supplier
                    criteria = {'supplier','name'};
                end
                table = sortrows(table,criteria,order);
            end
        end
        
        function table = filterData(obj,table,class,varargin)              % FILTERDATA Selects class and subclass items that match query parameters     
            if ~any(strcmp(class,obj.class_array))                         % Check if class matches any of the permitted values
                error('Class not given to filter data');
            else
                % do stuff to filter table rows according to class
                % ...
                nr_class = find(strcmp(class,obj.class_array));            % Get number to load set of subclasses
            end
            table = table(ismember(table.class,{class}),:);                  % Filter table by class (help: https://bit.ly/2kh9sPW)
            if ~strcmp(class,'dock')                                       % Execute if class is different from an onboard computer
                if isempty(varargin)                                       % Check if subclass exists
                    subclass = obj.subclass_array{nr_class}{1};
                else
                    subclass = varargin{1};
                end
                if ~any(strcmp(subclass,obj.subclass_array{nr_class}))     % Check if subclass matches any of the permitted values
                    subclass = obj.subclass_array{nr_class}{1};
                end
                table = table(ismember(table.subclass,subclass),:);        % Filter table by subclass
            end
        end
        
        function [thead, tbody] = promptData(obj,table,varargin)           % PROMPTDATA Trims first four columns before printing into the GUI
            rows = size(table,1);                                          % Count rows of table
            col = false(rows,1);                                           % Add column with boolean
            col = array2table(col);

            common = table(:,ismember(table.Properties.VariableNames,...   % Select common data
                           obj.commonfieldvalues));
                       
            if isempty(varargin)                                           % Check if subclass exists
                specific = [];
            else
                subclass = varargin{1};
                specific = table(:,ismember(table.Properties.VariableNames,... % Select subclass specific data
                           obj.getSpecificFieldsBySubclass(subclass)));
            end
            
            
            table = [col common specific];                                 % Group all and name first column
            table.Properties.VariableNames{1} = 'select';
            raw = obj.table2raw(table);                                    % Split table into header and data
            thead = obj.headerValues2Text(raw(1,:));
            tbody = raw(2:end,:);
        end
        
        function fields = getSpecificFieldsBySubclass(~,subclass)          % Gets specific columns to show in db table
            switch subclass
                case {'reaction wheel','momentum wheel'}
                    fields = {'w_max','torque_max','momentum_max'};
                case 'magnetorquer'
                    fields = {'nr_axis','resistance','temp_coef','dipole_moment'};
                case {'sun sensor','star sensor','earth sensor'}
                    fields = {'prec_deg','acc_deg','fov_x','fov_y'};
                case 'magnetometer'
                    fields = {'noise','range'};
                case 'gnss'
                    fields = {'acc_pos','acc_vel','gnss'};
                case 'imu'
                    fields = {'drift'};
                otherwise
                    fields = {};
            end
        end
        
        function createItem(obj,app)                            % CREATEITEM Add new item to database           
            
            % UPDATE IN TABLE
            % ===
            subclass = app.CreateItemDropdown.Value;                       % Get subclass from dropdown
            % Load values from form data
            general  = {app.NameEditField,  app.SupplierEditField, app.URLEditField,      app.MassEditField,  app.PowerEditField,  app.PriceEditField, ...
                        app.TmaxEditField,  app.TminEditField,     app.LifespanEditField, app.WidthEditField, app.LengthEditField, app.HeightEditField, ...
                        app.VnomEditField,  app.IavgEditField,     app.IpeakEditField,    app.TRLDropDown,    app.COTSCheckBox,    app.CubeSatCheckBox, ...
                        app.NotesTextArea};
            specific = {app.Spec1EditField, app.Spec2EditField,    app.Spec3EditField,    app.Spec4EditField, app.Spec5EditField,  app.Spec6EditField};
            formdata = [general specific];
            general_fields = {'name','supplier','url','mass','power',...   % Prepare field names
                             'price','temp_max','temp_min','lifespan',...
                             'dim_x','dim_y','dim_z','v_nom','i_avg',...
                             'i_peak','trl','cots','cubesat','notes'};
            specific_fields = app.db.getSpecificFieldsBySubclass(subclass);
            fields = [general_fields specific_fields];
            % Get size of current database table
            rows = size(app.db.table,1);
            % Set subclass and create new row in db table
            app.db.table(rows+1,'subclass') = {subclass};
            % Get class from subclass
            actuators = {'reaction wheel','momentum wheel','magnetorquer','other actuator'};
            sensors   = {'sun sensor','star sensor','earth sensor','magnetometer','imu','gnss','other sensor'};
            % Add timestamp
            app.db.table(rows+1,'t_insert') = {datestr(now,'dd/mm/yyyy')};
            if ismember(subclass,actuators)
                class = 'actuator';
            elseif ismember(subclass,sensors)
                class = 'sensor';
            else
                class = 'dock';
            end
            app.db.table(rows+1,'class') = {class};
            
            % Load rest of the values in db table
            for i=1:length(fields)
                header = app.db.table.Properties.VariableNames{fields{i}};
                value = formdata{i}.Value;
                column = app.db.table{:,header};
                % Prefilters
                if strcmp(header,'trl') && strcmp(value,'None')
                    value = '';
                end
                if any(strcmp(header,{'cots','cubesat'}))
                    if value == 0
                        value = 'no';
                    else
                        value = 'yes';
                    end
                end
                if any(strcmp(header,{'v_nom','i_peak','i_avg',...
                                      'dim_x','dim_y','dim_z'}))
                    if value == 0
                        value = [];
                    end
                end
                if ~isempty(value)
                    if ischar(value)
                        if iscell(column)
                            app.db.table{rows+1,header} = {value};
                        elseif ischar(column)
                            app.db.table{rows+1,header} = value;
                        end
                    elseif isnumeric(value)
                        if isnumeric(column)
                            app.db.table{rows+1,header} = value;
                        elseif iscell(column)
                            app.db.table{rows+1,header} = num2cell(value);
                        end
                    end
                end
            end            
            % Set item ID
            id = num2hex(rand(1));
            app.db.table(rows+1,1) = cell2table({id});
            
            % WRITE IN EXCEL
            % ===
            [~, ~, raw] = xlsread(obj.filename,obj.sheetname);             % Read excel catalog
            range = obj.getExcelNextEmptyRange(raw);                       % Get range of the next empty line
            
            % Get array to post in database
            data = table2cell(app.db.table(rows+1,:));
            
            % Write data in Excel
            xlswrite(obj.filename, data, obj.sheetname, range);
            
            % Clear form
            for i=1:length(formdata)
                value = formdata{i}.Value;
                if isnumeric(value)
                    formdata{i}.Value = 0;
                elseif iscell(value)
                    formdata{i}.Value = {};
                elseif ischar(value)
                    if strcmp(value,'None')
                        formdata{i}.Value = value;
                    else
                        formdata{i}.Value = '';
                    end
                end
            end
            
            % Save operation in log
            obj.log(sprintf('Item %s (%s) created and added to database',id, subclass));
        end
        
        function array_text = headerValues2Text(~,array_values)
            fieldvalues  = {'select','id','name',...
                           'supplier','mass','power','v_nom',...
                           'dim_x','dim_y','dim_z','temp_max','temp_min',...
                           'w_max','torque_max','momentum_max',...
                           'nr_axis','resistance','temp_coef','dipole_moment',...
                           'prec_deg','acc_deg','fov_x','fov_y',...
                           'noise','range','acc_pos','acc_vel','gnss','drift'};

            fieldlabels = {'Select','ID','Name','Supplier','Mass','Power','Vnom',...
                           'Width','Length','Height','Tmax','Tmin',...
                           'Wmax','Max Torque','Max Momentum','Nr of Axes',...
                           'Resistance','Temp coef','Dipole Moment',...
                           'Precision','Accuracy','FoV x','FoV y',...
                           'Noise','Range','Position Acc.','Velocity Acc.',...
                           'GNSS','Drift'};

            array_text = fieldlabels(ismember(fieldvalues,array_values));        
        end
        
        function range = getExcelNextEmptyRange(obj,raw)                   % GETEXCELNEXTEMPTYRANGE Gets range of the next empty line
            nr_rows = size(raw,1);                                         % Get number of rows and cols in database
            nr_cols = size(raw,2);
            clear raw;
            str_col = obj.getExcelCol(nr_cols);                            % Convert column number to column name A-Z AA-AZ ...
            str_row = num2str(nr_rows + 1);                                % Get target row
            range = strcat('A',str_row,':',str_col,str_row);               % Make range string
        end
        
        function str = getExcelCol(~,nr)                                   % GETEXCELCOL Converts column number to string A-Z AA-AZ ...
            letters = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O',...
                       'P','Q','R','S','T','U','V','W','X','Y','Z'};
            N = length(letters);
            if nr <= N
                str = letters{nr};                                         % Single-letter column name
            else
                first_letter  = letters{floor(nr/N)};   
                second_letter = letters{nr - N * floor(nr/N)};
                str = strcat(first_letter,second_letter);                  % Double-letter column name
            end
        end
        
        function log(~,str)
            if ischar(str)                                                 % LOG Saves user actions in text file
                fileID = fopen('registry.log','a');                        % Open log file or create it
                fprintf(fileID,'%25s\t',datestr(now,'HH:MM:SS dd/mm/yyyy'));% Timestamp
                fprintf(fileID,'%s\r\n',str);                              % Write message
                fclose(fileID);
            else
                error('Input variable is not a string type');
            end
        end
        
    end
% ======================================================================= %
    methods (Access = private)
        


        function [table,thead,tbody] = raw2table(~,raw)                    % RAW2TABLE Aux function that gets table from raw cell array
            if size(raw,1) < 1
                error('raw2table: Raw array does not have any data.');
            end
            thead = raw(1,:);                                              % Split headers from data
            tbody = raw(2:end,:);
            table = cell2table(tbody);                                     % Convert data to a table
            table.Properties.VariableNames = thead;
        end
        
        function [raw] = table2raw(~,table)                                % TABLE2RAW Aux function that gets raw cell array from table
            C = table2cell(table);                                         % Get table body
            raw = [table.Properties.VariableNames;C];                      % Concatenate table headers
        end

    end
end

