classdef Model
    %MODEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (Access = public) 
        table
        amountvalues
        sname
    end
    
    methods (Access = public)
        function obj = Model(db,varargin)
            obj.table        = obj.loadTableFromHeaders(db);
            obj.amountvalues = [];
            obj.sname        = 'Model';
        end
        
        function obj = addItem(obj,id,amount,dbtable,varargin)             % ADDITEM Adds selected item to model from db checkout
            row    = find(strcmp(dbtable.id,id),1);                        % finds target row of db table with the unique ID 
            if size(obj.table,1) > 0
                subclass = dbtable(row,:).subclass;                        % get subclass of item
                modelRow = find(strcmp(obj.table.subclass,subclass),1);    % check if subclass is already in model
                if modelRow ~= false
                    old_id = obj.table(modelRow,:).id;                     % get previous ID to log removal
                    old_id = old_id{1,1};                                  % convert cell to string
                    if(~strcmp(old_id,id))                                 % check that previous and current do not match
                        str = sprintf('Item removed from model.\tID: %30s',old_id);
                        obj.log(str);                                      % print in log file
                        obj.table(modelRow,:) = dbtable(row,:);            % substitute data in model
                        obj.amountvalues(modelRow) = amount;               % substitute amount
                        str = sprintf('Item added to model.\t\tID: %30s\tAmount: %2s',id,int2str(amount));
                        obj.log(str);                                      % print in log file
                    else                                                   % if they match, just check change in amount
                        old_amount = obj.amountvalues(modelRow);           % get previous amount
                        if(amount ~= old_amount)                           % if amounts do not match, change amount
                            str = sprintf('Amount altered in model.\tID: %30s\tAmount: %2s',id,int2str(amount));
                            obj.log(str);                                  % print in log file
                            obj.amountvalues(modelRow) = amount;           % substitute amount
                        end
                    end
                else
                    obj.table = [obj.table; dbtable(row,:)];               % append data
                    obj.amountvalues = [obj.amountvalues; amount];         % append amount
                end
            else
                obj.table = dbtable(row,:);                                % init table
                obj.amountvalues = amount;                                 % init amount
                str = sprintf('Item added to model.\t\tID: %30s\tAmount: %2s',id,int2str(amount));
                obj.log(str);                                              % print in log file
            end
        end
        
        function obj = removeItem(obj,table,id,varargin)                   % REMOVEITEM Removes selected item from the model
            row    = find(strcmp(table.id,id),1);                          % finds target row of model table with the unique ID
            obj.table(row,:) = [];
            obj.amountvalues(row) = [];
            str = sprintf('Item removed from model.\tID: %30s',id);        % print in log file
            obj.log(str);                                     
        end
        
        function exportModel(obj,app)                                      % EXPORTMODEL Saves model table to Excel file
            xlswrite(app.db.filename, cell(80,80), obj.sname,'A2:CB81');   % Clear previous model in file
            amount = num2cell(app.model.amountvalues);                     % Get amount values
            data = table2cell(app.model.table);                            % Get array to post in database
            data = [data(:,1:4) amount data(:,5:end)];
            xlswrite(app.db.filename, data, obj.sname,'A2');               % Write data in Excel
            obj.log('Model exported to Excel');
        end

%         function exportModel(obj,app)                                      % EXPORTMODEL Prepares model variables to be imported from excel
%             amount = num2cell(app.model.amountvalues);                     % Get amount values
%             data = table2cell(app.model.table);                            % Get array to post in database
%             data = [data(:,1:4) amount data(:,5:end)];
%             assignin('base', 'amount', amount)                             % Save amount variable to workspace
%             assignin('base', 'data', data)                                 % Save data variable to workspace
%             obj.log('Model exported to Excel');
%         end
                
    end
    
    methods (Access = private)
        
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
        
        function table = loadTableFromHeaders(~,db)                        % Loads model table fields from the db table
            table = cell2table(db.table.Properties.VariableNames);         % Converts fields cell array to a single-row table
            table.Properties.VariableNames = table{1,:};                   % Assigns first row to fields of the table
            table(1,:) = [];                                               % Clears first row with temp values
        end
    end
end

