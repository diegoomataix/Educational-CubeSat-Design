classdef app1 < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UI                            matlab.ui.Figure
        TabGroup                      matlab.ui.container.TabGroup
        ModelTab                      matlab.ui.container.Tab
        RWPanel                       matlab.ui.container.Panel
        AdditemRW                     matlab.ui.control.Button
        LabelRW                       matlab.ui.control.Label
        SSPanel                       matlab.ui.container.Panel
        AdditemSS                     matlab.ui.control.Button
        LabelSS                       matlab.ui.control.Label
        STPanel                       matlab.ui.container.Panel
        AdditemST                     matlab.ui.control.Button
        LabelST                       matlab.ui.control.Label
        ESPanel                       matlab.ui.container.Panel
        AdditemES                     matlab.ui.control.Button
        LabelES                       matlab.ui.control.Label
        MTPanel                       matlab.ui.container.Panel
        AdditemMT                     matlab.ui.control.Button
        LabelMT                       matlab.ui.control.Label
        MGPanel                       matlab.ui.container.Panel
        AdditemMG                     matlab.ui.control.Button
        LabelMG                       matlab.ui.control.Label
        IMPanel                       matlab.ui.container.Panel
        AdditemIM                     matlab.ui.control.Button
        LabelIM                       matlab.ui.control.Label
        GNPanel                       matlab.ui.container.Panel
        AdditemGN                     matlab.ui.control.Button
        LabelGN                       matlab.ui.control.Label
        OAPanel                       matlab.ui.container.Panel
        AdditemOA                     matlab.ui.control.Button
        LabelOA                       matlab.ui.control.Label
        ModelToolbox                  matlab.ui.container.Panel
        Viewspecs                     matlab.ui.control.Button
        Createitem                    matlab.ui.control.Button
        Searchitem                    matlab.ui.control.Button
        Removeitem                    matlab.ui.control.Button
        ExportModel                   matlab.ui.control.Button
        MWPanel                       matlab.ui.container.Panel
        AdditemMW                     matlab.ui.control.Button
        LabelMW                       matlab.ui.control.Label
        OSPanel                       matlab.ui.container.Panel
        AdditemOS                     matlab.ui.control.Button
        LabelOS                       matlab.ui.control.Label
        DOPanel                       matlab.ui.container.Panel
        AdditemDO                     matlab.ui.control.Button
        LabelDO                       matlab.ui.control.Label
        DatabaseTab                   matlab.ui.container.Tab
        UITable                       matlab.ui.control.Table
        SortbyDropDownLabel           matlab.ui.control.Label
        Sortby                        matlab.ui.control.DropDown
        ImsearchingforDropDownLabel   matlab.ui.control.Label
        Class                         matlab.ui.control.DropDown
        CheckoutPanel                 matlab.ui.container.Panel
        AmountSpinnerLabel            matlab.ui.control.Label
        Amount                        matlab.ui.control.Spinner
        Additem                       matlab.ui.control.Button
        ItemselectedEditFieldLabel    matlab.ui.control.Label
        Itemselected                  matlab.ui.control.EditField
        SearchfiltersPanel            matlab.ui.container.Panel
        Maxmass                       matlab.ui.control.NumericEditField
        Maxpower                      matlab.ui.control.NumericEditField
        Maxtemp                       matlab.ui.control.NumericEditField
        Mintemp                       matlab.ui.control.NumericEditField
        CheckBoxMaxmass               matlab.ui.control.CheckBox
        CheckBoxMaxpower              matlab.ui.control.CheckBox
        CheckBoxMaxtemp               matlab.ui.control.CheckBox
        CheckBoxMintemp               matlab.ui.control.CheckBox
        MaxmassLabel                  matlab.ui.control.Label
        MaxpowerLabel                 matlab.ui.control.Label
        MaxtempLabel                  matlab.ui.control.Label
        MintempLabel                  matlab.ui.control.Label
        InparticularDropDownLabel     matlab.ui.control.Label
        Subclass                      matlab.ui.control.DropDown
        CreateitemTab                 matlab.ui.container.Tab
        ModelToolbox_2                matlab.ui.container.Panel
        SaveItemInDatabase            matlab.ui.control.Button
        CreateItemDropdown            matlab.ui.control.DropDown
        GeneralfeaturesPanel          matlab.ui.container.Panel
        MassEditFieldLabel            matlab.ui.control.Label
        MassEditField                 matlab.ui.control.NumericEditField
        PowerEditFieldLabel           matlab.ui.control.Label
        PowerEditField                matlab.ui.control.NumericEditField
        PriceEditFieldLabel           matlab.ui.control.Label
        PriceEditField                matlab.ui.control.EditField
        TmaxEditFieldLabel            matlab.ui.control.Label
        TmaxEditField                 matlab.ui.control.NumericEditField
        TminEditFieldLabel            matlab.ui.control.Label
        TminEditField                 matlab.ui.control.NumericEditField
        NameEditFieldLabel            matlab.ui.control.Label
        NameEditField                 matlab.ui.control.EditField
        SupplierEditFieldLabel        matlab.ui.control.Label
        SupplierEditField             matlab.ui.control.EditField
        URLEditFieldLabel             matlab.ui.control.Label
        URLEditField                  matlab.ui.control.EditField
        WidthEditFieldLabel           matlab.ui.control.Label
        WidthEditField                matlab.ui.control.NumericEditField
        LengthEditFieldLabel          matlab.ui.control.Label
        LengthEditField               matlab.ui.control.NumericEditField
        HeightEditFieldLabel          matlab.ui.control.Label
        HeightEditField               matlab.ui.control.NumericEditField
        LifespanEditFieldLabel        matlab.ui.control.Label
        LifespanEditField             matlab.ui.control.EditField
        COTSCheckBox                  matlab.ui.control.CheckBox
        CubeSatCheckBox               matlab.ui.control.CheckBox
        TRLDropDownLabel              matlab.ui.control.Label
        TRLDropDown                   matlab.ui.control.DropDown
        VnomEditFieldLabel            matlab.ui.control.Label
        VnomEditField                 matlab.ui.control.NumericEditField
        IavgEditFieldLabel            matlab.ui.control.Label
        IavgEditField                 matlab.ui.control.NumericEditField
        IpeakEditFieldLabel           matlab.ui.control.Label
        IpeakEditField                matlab.ui.control.NumericEditField
        SpecificfeauresPanel          matlab.ui.container.Panel
        Spec1EditField                matlab.ui.control.EditField
        Spec2EditField                matlab.ui.control.EditField
        Spec3EditField                matlab.ui.control.EditField
        Spec4EditField                matlab.ui.control.EditField
        Spec5EditField                matlab.ui.control.EditField
        Spec6EditField                matlab.ui.control.EditField
        Spec1EditFieldLabel           matlab.ui.control.Label
        Spec2EditFieldLabel           matlab.ui.control.Label
        Spec3EditFieldLabel           matlab.ui.control.Label
        Spec4EditFieldLabel           matlab.ui.control.Label
        Spec5EditFieldLabel           matlab.ui.control.Label
        Spec6EditFieldLabel           matlab.ui.control.Label
        NotesTextAreaLabel            matlab.ui.control.Label
        NotesTextArea                 matlab.ui.control.TextArea
        SettingsTab                   matlab.ui.container.Tab
        FieldstodisplayonsearchresultsPanel  matlab.ui.container.Panel
        Panel                         matlab.ui.container.Panel
        NameCheckBox                  matlab.ui.control.CheckBox
        SupplierCheckBox              matlab.ui.control.CheckBox
        MassCheckBox                  matlab.ui.control.CheckBox
        PowerCheckBox                 matlab.ui.control.CheckBox
        CubeSatCheckBox_3             matlab.ui.control.CheckBox
        COTSCheckBox_3                matlab.ui.control.CheckBox
        DimensionsCheckBox            matlab.ui.control.CheckBox
        ThermalfeaturesCheckBox       matlab.ui.control.CheckBox
        ElectricalfeaturesCheckBox    matlab.ui.control.CheckBox
        SpecificfeaturesCheckBox      matlab.ui.control.CheckBox
        LifespanCheckBox              matlab.ui.control.CheckBox
        PriceCheckBox                 matlab.ui.control.CheckBox
        ExcelsettingsPanel            matlab.ui.container.Panel
        DatabasesheetnameEditFieldLabel  matlab.ui.control.Label
        DatabasesheetnameEditField    matlab.ui.control.EditField
        ModelsheetnameEditFieldLabel  matlab.ui.control.Label
        ModelsheetnameEditField       matlab.ui.control.EditField
        FilenameEditFieldLabel        matlab.ui.control.Label
        FilenameEditField             matlab.ui.control.EditField
        ModelToolbox_3                matlab.ui.container.Panel
        SaveItemInDatabase_2          matlab.ui.control.Button
        SaveItemInDatabase_3          matlab.ui.control.Button
        TotalmassEditFieldLabel       matlab.ui.control.Label
        Totalmass                     matlab.ui.control.NumericEditField
        TotalpowerEditFieldLabel      matlab.ui.control.Label
        Totalpower                    matlab.ui.control.NumericEditField
    end

    
    properties (Access = public)
        db                    % Holds the Database properties and methods       Catalog with items
        model                 % Holds the Model properties and methods          Selected items
        SearchSelection       % Stores the previous selection in Database tab
        ItemselectedID        % Holds the unique ID of the item added to the checkout area
        ModelSelectionID      % Holds the unique ID of the current selection in Model tab
        ModelBoxSubclass      % Stores the current selection subclass in Model tab
        ArrayModelLabels
        ArrayModelPanels
        ArrayModelButtons
        ArraySubclasses
    end
    
    methods (Access = private)
        % ================================================================================================= %
        % Enables or disables database filter editfields with checkboxes
        function checkbox2editfield(app,target,value)
            obj_array   = {app.Maxmass, app.Maxpower, app.Maxtemp, app.Mintemp};
            label_array = {app.MaxmassLabel, app.MaxpowerLabel, app.MaxtempLabel, app.MintempLabel};
            if(value == 1)
                state = 'on';
            else
                state = 'off';
            end
            obj_array{target}.Enable = state;
            label_array{target}.Enable = state;
            obj_array{target}.Value = 0;
        end
        % ================================================================================================= %
        % Refresh subclass dropdown (category within actuators or sensors)
        function refreshSubclass(app,varargin)
            switch(app.Class.Value)
                case 'actuator'
                    names_array = {'a reaction wheel','a momentum wheel','a magnetorquer','other actuator'};
                    values_array = {'reaction wheel','momentum wheel','magnetorquer','other actuator'};
                    enable_box = 'on';
                case 'sensor'
                    names_array = {'a sun sensor','a star sensor','an earth sensor','a magnetometer','an imu','a gnss receiver','other sensor'};
                    values_array = {'sun sensor','star sensor','earth sensor','magnetometer','imu','gnss','other sensor'};
                    enable_box = 'on';
                case 'dock'
                    names_array = {'not available'};
                    values_array = {''};
                    enable_box = 'off';
            end
            app.Subclass.Items     = names_array;
            app.Subclass.ItemsData = values_array;
            app.Subclass.Enable    = enable_box;
        end
        % ================================================================================================= %
        % Refresh search table in the GUI
        function refreshTable(app)
            % Load, sort, filter and prompt table from Excel
            table_filtered     = app.db.filterData(app.db.table,app.Class.Value,app.Subclass.Value);
            app.db.sortedtable = app.db.sortData(table_filtered,app.Sortby.Value);
            [app.UITable.ColumnName,app.UITable.Data] = app.db.promptData(app.db.sortedtable,app.Subclass.Value);
            % Reset search
            app.SearchSelection = -1;
        end
        % ================================================================================================= %
        % Displays values on the Model tab
        function printLabel(app,name,subclass)
            % Find subclass index
            row = find(strcmp(app.ArraySubclasses,subclass),1);
            % Assign name to label
            app.ArrayModelLabels{row}.Text = name;
            
        end
        % ================================================================================================= %
        % Refresh model selection and toolbox
        function refreshModelSelection(app,trigger)
            % OPTION #1: FUNCTION TRIGGERED FROM A 'SELECT' BUTTON
            if ismember(trigger,app.ArraySubclasses)
                % Get index of trigger in array
                index = find(strcmp(app.ArraySubclasses,trigger),1);
                % Toggle button
                str = app.ArrayModelButtons{index}.Text;
                if strcmpi(str,'select')
                    % Fade everything
                    for i=1:length(app.ArrayModelPanels)
                        app.ArrayModelPanels{i}.BackgroundColor = [0.94,0.94,0.94];
                        app.ArrayModelButtons{i}.Enable = 'off';
                    end
                    % Toggle button
                    app.ArrayModelButtons{index}.Enable = 'on';
                    app.ArrayModelButtons{index}.Text = 'Unselect';
                    app.ArrayModelButtons{index}.BackgroundColor = [0,0.5,0.9];
                    % Store selected subclass
                    app.ModelBoxSubclass = app.ArraySubclasses{index};
                    % Check if there is an item selected
                    str = app.ArrayModelLabels{index}.Text;
                    if strcmpi(str,'no items yet')
                        % Toggle toolbox buttons
                        enable_values = {'off','on','on','off'};
                    else
                        % Store selected ID too
                        id = app.model.table(ismember(app.model.table.subclass,trigger),:).id;
                        app.ModelSelectionID = id{1,1};
                        % Toggle toolbox buttons
                        enable_values = {'on','on','on','on'};
                    end
                    % Highlight panel
                    app.ArrayModelPanels{index}.BackgroundColor = [1.0,1.0,1.0];
                else
                    app.ArrayModelButtons{index}.Text = 'Select';
                    app.ArrayModelButtons{index}.BackgroundColor = [0.2,0.7,0.5];
                    % Reset highlight
                    for i=1:length(app.ArrayModelPanels)
                        app.ArrayModelPanels{i}.BackgroundColor = [1.0,1.0,1.0];
                        app.ArrayModelButtons{i}.Enable = 'on';
                    end
                    % Reset selected subclass, ID and toolbox
                    app.ModelBoxSubclass = '';
                    app.ModelSelectionID = '';
                    enable_values = {'off','off','off','off'};
                end
                
                % OPTION #2: RESET MODEL UI AFTER REMOVAL
            else
                % Reset highlight
                for i=1:length(app.ArrayModelPanels)
                    app.ArrayModelPanels{i}.BackgroundColor = [1.0,1.0,1.0];
                    app.ArrayModelButtons{i}.Enable = 'on';
                    app.ArrayModelButtons{i}.Text = 'Select';
                    app.ArrayModelButtons{i}.BackgroundColor = [0.2,0.7,0.5];
                end
                app.ModelBoxSubclass = '';
                enable_values = {'off','off','off','off'};
            end
            % Enable/disable toolbox buttons
            app.Viewspecs.Enable  = enable_values{1};
            app.Createitem.Enable = enable_values{2};
            app.Searchitem.Enable = enable_values{3};
            app.Removeitem.Enable = enable_values{4};
        end
        % ================================================================================================= %
        % Refresh Model tab, Mass, Power in the GUI
        function refreshModelTab(app)
            % Get Model table
            table  = app.model.table;
            amount = app.model.amountvalues;
            % Zero mass and power
            mass  = 0;
            power = 0;
            % Assign values to labels
            if size(table,1) > 0
                for i = 1:size(table,1)
                    subclass = table(i,:).subclass;
                    name     = table(i,:).name;
                    printLabel(app,name,subclass);
                    mass  = mass  + table(i,:).mass  * amount(i);
                    power = power + table(i,:).power * amount(i);
                end
            end
            % Refresh mass and power
            app.Totalmass.Value  = mass;
            app.Totalpower.Value = power;
            % Refresh labels in model boxes with no items
            for i=1:length(app.ArrayModelLabels)
                if ~ismember(app.ArraySubclasses{i},table.subclass)
                    app.ArrayModelLabels{i}.Text = 'No items yet';
                end
            end
        end
        % ================================================================================================= %
        % Get model item specifications by
        function specs_str = getSpecsByID(app,id,table,amountvalues)
            % Get position of selected item
            row    = find(strcmp(table.id,id),1);
            amount = amountvalues(row);
            item   = table(row,:);
            % Get subclass and filter fields
            subclass = item.subclass{1,1};
            specific_fields = app.db.getSpecificFieldsBySubclass(subclass);
            common_fields = {'name','supplier','mass','power','v_nom','dim_x','dim_y','dim_z','temp_max','temp_min','url'};
            % Print amount
            specs_str = sprintf('Amount: %s\n',num2str(amount));
            % Generate string rows with item info
            for i=1:size(item,2)
                % Get field and value pair
                field = table.Properties.VariableNames{i};
                % Filter fields
                if ismember(field,common_fields) || ismember(field,specific_fields)
                    if ~isempty(app.db.headerValues2Text(field))
                        field = app.db.headerValues2Text(field);
                    end
                    if iscell(field)
                        field = field{1,1};
                    end
                    value = item{1,i};
                    % Convert 1x1 cell to string
                    if iscell(value)
                        value = value{1,1};
                    else
                        if isnan(value)
                            value = 'NaN';
                        else
                            value = num2str(value);
                        end
                    end
                    specs_str = sprintf('%s%s',specs_str,sprintf('%s: %s\n',field,value));
                end
            end
        end
        % ================================================================================================= %
        % Manages checkboxes in the GUI table
        function selectItem(app)
            % Get table data
            table = app.UITable.Data;
            
            % Count rows of Table
            rows = size(table,1);
            values = zeros(rows,1);
            
            % Store values (0 or 1)
            for i=1:rows
                values(i) = table{i,1};
            end
            
            % Check if every box has been unselected
            if isequal(values,zeros(rows,1))
                app.Itemselected.Value = "";                        % Clear checkout field
                app.SearchSelection = -1;                           % Reset selection history
            else
                % One box and previous checked simultaneously: remove previous check
                % and refresh values vector
                if(app.SearchSelection ~= -1)
                    values = abs(values-app.SearchSelection);       % Get the difference
                    for i=1:rows                                    % Refresh table in the GUI
                        app.UITable.Data{i,1} = logical(values(i));
                    end
                end
                row                    = find(values,1);            % Find the checked box
                item_name              = table{row,2};              % Get the name of the checked item
                app.Itemselected.Value = item_name;                 % Paste it in the checkout field
                app.ItemselectedID     = app.db.sortedtable{row,1}; % Save the ID of the checked item
                app.ItemselectedID     = app.ItemselectedID{1};     % Convert 1x1 cell to pure string
                app.SearchSelection    = values;                    % Save selection
            end
        end
        % ================================================================================================= %
        % Boots app
        function init(app)
            clc;
            
            % Set directory
            p = mfilename('fullpath');
            [folder,~,~] = fileparts(p);
            cd(folder);
            
            % Set dropdowns
            app.Class.Value = 'actuator';
            app.Sortby.Value = 'name';
            refreshSubclass(app);
            
            % Create Database and Model instance
            app.db    = Database;
            app.model = Model(app.db);
            
            % Store other values
            app.ArrayModelPanels =  {app.DOPanel,  app.RWPanel,  app.MWPanel,  app.MTPanel,  app.OAPanel,  app.SSPanel,  app.STPanel,...
                                     app.ESPanel,  app.MGPanel,  app.IMPanel,  app.GNPanel,  app.OSPanel};
            app.ArrayModelButtons = {app.AdditemDO,app.AdditemRW,app.AdditemMW,app.AdditemMT,app.AdditemOA,app.AdditemSS,app.AdditemST,...
                                     app.AdditemES,app.AdditemMG,app.AdditemIM,app.AdditemGN,app.AdditemOS};
            app.ArrayModelLabels =  {app.LabelDO,  app.LabelRW,  app.LabelMW,  app.LabelMT,  app.LabelOA,  app.LabelSS,  app.LabelST,...
                                     app.LabelES,   app.LabelMG,  app.LabelIM,  app.LabelGN,  app.LabelOS};
            app.ArraySubclasses =   {'dock','reaction wheel','momentum wheel','magnetorquer','other actuator','sun sensor','star sensor',...
                                     'earth sensor','magnetometer','imu','gnss','other sensor'};
        end
        % ================================================================================================= %
    end
    

    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            init(app);            % Boot app
            refreshTable(app);    % Refresh table with items
            CreateItemDropdownValueChanged(app);  % Refresh dropdown in 'create item' tab
        end

        % Value changed function: Sortby
        function SortbyValueChanged(app, event)
            refreshTable(app);    % Refresh table with items
        end

        % Value changed function: Class
        function ClassValueChanged(app, event)
            refreshSubclass(app); % Refresh subclass dropdown
            refreshTable(app);    % Refresh table with items
        end

        % Value changed function: Subclass
        function SubclassValueChanged(app, event)
            refreshTable(app);    % Refresh table with items
        end

        % Cell edit callback: UITable
        function UITableCellEdit(app, event)
            selectItem(app);      % Interact with tickboxes
        end

        % Value changed function: CheckBoxMaxmass
        function CheckBoxMaxmassValueChanged(app, event)
            value = app.CheckBoxMaxmass.Value;
            checkbox2editfield(app,1,value)
        end

        % Value changed function: CheckBoxMaxpower
        function CheckBoxMaxpowerValueChanged(app, event)
            value = app.CheckBoxMaxpower.Value;
            checkbox2editfield(app,2,value)
        end

        % Value changed function: CheckBoxMaxtemp
        function CheckBoxMaxtempValueChanged(app, event)
            value = app.CheckBoxMaxtemp.Value;
            checkbox2editfield(app,3,value)
        end

        % Value changed function: CheckBoxMintemp
        function CheckBoxMintempValueChanged(app, event)
            value = app.CheckBoxMintemp.Value;
            checkbox2editfield(app,4,value)
        end

        % Button pushed function: Additem
        function AdditemButtonPushed(app, event)
            app.model = app.model.addItem(app.ItemselectedID,app.Amount.Value,app.db.table);   % Add an item to the Model
            refreshModelTab(app);
            refreshModelSelection(app,'');
            app.TabGroup.SelectedTab = app.ModelTab;
        end

        % Button pushed function: AdditemSS
        function AdditemSSButtonPushed(app, event)
            refreshModelSelection(app,'sun sensor');
        end

        % Button pushed function: AdditemDO
        function AdditemDOButtonPushed(app, event)
            refreshModelSelection(app,'dock');
        end

        % Button pushed function: AdditemOS
        function AdditemOSButtonPushed(app, event)
            refreshModelSelection(app,'other sensor');
        end

        % Button pushed function: AdditemRW
        function AdditemRWButtonPushed(app, event)
            refreshModelSelection(app,'reaction wheel');
        end

        % Button pushed function: AdditemST
        function AdditemSTButtonPushed(app, event)
            refreshModelSelection(app,'star sensor');
        end

        % Button pushed function: AdditemES
        function AdditemESButtonPushed(app, event)
            refreshModelSelection(app,'earth sensor');
        end

        % Button pushed function: AdditemMT
        function AdditemMTButtonPushed(app, event)
            refreshModelSelection(app,'magnetorquer');
        end

        % Button pushed function: AdditemMG
        function AdditemMGButtonPushed(app, event)
            refreshModelSelection(app,'magnetometer');
        end

        % Button pushed function: AdditemIM
        function AdditemIMButtonPushed(app, event)
            refreshModelSelection(app,'imu');
        end

        % Button pushed function: AdditemGN
        function AdditemGNButtonPushed(app, event)
            refreshModelSelection(app,'gnss');
        end

        % Button pushed function: AdditemOA
        function AdditemOAButtonPushed(app, event)
            refreshModelSelection(app,'other actuator');
        end

        % Button pushed function: Removeitem
        function RemoveitemButtonPushed(app, event)
            if ~strcmp(app.ModelSelectionID,'')
                app.model = app.model.removeItem(app.model.table,app.ModelSelectionID);   % Remove an item from the Model
                refreshModelSelection(app,'') % Reset Model tab UI
                refreshModelTab(app);
            end
        end

        % Button pushed function: Searchitem
        function SearchitemButtonPushed(app, event)
            % Get selected box origin
            % Transform to class and subclass
            % Modify Database tab with the search query
            % Go to Tab
            app.TabGroup.SelectedTab = app.DatabaseTab;
        end

        % Button pushed function: Viewspecs
        function ViewspecsButtonPushed(app, event)
            specs_str = getSpecsByID(app,app.ModelSelectionID,app.model.table,app.model.amountvalues);
            uialert(app.UI,specs_str,'Specifications','Icon','','Modal',true);
        end

        % Button pushed function: Createitem
        function CreateitemButtonPushed(app, event)
            % Get subclass and filter fields for label titles
            subclass = app.ModelBoxSubclass;
            % Change subclass dropdown
            app.CreateItemDropdown.Value = subclass;
            % Go to Tab
            app.TabGroup.SelectedTab = app.CreateitemTab;            
        end

        % Value changed function: CreateItemDropdown
        function CreateItemDropdownValueChanged(app, event)
            subclass = app.CreateItemDropdown.Value;
            % Get specific fields
            specific_fields = app.db.getSpecificFieldsBySubclass(subclass);
            specific_fields = app.db.headerValues2Text(specific_fields);
            specific_textboxes = {app.Spec1EditField,app.Spec2EditField,app.Spec3EditField,app.Spec4EditField,app.Spec5EditField,app.Spec6EditField};
            specific_labels    = {app.Spec1EditFieldLabel,app.Spec2EditFieldLabel,app.Spec3EditFieldLabel,app.Spec4EditFieldLabel,app.Spec5EditFieldLabel,app.Spec6EditFieldLabel};
            % Assign titles to textboxes
            for i=1:length(specific_textboxes)
                if i<=length(specific_fields)
                    specific_labels{i}.Text = specific_fields{i};
                    specific_labels{i}.Visible = 'on';
                    specific_textboxes{i}.Visible = 'on';
                else
                    specific_labels{i}.Visible = 'off';
                    specific_textboxes{i}.Visible = 'off';
                end
            end

        end

        % Button pushed function: SaveItemInDatabase
        function SaveItemInDatabaseButtonPushed(app, event)
            % Check that required fields are filled
            str_req_fields = {'Name','Supplier'};
            required_fields = {app.NameEditField, app.SupplierEditField};
            filled = true;
            for i=1:length(required_fields)
                if isempty(required_fields{i}.Value)
                    uialert(app.UI,sprintf('%s is not filled',str_req_fields{i}),'Form not filled','Icon','error','Modal',true);
                    filled = false;
                end
            end
            if filled == true
                % Check if file exists
                if ~xlsfinfo(app.db.filename)
                    uialert(app.UI,'Excel file does not exist. Check the name of the file.','Item not created.','Icon','error','Modal',true);
                else
                    % Check if file is open by other program
                    [fid, ~] = fopen(app.db.filename,'a');
                    if fid==-1
                        uialert(app.UI,'Please, close the Excel file.','Excel file opened. Item not created.','Icon','error','Modal',true);
                    else
                        fclose(fid);
                        % Create item in db table and write in Excel file
                        app.db.createItem(app);
                        uialert(app.UI,'Item added to Excel database successfully.','Item created','Icon','success','Modal',true);
                    end
                end
            end
        end

        % Close request function: UI
        function UICloseRequest(app, event)
            selection = uiconfirm(app.UI,'Do you really want to close the GUI?','Please confirm','Options',{'Yes','No'},'DefaultOption',1,'CancelOption',2);
            if strcmpi(selection,'yes')
                app.db.log('GUI closed')
                delete(app)
            end
        end

        % Button pushed function: AdditemMW
        function AdditemMWButtonPushed(app, event)
            refreshModelSelection(app,'momentum wheel');
        end

        % Button pushed function: ExportModel
        function ExportModelButtonPushed(app, event)
            if size(app.model.table,1) == 0
                selection = uiconfirm(app.UI,'There are no items selected. Exporting an empty model will erase the previous data in the spreadsheet. Do you want to continue?','Please confirm','Options',{'Yes','No'},'DefaultOption',1,'CancelOption',2);
                if strcmpi(selection,'yes')
                    do_it = true;
                else
                    do_it = false;
                end
            else
                do_it = true;
            end
            % Proceed with exporting
            if do_it
                % Check if file exists
                if ~xlsfinfo(app.db.filename)
                    uialert(app.UI,'Excel file does not exist. Check the name of the file.','Model not exported.','Icon','error','Modal',true);
                else
                    % Check if file is open by other program
                    [fid, ~] = fopen(app.db.filename,'a');
                    if fid==-1
                        uialert(app.UI,'Please, close the Excel file.','Excel file opened. Model not exported.','Icon','error','Modal',true);
                    else
                        fclose(fid);
                        % Export items
                        app.model.exportModel(app);
                        uialert(app.UI,'Model exported to Excel file successfully.','Exporting ended','Icon','success','Modal',true);
                    end
                end
            end
        end
    end

    % App initialization and construction
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Create UI
            app.UI = uifigure;
            app.UI.Color = [0 0.102 0.4];
            app.UI.Position = [100 100 896 563];
            app.UI.Name = 'CDF - ADCS module';
            app.UI.Resize = 'off';
            app.UI.CloseRequestFcn = createCallbackFcn(app, @UICloseRequest, true);

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UI);
            app.TabGroup.Position = [1 23 896 541];

            % Create ModelTab
            app.ModelTab = uitab(app.TabGroup);
            app.ModelTab.Title = 'Model';
            app.ModelTab.BackgroundColor = [0.9804 0.9804 0.9804];

            % Create RWPanel
            app.RWPanel = uipanel(app.ModelTab);
            app.RWPanel.BorderType = 'none';
            app.RWPanel.Title = 'Reaction wheels';
            app.RWPanel.BackgroundColor = [1 1 1];
            app.RWPanel.Position = [12 13 207 132];

            % Create AdditemRW
            app.AdditemRW = uibutton(app.RWPanel, 'push');
            app.AdditemRW.ButtonPushedFcn = createCallbackFcn(app, @AdditemRWButtonPushed, true);
            app.AdditemRW.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemRW.FontColor = [1 1 1];
            app.AdditemRW.Position = [68 22 74 21];
            app.AdditemRW.Text = 'Select';

            % Create LabelRW
            app.LabelRW = uilabel(app.RWPanel);
            app.LabelRW.HorizontalAlignment = 'center';
            app.LabelRW.Position = [17 71 175 15];
            app.LabelRW.Text = 'No items yet';

            % Create SSPanel
            app.SSPanel = uipanel(app.ModelTab);
            app.SSPanel.BorderType = 'none';
            app.SSPanel.Title = 'Sun sensors';
            app.SSPanel.BackgroundColor = [1 1 1];
            app.SSPanel.Position = [12 296 207 132];

            % Create AdditemSS
            app.AdditemSS = uibutton(app.SSPanel, 'push');
            app.AdditemSS.ButtonPushedFcn = createCallbackFcn(app, @AdditemSSButtonPushed, true);
            app.AdditemSS.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemSS.FontColor = [1 1 1];
            app.AdditemSS.Position = [68 22 74 21];
            app.AdditemSS.Text = 'Select';

            % Create LabelSS
            app.LabelSS = uilabel(app.SSPanel);
            app.LabelSS.HorizontalAlignment = 'center';
            app.LabelSS.Position = [17 71 175 15];
            app.LabelSS.Text = 'No items yet';

            % Create STPanel
            app.STPanel = uipanel(app.ModelTab);
            app.STPanel.BorderType = 'none';
            app.STPanel.Title = 'Star sensors';
            app.STPanel.BackgroundColor = [1 1 1];
            app.STPanel.Position = [234 296 207 132];

            % Create AdditemST
            app.AdditemST = uibutton(app.STPanel, 'push');
            app.AdditemST.ButtonPushedFcn = createCallbackFcn(app, @AdditemSTButtonPushed, true);
            app.AdditemST.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemST.FontColor = [1 1 1];
            app.AdditemST.Position = [71 22 74 21];
            app.AdditemST.Text = 'Select';

            % Create LabelST
            app.LabelST = uilabel(app.STPanel);
            app.LabelST.HorizontalAlignment = 'center';
            app.LabelST.Position = [20 71 175 15];
            app.LabelST.Text = 'No items yet';

            % Create ESPanel
            app.ESPanel = uipanel(app.ModelTab);
            app.ESPanel.BorderType = 'none';
            app.ESPanel.Title = 'Earth sensors';
            app.ESPanel.BackgroundColor = [1 1 1];
            app.ESPanel.Position = [455 296 207 132];

            % Create AdditemES
            app.AdditemES = uibutton(app.ESPanel, 'push');
            app.AdditemES.ButtonPushedFcn = createCallbackFcn(app, @AdditemESButtonPushed, true);
            app.AdditemES.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemES.FontColor = [1 1 1];
            app.AdditemES.Position = [68 22 74 21];
            app.AdditemES.Text = 'Select';

            % Create LabelES
            app.LabelES = uilabel(app.ESPanel);
            app.LabelES.HorizontalAlignment = 'center';
            app.LabelES.Position = [17 71 175 15];
            app.LabelES.Text = 'No items yet';

            % Create MTPanel
            app.MTPanel = uipanel(app.ModelTab);
            app.MTPanel.BorderType = 'none';
            app.MTPanel.Title = 'Magnetorques';
            app.MTPanel.BackgroundColor = [1 1 1];
            app.MTPanel.Position = [234 13 207 132];

            % Create AdditemMT
            app.AdditemMT = uibutton(app.MTPanel, 'push');
            app.AdditemMT.ButtonPushedFcn = createCallbackFcn(app, @AdditemMTButtonPushed, true);
            app.AdditemMT.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemMT.FontColor = [1 1 1];
            app.AdditemMT.Position = [68 22 74 21];
            app.AdditemMT.Text = 'Select';

            % Create LabelMT
            app.LabelMT = uilabel(app.MTPanel);
            app.LabelMT.HorizontalAlignment = 'center';
            app.LabelMT.Position = [17 71 175 15];
            app.LabelMT.Text = 'No items yet';

            % Create MGPanel
            app.MGPanel = uipanel(app.ModelTab);
            app.MGPanel.BorderType = 'none';
            app.MGPanel.Title = 'Magnetometers';
            app.MGPanel.BackgroundColor = [1 1 1];
            app.MGPanel.Position = [676 296 207 132];

            % Create AdditemMG
            app.AdditemMG = uibutton(app.MGPanel, 'push');
            app.AdditemMG.ButtonPushedFcn = createCallbackFcn(app, @AdditemMGButtonPushed, true);
            app.AdditemMG.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemMG.FontColor = [1 1 1];
            app.AdditemMG.Position = [68 22 74 21];
            app.AdditemMG.Text = 'Select';

            % Create LabelMG
            app.LabelMG = uilabel(app.MGPanel);
            app.LabelMG.HorizontalAlignment = 'center';
            app.LabelMG.Position = [17 71 175 15];
            app.LabelMG.Text = 'No items yet';

            % Create IMPanel
            app.IMPanel = uipanel(app.ModelTab);
            app.IMPanel.BorderType = 'none';
            app.IMPanel.Title = 'Inertial measurement units';
            app.IMPanel.BackgroundColor = [1 1 1];
            app.IMPanel.Position = [455 154 207 132];

            % Create AdditemIM
            app.AdditemIM = uibutton(app.IMPanel, 'push');
            app.AdditemIM.ButtonPushedFcn = createCallbackFcn(app, @AdditemIMButtonPushed, true);
            app.AdditemIM.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemIM.FontColor = [1 1 1];
            app.AdditemIM.Position = [68 22 74 21];
            app.AdditemIM.Text = 'Select';

            % Create LabelIM
            app.LabelIM = uilabel(app.IMPanel);
            app.LabelIM.HorizontalAlignment = 'center';
            app.LabelIM.Position = [17 71 175 15];
            app.LabelIM.Text = 'No items yet';

            % Create GNPanel
            app.GNPanel = uipanel(app.ModelTab);
            app.GNPanel.BorderType = 'none';
            app.GNPanel.Title = 'GNSS receivers';
            app.GNPanel.BackgroundColor = [1 1 1];
            app.GNPanel.Position = [234 154 207 132];

            % Create AdditemGN
            app.AdditemGN = uibutton(app.GNPanel, 'push');
            app.AdditemGN.ButtonPushedFcn = createCallbackFcn(app, @AdditemGNButtonPushed, true);
            app.AdditemGN.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemGN.FontColor = [1 1 1];
            app.AdditemGN.Position = [68 22 74 21];
            app.AdditemGN.Text = 'Select';

            % Create LabelGN
            app.LabelGN = uilabel(app.GNPanel);
            app.LabelGN.HorizontalAlignment = 'center';
            app.LabelGN.Position = [17 71 175 15];
            app.LabelGN.Text = 'No items yet';

            % Create OAPanel
            app.OAPanel = uipanel(app.ModelTab);
            app.OAPanel.BorderType = 'none';
            app.OAPanel.Title = 'Other actuators';
            app.OAPanel.BackgroundColor = [1 1 1];
            app.OAPanel.Position = [676 13 207 132];

            % Create AdditemOA
            app.AdditemOA = uibutton(app.OAPanel, 'push');
            app.AdditemOA.ButtonPushedFcn = createCallbackFcn(app, @AdditemOAButtonPushed, true);
            app.AdditemOA.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemOA.FontColor = [1 1 1];
            app.AdditemOA.Position = [68 22 74 21];
            app.AdditemOA.Text = 'Select';

            % Create LabelOA
            app.LabelOA = uilabel(app.OAPanel);
            app.LabelOA.HorizontalAlignment = 'center';
            app.LabelOA.Position = [17 71 175 15];
            app.LabelOA.Text = 'No items yet';

            % Create ModelToolbox
            app.ModelToolbox = uipanel(app.ModelTab);
            app.ModelToolbox.BorderType = 'none';
            app.ModelToolbox.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ModelToolbox.Position = [1 439 895 78];

            % Create Viewspecs
            app.Viewspecs = uibutton(app.ModelToolbox, 'push');
            app.Viewspecs.ButtonPushedFcn = createCallbackFcn(app, @ViewspecsButtonPushed, true);
            app.Viewspecs.BackgroundColor = [1 1 1];
            app.Viewspecs.Enable = 'off';
            app.Viewspecs.Position = [22 19 100 42];
            app.Viewspecs.Text = 'View specs';

            % Create Createitem
            app.Createitem = uibutton(app.ModelToolbox, 'push');
            app.Createitem.ButtonPushedFcn = createCallbackFcn(app, @CreateitemButtonPushed, true);
            app.Createitem.BackgroundColor = [1 1 1];
            app.Createitem.Enable = 'off';
            app.Createitem.Position = [129 19 100 42];
            app.Createitem.Text = 'Create item';

            % Create Searchitem
            app.Searchitem = uibutton(app.ModelToolbox, 'push');
            app.Searchitem.ButtonPushedFcn = createCallbackFcn(app, @SearchitemButtonPushed, true);
            app.Searchitem.BackgroundColor = [1 1 1];
            app.Searchitem.Enable = 'off';
            app.Searchitem.Position = [236 19 100 42];
            app.Searchitem.Text = 'Search item';

            % Create Removeitem
            app.Removeitem = uibutton(app.ModelToolbox, 'push');
            app.Removeitem.ButtonPushedFcn = createCallbackFcn(app, @RemoveitemButtonPushed, true);
            app.Removeitem.BackgroundColor = [1 1 1];
            app.Removeitem.Enable = 'off';
            app.Removeitem.Position = [343 19 100 42];
            app.Removeitem.Text = 'Remove item';

            % Create ExportModel
            app.ExportModel = uibutton(app.ModelToolbox, 'push');
            app.ExportModel.ButtonPushedFcn = createCallbackFcn(app, @ExportModelButtonPushed, true);
            app.ExportModel.BackgroundColor = [0.2 0.702 0.502];
            app.ExportModel.FontColor = [1 1 1];
            app.ExportModel.Position = [693 19 165 42];
            app.ExportModel.Text = 'Export model to Excel';

            % Create MWPanel
            app.MWPanel = uipanel(app.ModelTab);
            app.MWPanel.BorderType = 'none';
            app.MWPanel.Title = 'Momentum wheels';
            app.MWPanel.BackgroundColor = [1 1 1];
            app.MWPanel.Position = [455 13 207 132];

            % Create AdditemMW
            app.AdditemMW = uibutton(app.MWPanel, 'push');
            app.AdditemMW.ButtonPushedFcn = createCallbackFcn(app, @AdditemMWButtonPushed, true);
            app.AdditemMW.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemMW.FontColor = [1 1 1];
            app.AdditemMW.Position = [68 22 74 21];
            app.AdditemMW.Text = 'Select';

            % Create LabelMW
            app.LabelMW = uilabel(app.MWPanel);
            app.LabelMW.HorizontalAlignment = 'center';
            app.LabelMW.Position = [17 71 175 15];
            app.LabelMW.Text = 'No items yet';

            % Create OSPanel
            app.OSPanel = uipanel(app.ModelTab);
            app.OSPanel.BorderType = 'none';
            app.OSPanel.Title = 'Other sensors';
            app.OSPanel.BackgroundColor = [1 1 1];
            app.OSPanel.Position = [676 154 207 132];

            % Create AdditemOS
            app.AdditemOS = uibutton(app.OSPanel, 'push');
            app.AdditemOS.ButtonPushedFcn = createCallbackFcn(app, @AdditemOSButtonPushed, true);
            app.AdditemOS.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemOS.FontColor = [1 1 1];
            app.AdditemOS.Position = [68 22 74 21];
            app.AdditemOS.Text = 'Select';

            % Create LabelOS
            app.LabelOS = uilabel(app.OSPanel);
            app.LabelOS.HorizontalAlignment = 'center';
            app.LabelOS.Position = [17 71 175 15];
            app.LabelOS.Text = 'No items yet';

            % Create DOPanel
            app.DOPanel = uipanel(app.ModelTab);
            app.DOPanel.BorderType = 'none';
            app.DOPanel.Title = 'Docks';
            app.DOPanel.BackgroundColor = [1 1 1];
            app.DOPanel.Position = [12 154 207 132];

            % Create AdditemDO
            app.AdditemDO = uibutton(app.DOPanel, 'push');
            app.AdditemDO.ButtonPushedFcn = createCallbackFcn(app, @AdditemDOButtonPushed, true);
            app.AdditemDO.BackgroundColor = [0.2 0.702 0.502];
            app.AdditemDO.FontColor = [1 1 1];
            app.AdditemDO.Position = [71 22 74 21];
            app.AdditemDO.Text = 'Select';

            % Create LabelDO
            app.LabelDO = uilabel(app.DOPanel);
            app.LabelDO.HorizontalAlignment = 'center';
            app.LabelDO.Position = [20 71 175 15];
            app.LabelDO.Text = 'No items yet';

            % Create DatabaseTab
            app.DatabaseTab = uitab(app.TabGroup);
            app.DatabaseTab.Title = 'Database';
            app.DatabaseTab.BackgroundColor = [1 1 1];

            % Create UITable
            app.UITable = uitable(app.DatabaseTab);
            app.UITable.ColumnName = {'Col1'};
            app.UITable.RowName = {};
            app.UITable.ColumnEditable = true;
            app.UITable.CellEditCallback = createCallbackFcn(app, @UITableCellEdit, true);
            app.UITable.Position = [240 -1 656 432];

            % Create SortbyDropDownLabel
            app.SortbyDropDownLabel = uilabel(app.DatabaseTab);
            app.SortbyDropDownLabel.HorizontalAlignment = 'right';
            app.SortbyDropDownLabel.Position = [591 466 44 15];
            app.SortbyDropDownLabel.Text = 'Sort by';

            % Create Sortby
            app.Sortby = uidropdown(app.DatabaseTab);
            app.Sortby.Items = {'Name (AZ)', 'Supplier (AZ)', 'Power consumption [W]', 'Mass [kg]'};
            app.Sortby.ItemsData = {'name', 'supplier', 'power', 'mass'};
            app.Sortby.ValueChangedFcn = createCallbackFcn(app, @SortbyValueChanged, true);
            app.Sortby.Position = [650 462 220 22];
            app.Sortby.Value = 'name';

            % Create ImsearchingforDropDownLabel
            app.ImsearchingforDropDownLabel = uilabel(app.DatabaseTab);
            app.ImsearchingforDropDownLabel.Position = [24 466 94 15];
            app.ImsearchingforDropDownLabel.Text = 'I''m searching for';

            % Create Class
            app.Class = uidropdown(app.DatabaseTab);
            app.Class.Items = {'an actuator', 'a sensor', 'an onboard computer'};
            app.Class.ItemsData = {'actuator', 'sensor', 'dock'};
            app.Class.ValueChangedFcn = createCallbackFcn(app, @ClassValueChanged, true);
            app.Class.Position = [117 462 115 22];
            app.Class.Value = 'actuator';

            % Create CheckoutPanel
            app.CheckoutPanel = uipanel(app.DatabaseTab);
            app.CheckoutPanel.BorderType = 'none';
            app.CheckoutPanel.TitlePosition = 'centertop';
            app.CheckoutPanel.Title = 'Checkout';
            app.CheckoutPanel.BackgroundColor = [1 1 1];
            app.CheckoutPanel.FontSize = 10;
            app.CheckoutPanel.Position = [1 -1 238 150];

            % Create AmountSpinnerLabel
            app.AmountSpinnerLabel = uilabel(app.CheckoutPanel);
            app.AmountSpinnerLabel.Position = [170 104 47 15];
            app.AmountSpinnerLabel.Text = 'Amount';

            % Create Amount
            app.Amount = uispinner(app.CheckoutPanel);
            app.Amount.Limits = [1 100];
            app.Amount.RoundFractionalValues = 'on';
            app.Amount.ValueDisplayFormat = '%.0f';
            app.Amount.Position = [170 79 56 22];
            app.Amount.Value = 1;

            % Create Additem
            app.Additem = uibutton(app.CheckoutPanel, 'push');
            app.Additem.ButtonPushedFcn = createCallbackFcn(app, @AdditemButtonPushed, true);
            app.Additem.BackgroundColor = [0.2 0.702 0.502];
            app.Additem.FontColor = [1 1 1];
            app.Additem.Position = [20 23 207 42];
            app.Additem.Text = 'Add item to model';

            % Create ItemselectedEditFieldLabel
            app.ItemselectedEditFieldLabel = uilabel(app.CheckoutPanel);
            app.ItemselectedEditFieldLabel.Position = [19 104 77 15];
            app.ItemselectedEditFieldLabel.Text = 'Item selected';

            % Create Itemselected
            app.Itemselected = uieditfield(app.CheckoutPanel, 'text');
            app.Itemselected.Position = [19 79 137 22];

            % Create SearchfiltersPanel
            app.SearchfiltersPanel = uipanel(app.DatabaseTab);
            app.SearchfiltersPanel.BorderType = 'none';
            app.SearchfiltersPanel.TitlePosition = 'centertop';
            app.SearchfiltersPanel.Title = 'Search filters';
            app.SearchfiltersPanel.BackgroundColor = [1 1 1];
            app.SearchfiltersPanel.FontSize = 10;
            app.SearchfiltersPanel.Position = [1 148 239 283];

            % Create Maxmass
            app.Maxmass = uieditfield(app.SearchfiltersPanel, 'numeric');
            app.Maxmass.ValueDisplayFormat = '%5.2f kg';
            app.Maxmass.Enable = 'off';
            app.Maxmass.Position = [147 229 77 22];

            % Create Maxpower
            app.Maxpower = uieditfield(app.SearchfiltersPanel, 'numeric');
            app.Maxpower.ValueDisplayFormat = '%5.2f W';
            app.Maxpower.Enable = 'off';
            app.Maxpower.Position = [147 188 77 22];

            % Create Maxtemp
            app.Maxtemp = uieditfield(app.SearchfiltersPanel, 'numeric');
            app.Maxtemp.ValueDisplayFormat = '%5.0f ºC';
            app.Maxtemp.Enable = 'off';
            app.Maxtemp.Position = [147 148 77 22];

            % Create Mintemp
            app.Mintemp = uieditfield(app.SearchfiltersPanel, 'numeric');
            app.Mintemp.ValueDisplayFormat = '%5.0f ºC';
            app.Mintemp.Enable = 'off';
            app.Mintemp.Position = [147 108 77 22];

            % Create CheckBoxMaxmass
            app.CheckBoxMaxmass = uicheckbox(app.SearchfiltersPanel);
            app.CheckBoxMaxmass.ValueChangedFcn = createCallbackFcn(app, @CheckBoxMaxmassValueChanged, true);
            app.CheckBoxMaxmass.Text = '';
            app.CheckBoxMaxmass.Position = [20 233 15 15];

            % Create CheckBoxMaxpower
            app.CheckBoxMaxpower = uicheckbox(app.SearchfiltersPanel);
            app.CheckBoxMaxpower.ValueChangedFcn = createCallbackFcn(app, @CheckBoxMaxpowerValueChanged, true);
            app.CheckBoxMaxpower.Text = '';
            app.CheckBoxMaxpower.Position = [20 192 15 15];

            % Create CheckBoxMaxtemp
            app.CheckBoxMaxtemp = uicheckbox(app.SearchfiltersPanel);
            app.CheckBoxMaxtemp.ValueChangedFcn = createCallbackFcn(app, @CheckBoxMaxtempValueChanged, true);
            app.CheckBoxMaxtemp.Text = '';
            app.CheckBoxMaxtemp.Position = [20 152 15 15];

            % Create CheckBoxMintemp
            app.CheckBoxMintemp = uicheckbox(app.SearchfiltersPanel);
            app.CheckBoxMintemp.ValueChangedFcn = createCallbackFcn(app, @CheckBoxMintempValueChanged, true);
            app.CheckBoxMintemp.Text = '';
            app.CheckBoxMintemp.Position = [20 112 15 15];

            % Create MaxmassLabel
            app.MaxmassLabel = uilabel(app.SearchfiltersPanel);
            app.MaxmassLabel.Enable = 'off';
            app.MaxmassLabel.Position = [45 233 64 15];
            app.MaxmassLabel.Text = 'Max. mass';

            % Create MaxpowerLabel
            app.MaxpowerLabel = uilabel(app.SearchfiltersPanel);
            app.MaxpowerLabel.Enable = 'off';
            app.MaxpowerLabel.Position = [45 192 68 15];
            app.MaxpowerLabel.Text = 'Max. power';

            % Create MaxtempLabel
            app.MaxtempLabel = uilabel(app.SearchfiltersPanel);
            app.MaxtempLabel.Enable = 'off';
            app.MaxtempLabel.Position = [45 152 100 15];
            app.MaxtempLabel.Text = 'Max. temperature';

            % Create MintempLabel
            app.MintempLabel = uilabel(app.SearchfiltersPanel);
            app.MintempLabel.Enable = 'off';
            app.MintempLabel.Position = [45 112 96 15];
            app.MintempLabel.Text = 'Min. temperature';

            % Create InparticularDropDownLabel
            app.InparticularDropDownLabel = uilabel(app.DatabaseTab);
            app.InparticularDropDownLabel.Position = [257 466 68 15];
            app.InparticularDropDownLabel.Text = 'In particular';

            % Create Subclass
            app.Subclass = uidropdown(app.DatabaseTab);
            app.Subclass.Items = {'a reaction wheel', 'other category'};
            app.Subclass.ValueChangedFcn = createCallbackFcn(app, @SubclassValueChanged, true);
            app.Subclass.Position = [324 462 140 22];
            app.Subclass.Value = 'a reaction wheel';

            % Create CreateitemTab
            app.CreateitemTab = uitab(app.TabGroup);
            app.CreateitemTab.Title = 'Create item';
            app.CreateitemTab.BackgroundColor = [1 1 1];

            % Create ModelToolbox_2
            app.ModelToolbox_2 = uipanel(app.CreateitemTab);
            app.ModelToolbox_2.BorderType = 'none';
            app.ModelToolbox_2.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ModelToolbox_2.Position = [1 439 895 78];

            % Create SaveItemInDatabase
            app.SaveItemInDatabase = uibutton(app.ModelToolbox_2, 'push');
            app.SaveItemInDatabase.ButtonPushedFcn = createCallbackFcn(app, @SaveItemInDatabaseButtonPushed, true);
            app.SaveItemInDatabase.BackgroundColor = [0.2 0.702 0.502];
            app.SaveItemInDatabase.FontColor = [1 1 1];
            app.SaveItemInDatabase.Position = [693 19 165 42];
            app.SaveItemInDatabase.Text = 'Save item in database';

            % Create CreateItemDropdown
            app.CreateItemDropdown = uidropdown(app.ModelToolbox_2);
            app.CreateItemDropdown.Items = {'Sun sensor', 'Star sensor', 'Earth sensor', 'Magnetometer', 'IMU', 'GNSS receiver', 'Other sensor', 'Reaction wheel', 'Momentum wheel', 'Magnetorquer', 'Other actuator', 'Dock'};
            app.CreateItemDropdown.ItemsData = {'sun sensor', 'star sensor', 'earth sensor', 'magnetometer', 'imu', 'gnss', 'other sensor', 'reaction wheel', 'momentum wheel', 'magnetorquer', 'other actuator', 'dock'};
            app.CreateItemDropdown.ValueChangedFcn = createCallbackFcn(app, @CreateItemDropdownValueChanged, true);
            app.CreateItemDropdown.FontSize = 14;
            app.CreateItemDropdown.BackgroundColor = [1 1 1];
            app.CreateItemDropdown.Position = [27 27 239 26];
            app.CreateItemDropdown.Value = 'sun sensor';

            % Create GeneralfeaturesPanel
            app.GeneralfeaturesPanel = uipanel(app.CreateitemTab);
            app.GeneralfeaturesPanel.BorderType = 'none';
            app.GeneralfeaturesPanel.Title = 'General features';
            app.GeneralfeaturesPanel.BackgroundColor = [1 1 1];
            app.GeneralfeaturesPanel.Position = [27 30 530 384];

            % Create MassEditFieldLabel
            app.MassEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.MassEditFieldLabel.FontSize = 14;
            app.MassEditFieldLabel.Position = [1 203 39 18];
            app.MassEditFieldLabel.Text = 'Mass';

            % Create MassEditField
            app.MassEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.MassEditField.Limits = [0 1000];
            app.MassEditField.ValueDisplayFormat = '%5.2f kg';
            app.MassEditField.FontSize = 14;
            app.MassEditField.Position = [72 202 116 22];

            % Create PowerEditFieldLabel
            app.PowerEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.PowerEditFieldLabel.FontSize = 14;
            app.PowerEditFieldLabel.Position = [1 164 45 18];
            app.PowerEditFieldLabel.Text = 'Power';

            % Create PowerEditField
            app.PowerEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.PowerEditField.Limits = [0 1000000];
            app.PowerEditField.ValueDisplayFormat = '%5.2f W';
            app.PowerEditField.FontSize = 14;
            app.PowerEditField.Position = [72 163 116 22];

            % Create PriceEditFieldLabel
            app.PriceEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.PriceEditFieldLabel.FontSize = 14;
            app.PriceEditFieldLabel.Position = [1 125 37 18];
            app.PriceEditFieldLabel.Text = 'Price';

            % Create PriceEditField
            app.PriceEditField = uieditfield(app.GeneralfeaturesPanel, 'text');
            app.PriceEditField.FontSize = 14;
            app.PriceEditField.Position = [72 124 116 22];

            % Create TmaxEditFieldLabel
            app.TmaxEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.TmaxEditFieldLabel.FontSize = 14;
            app.TmaxEditFieldLabel.Position = [1 87 44 18];
            app.TmaxEditFieldLabel.Text = 'T max';

            % Create TmaxEditField
            app.TmaxEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.TmaxEditField.Limits = [-270 1000];
            app.TmaxEditField.ValueDisplayFormat = '%5.1f ºC';
            app.TmaxEditField.FontSize = 14;
            app.TmaxEditField.Position = [72 86 116 22];

            % Create TminEditFieldLabel
            app.TminEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.TminEditFieldLabel.FontSize = 14;
            app.TminEditFieldLabel.Position = [1 49 40 18];
            app.TminEditFieldLabel.Text = 'T min';

            % Create TminEditField
            app.TminEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.TminEditField.Limits = [-270 1000];
            app.TminEditField.ValueDisplayFormat = '%5.1f ºC';
            app.TminEditField.FontSize = 14;
            app.TminEditField.Position = [72 48 116 22];

            % Create NameEditFieldLabel
            app.NameEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.NameEditFieldLabel.FontSize = 14;
            app.NameEditFieldLabel.Position = [1 321 62 18];
            app.NameEditFieldLabel.Text = 'Name';

            % Create NameEditField
            app.NameEditField = uieditfield(app.GeneralfeaturesPanel, 'text');
            app.NameEditField.FontSize = 14;
            app.NameEditField.Position = [71 317 328 27];

            % Create SupplierEditFieldLabel
            app.SupplierEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.SupplierEditFieldLabel.FontSize = 14;
            app.SupplierEditFieldLabel.Position = [1 283 62 18];
            app.SupplierEditFieldLabel.Text = 'Supplier';

            % Create SupplierEditField
            app.SupplierEditField = uieditfield(app.GeneralfeaturesPanel, 'text');
            app.SupplierEditField.FontSize = 14;
            app.SupplierEditField.Position = [71 279 328 27];

            % Create URLEditFieldLabel
            app.URLEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.URLEditFieldLabel.FontSize = 14;
            app.URLEditFieldLabel.Position = [1 246 62 18];
            app.URLEditFieldLabel.Text = 'URL';

            % Create URLEditField
            app.URLEditField = uieditfield(app.GeneralfeaturesPanel, 'text');
            app.URLEditField.FontSize = 14;
            app.URLEditField.Position = [71 242 328 27];

            % Create WidthEditFieldLabel
            app.WidthEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.WidthEditFieldLabel.FontSize = 14;
            app.WidthEditFieldLabel.Position = [220 203 41 18];
            app.WidthEditFieldLabel.Text = 'Width';

            % Create WidthEditField
            app.WidthEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.WidthEditField.Limits = [0 Inf];
            app.WidthEditField.ValueDisplayFormat = '%5.0f mm';
            app.WidthEditField.FontSize = 14;
            app.WidthEditField.Position = [285 202 114 22];

            % Create LengthEditFieldLabel
            app.LengthEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.LengthEditFieldLabel.FontSize = 14;
            app.LengthEditFieldLabel.Position = [219 164 48 18];
            app.LengthEditFieldLabel.Text = 'Length';

            % Create LengthEditField
            app.LengthEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.LengthEditField.Limits = [0 Inf];
            app.LengthEditField.ValueDisplayFormat = '%5.0f mm';
            app.LengthEditField.FontSize = 14;
            app.LengthEditField.Position = [285 162 114 22];

            % Create HeightEditFieldLabel
            app.HeightEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.HeightEditFieldLabel.FontSize = 14;
            app.HeightEditFieldLabel.Position = [219 125 46 18];
            app.HeightEditFieldLabel.Text = 'Height';

            % Create HeightEditField
            app.HeightEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.HeightEditField.Limits = [0 Inf];
            app.HeightEditField.ValueDisplayFormat = '%5.0f mm';
            app.HeightEditField.FontSize = 14;
            app.HeightEditField.Position = [285 123 114 22];

            % Create LifespanEditFieldLabel
            app.LifespanEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.LifespanEditFieldLabel.FontSize = 14;
            app.LifespanEditFieldLabel.Position = [1 11 58 18];
            app.LifespanEditFieldLabel.Text = 'Lifespan';

            % Create LifespanEditField
            app.LifespanEditField = uieditfield(app.GeneralfeaturesPanel, 'text');
            app.LifespanEditField.FontSize = 14;
            app.LifespanEditField.Position = [72 10 116 22];

            % Create COTSCheckBox
            app.COTSCheckBox = uicheckbox(app.GeneralfeaturesPanel);
            app.COTSCheckBox.Text = 'COTS';
            app.COTSCheckBox.FontSize = 14;
            app.COTSCheckBox.Position = [433 285 90 18];

            % Create CubeSatCheckBox
            app.CubeSatCheckBox = uicheckbox(app.GeneralfeaturesPanel);
            app.CubeSatCheckBox.Text = 'CubeSat';
            app.CubeSatCheckBox.FontSize = 14;
            app.CubeSatCheckBox.Position = [432 246 90 18];

            % Create TRLDropDownLabel
            app.TRLDropDownLabel = uilabel(app.GeneralfeaturesPanel);
            app.TRLDropDownLabel.FontSize = 14;
            app.TRLDropDownLabel.Position = [432 320 32 18];
            app.TRLDropDownLabel.Text = 'TRL';

            % Create TRLDropDown
            app.TRLDropDown = uidropdown(app.GeneralfeaturesPanel);
            app.TRLDropDown.Items = {'None', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
            app.TRLDropDown.Editable = 'on';
            app.TRLDropDown.FontSize = 14;
            app.TRLDropDown.BackgroundColor = [1 1 1];
            app.TRLDropDown.Position = [466 319 65 22];
            app.TRLDropDown.Value = 'None';

            % Create VnomEditFieldLabel
            app.VnomEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.VnomEditFieldLabel.FontSize = 14;
            app.VnomEditFieldLabel.Position = [220 86 42 18];
            app.VnomEditFieldLabel.Text = 'Vnom';

            % Create VnomEditField
            app.VnomEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.VnomEditField.Limits = [0 Inf];
            app.VnomEditField.ValueDisplayFormat = '%5.1f V';
            app.VnomEditField.FontSize = 14;
            app.VnomEditField.Position = [285 85 114 22];

            % Create IavgEditFieldLabel
            app.IavgEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.IavgEditFieldLabel.FontSize = 14;
            app.IavgEditFieldLabel.Position = [219 47 32 18];
            app.IavgEditFieldLabel.Text = 'Iavg';

            % Create IavgEditField
            app.IavgEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.IavgEditField.Limits = [0 Inf];
            app.IavgEditField.ValueDisplayFormat = '%5.3f A';
            app.IavgEditField.FontSize = 14;
            app.IavgEditField.Position = [285 45 114 22];

            % Create IpeakEditFieldLabel
            app.IpeakEditFieldLabel = uilabel(app.GeneralfeaturesPanel);
            app.IpeakEditFieldLabel.FontSize = 14;
            app.IpeakEditFieldLabel.Position = [219 8 40 18];
            app.IpeakEditFieldLabel.Text = 'Ipeak';

            % Create IpeakEditField
            app.IpeakEditField = uieditfield(app.GeneralfeaturesPanel, 'numeric');
            app.IpeakEditField.Limits = [0 Inf];
            app.IpeakEditField.ValueDisplayFormat = '%5.3f A';
            app.IpeakEditField.FontSize = 14;
            app.IpeakEditField.Position = [285 6 114 22];

            % Create SpecificfeauresPanel
            app.SpecificfeauresPanel = uipanel(app.CreateitemTab);
            app.SpecificfeauresPanel.BorderType = 'none';
            app.SpecificfeauresPanel.Title = 'Specific feaures';
            app.SpecificfeauresPanel.BackgroundColor = [1 1 1];
            app.SpecificfeauresPanel.Position = [587 155 271 259];

            % Create Spec1EditField
            app.Spec1EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec1EditField.FontSize = 14;
            app.Spec1EditField.Position = [135 194 137 22];

            % Create Spec2EditField
            app.Spec2EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec2EditField.FontSize = 14;
            app.Spec2EditField.Position = [135 158 137 22];

            % Create Spec3EditField
            app.Spec3EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec3EditField.FontSize = 14;
            app.Spec3EditField.Position = [135 123 137 22];

            % Create Spec4EditField
            app.Spec4EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec4EditField.FontSize = 14;
            app.Spec4EditField.Position = [135 88 137 22];

            % Create Spec5EditField
            app.Spec5EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec5EditField.FontSize = 14;
            app.Spec5EditField.Position = [135 53 137 22];

            % Create Spec6EditField
            app.Spec6EditField = uieditfield(app.SpecificfeauresPanel, 'text');
            app.Spec6EditField.FontSize = 14;
            app.Spec6EditField.Position = [135 18 137 22];

            % Create Spec1EditFieldLabel
            app.Spec1EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec1EditFieldLabel.FontSize = 14;
            app.Spec1EditFieldLabel.Position = [1 196 135 18];
            app.Spec1EditFieldLabel.Text = 'Spec 1';

            % Create Spec2EditFieldLabel
            app.Spec2EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec2EditFieldLabel.FontSize = 14;
            app.Spec2EditFieldLabel.Position = [1 160 135 18];
            app.Spec2EditFieldLabel.Text = 'Spec 2';

            % Create Spec3EditFieldLabel
            app.Spec3EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec3EditFieldLabel.FontSize = 14;
            app.Spec3EditFieldLabel.Position = [1 124 135 18];
            app.Spec3EditFieldLabel.Text = 'Spec 3';

            % Create Spec4EditFieldLabel
            app.Spec4EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec4EditFieldLabel.FontSize = 14;
            app.Spec4EditFieldLabel.Position = [1 90 135 18];
            app.Spec4EditFieldLabel.Text = 'Spec 4';

            % Create Spec5EditFieldLabel
            app.Spec5EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec5EditFieldLabel.FontSize = 14;
            app.Spec5EditFieldLabel.Position = [1 55 135 18];
            app.Spec5EditFieldLabel.Text = 'Spec 5';

            % Create Spec6EditFieldLabel
            app.Spec6EditFieldLabel = uilabel(app.SpecificfeauresPanel);
            app.Spec6EditFieldLabel.FontSize = 14;
            app.Spec6EditFieldLabel.Position = [1 20 135 18];
            app.Spec6EditFieldLabel.Text = 'Spec 6';

            % Create NotesTextAreaLabel
            app.NotesTextAreaLabel = uilabel(app.CreateitemTab);
            app.NotesTextAreaLabel.FontSize = 14;
            app.NotesTextAreaLabel.Position = [458 133 42 18];
            app.NotesTextAreaLabel.Text = 'Notes';

            % Create NotesTextArea
            app.NotesTextArea = uitextarea(app.CreateitemTab);
            app.NotesTextArea.FontSize = 14;
            app.NotesTextArea.Position = [515 35 343 118];

            % Create SettingsTab
            app.SettingsTab = uitab(app.TabGroup);
            app.SettingsTab.Title = 'Settings';
            app.SettingsTab.BackgroundColor = [1 1 1];
            app.SettingsTab.ForegroundColor = [0.149 0.149 0.149];

            % Create FieldstodisplayonsearchresultsPanel
            app.FieldstodisplayonsearchresultsPanel = uipanel(app.SettingsTab);
            app.FieldstodisplayonsearchresultsPanel.BorderType = 'none';
            app.FieldstodisplayonsearchresultsPanel.Title = 'Fields to display on search results';
            app.FieldstodisplayonsearchresultsPanel.BackgroundColor = [1 1 1];
            app.FieldstodisplayonsearchresultsPanel.Position = [21 244 247 178];

            % Create Panel
            app.Panel = uipanel(app.FieldstodisplayonsearchresultsPanel);
            app.Panel.BorderType = 'none';
            app.Panel.BackgroundColor = [1 1 1];
            app.Panel.Position = [1 1 247 153];

            % Create NameCheckBox
            app.NameCheckBox = uicheckbox(app.Panel);
            app.NameCheckBox.Enable = 'off';
            app.NameCheckBox.Text = 'Name';
            app.NameCheckBox.Position = [8 134 80 15];
            app.NameCheckBox.Value = true;

            % Create SupplierCheckBox
            app.SupplierCheckBox = uicheckbox(app.Panel);
            app.SupplierCheckBox.Enable = 'off';
            app.SupplierCheckBox.Text = 'Supplier';
            app.SupplierCheckBox.Position = [8 111 80 15];
            app.SupplierCheckBox.Value = true;

            % Create MassCheckBox
            app.MassCheckBox = uicheckbox(app.Panel);
            app.MassCheckBox.Text = 'Mass';
            app.MassCheckBox.Position = [8 88 80 15];
            app.MassCheckBox.Value = true;

            % Create PowerCheckBox
            app.PowerCheckBox = uicheckbox(app.Panel);
            app.PowerCheckBox.Text = 'Power';
            app.PowerCheckBox.Position = [8 65 80 15];
            app.PowerCheckBox.Value = true;

            % Create CubeSatCheckBox_3
            app.CubeSatCheckBox_3 = uicheckbox(app.Panel);
            app.CubeSatCheckBox_3.Text = 'CubeSat';
            app.CubeSatCheckBox_3.Position = [8 42 80 15];

            % Create COTSCheckBox_3
            app.COTSCheckBox_3 = uicheckbox(app.Panel);
            app.COTSCheckBox_3.Text = 'COTS';
            app.COTSCheckBox_3.Position = [8 19 80 15];

            % Create DimensionsCheckBox
            app.DimensionsCheckBox = uicheckbox(app.Panel);
            app.DimensionsCheckBox.Text = 'Dimensions';
            app.DimensionsCheckBox.Position = [122 134 85 15];
            app.DimensionsCheckBox.Value = true;

            % Create ThermalfeaturesCheckBox
            app.ThermalfeaturesCheckBox = uicheckbox(app.Panel);
            app.ThermalfeaturesCheckBox.Text = 'Thermal features';
            app.ThermalfeaturesCheckBox.Position = [122 111 113 15];
            app.ThermalfeaturesCheckBox.Value = true;

            % Create ElectricalfeaturesCheckBox
            app.ElectricalfeaturesCheckBox = uicheckbox(app.Panel);
            app.ElectricalfeaturesCheckBox.Text = 'Electrical features';
            app.ElectricalfeaturesCheckBox.Position = [122 88 117 15];

            % Create SpecificfeaturesCheckBox
            app.SpecificfeaturesCheckBox = uicheckbox(app.Panel);
            app.SpecificfeaturesCheckBox.Text = 'Specific features';
            app.SpecificfeaturesCheckBox.Position = [122 65 111 15];
            app.SpecificfeaturesCheckBox.Value = true;

            % Create LifespanCheckBox
            app.LifespanCheckBox = uicheckbox(app.Panel);
            app.LifespanCheckBox.Text = 'Lifespan';
            app.LifespanCheckBox.Position = [122 42 80 15];

            % Create PriceCheckBox
            app.PriceCheckBox = uicheckbox(app.Panel);
            app.PriceCheckBox.Text = 'Price';
            app.PriceCheckBox.Position = [122 19 80 15];

            % Create ExcelsettingsPanel
            app.ExcelsettingsPanel = uipanel(app.SettingsTab);
            app.ExcelsettingsPanel.BorderType = 'none';
            app.ExcelsettingsPanel.Title = 'Excel settings';
            app.ExcelsettingsPanel.BackgroundColor = [1 1 1];
            app.ExcelsettingsPanel.Position = [294 244 349 178];

            % Create DatabasesheetnameEditFieldLabel
            app.DatabasesheetnameEditFieldLabel = uilabel(app.ExcelsettingsPanel);
            app.DatabasesheetnameEditFieldLabel.VerticalAlignment = 'center';
            app.DatabasesheetnameEditFieldLabel.Position = [7 92 120 15];
            app.DatabasesheetnameEditFieldLabel.Text = 'Database sheetname';

            % Create DatabasesheetnameEditField
            app.DatabasesheetnameEditField = uieditfield(app.ExcelsettingsPanel, 'text');
            app.DatabasesheetnameEditField.Position = [142 88 208 22];

            % Create ModelsheetnameEditFieldLabel
            app.ModelsheetnameEditFieldLabel = uilabel(app.ExcelsettingsPanel);
            app.ModelsheetnameEditFieldLabel.VerticalAlignment = 'center';
            app.ModelsheetnameEditFieldLabel.Position = [7 55 101 15];
            app.ModelsheetnameEditFieldLabel.Text = 'Model sheetname';

            % Create ModelsheetnameEditField
            app.ModelsheetnameEditField = uieditfield(app.ExcelsettingsPanel, 'text');
            app.ModelsheetnameEditField.Position = [142 51 208 22];

            % Create FilenameEditFieldLabel
            app.FilenameEditFieldLabel = uilabel(app.ExcelsettingsPanel);
            app.FilenameEditFieldLabel.VerticalAlignment = 'center';
            app.FilenameEditFieldLabel.Position = [7 129 55 15];
            app.FilenameEditFieldLabel.Text = 'Filename';

            % Create FilenameEditField
            app.FilenameEditField = uieditfield(app.ExcelsettingsPanel, 'text');
            app.FilenameEditField.Position = [142 125 208 22];

            % Create ModelToolbox_3
            app.ModelToolbox_3 = uipanel(app.SettingsTab);
            app.ModelToolbox_3.BorderType = 'none';
            app.ModelToolbox_3.BackgroundColor = [0.9412 0.9412 0.9412];
            app.ModelToolbox_3.Position = [1 439 895 78];

            % Create SaveItemInDatabase_2
            app.SaveItemInDatabase_2 = uibutton(app.ModelToolbox_3, 'push');
            app.SaveItemInDatabase_2.BackgroundColor = [0.2 0.702 0.502];
            app.SaveItemInDatabase_2.FontColor = [1 1 1];
            app.SaveItemInDatabase_2.Position = [693 19 165 42];
            app.SaveItemInDatabase_2.Text = 'Save changes';

            % Create SaveItemInDatabase_3
            app.SaveItemInDatabase_3 = uibutton(app.ModelToolbox_3, 'push');
            app.SaveItemInDatabase_3.BackgroundColor = [1 1 1];
            app.SaveItemInDatabase_3.Position = [21 19 119 42];
            app.SaveItemInDatabase_3.Text = 'Set default';

            % Create TotalmassEditFieldLabel
            app.TotalmassEditFieldLabel = uilabel(app.UI);
            app.TotalmassEditFieldLabel.BackgroundColor = [0 0.102 0.4];
            app.TotalmassEditFieldLabel.HorizontalAlignment = 'right';
            app.TotalmassEditFieldLabel.FontColor = [1 1 1];
            app.TotalmassEditFieldLabel.Position = [744 5 63 15];
            app.TotalmassEditFieldLabel.Text = 'Total mass';

            % Create Totalmass
            app.Totalmass = uieditfield(app.UI, 'numeric');
            app.Totalmass.Limits = [0 Inf];
            app.Totalmass.ValueDisplayFormat = '%5.2f kg';
            app.Totalmass.Editable = 'off';
            app.Totalmass.FontColor = [1 1 1];
            app.Totalmass.BackgroundColor = [0 0.102 0.4];
            app.Totalmass.Position = [817 1 80 22];

            % Create TotalpowerEditFieldLabel
            app.TotalpowerEditFieldLabel = uilabel(app.UI);
            app.TotalpowerEditFieldLabel.BackgroundColor = [0 0.102 0.4];
            app.TotalpowerEditFieldLabel.VerticalAlignment = 'center';
            app.TotalpowerEditFieldLabel.FontColor = [1 1 1];
            app.TotalpowerEditFieldLabel.Position = [575 5 78 15];
            app.TotalpowerEditFieldLabel.Text = 'Total power';

            % Create Totalpower
            app.Totalpower = uieditfield(app.UI, 'numeric');
            app.Totalpower.ValueDisplayFormat = '%5.2f W';
            app.Totalpower.Editable = 'off';
            app.Totalpower.FontColor = [1 1 1];
            app.Totalpower.BackgroundColor = [0 0.102 0.4];
            app.Totalpower.Position = [652 1 68 22];
        end
    end

    methods (Access = public)

        % Construct app
        function app = app1

            % Create and configure components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UI)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UI)
        end
    end
end