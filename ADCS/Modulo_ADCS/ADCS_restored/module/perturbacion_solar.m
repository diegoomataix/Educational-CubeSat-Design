function varargout = perturbacion_solar(varargin)
% PERTURBACION_SOLAR MATLAB code for perturbacion_solar.fig
%      PERTURBACION_SOLAR, by itself, creates a new PERTURBACION_SOLAR or raises the existing
%      singleton*.
%
%      H = PERTURBACION_SOLAR returns the handle to a new PERTURBACION_SOLAR or the handle to
%      the existing singleton*.
%
%      PERTURBACION_SOLAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERTURBACION_SOLAR.M with the given input arguments.
%
%      PERTURBACION_SOLAR('Property','Value',...) creates a new PERTURBACION_SOLAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before perturbacion_solar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to perturbacion_solar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help perturbacion_solar

% Last Modified by GUIDE v2.5 05-Mar-2014 09:42:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @perturbacion_solar_OpeningFcn, ...
                   'gui_OutputFcn',  @perturbacion_solar_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before perturbacion_solar is made visible.
function perturbacion_solar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to perturbacion_solar (see VARARGIN)

% Choose default command line output for perturbacion_solar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes perturbacion_solar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = perturbacion_solar_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function i_Callback(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of i as text
%        str2double(get(hObject,'String')) returns contents of i as a double
i=str2double(get(hObject,'String')); 
A=str2double(get(handles.A,'String')); 
cg=str2double(get(handles.cg,'String'));
cs=str2double(get(handles.cs,'String'));
q=str2double(get(handles.q,'String'));
if isnan(i) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.i,'String',0); 
 i=0; 
end 
if isnan(A) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.A,'String',0); 
 A=0; 
end 
if isnan(cg) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cg,'String',0); 
 cg=0; 
end 
if isnan(cs) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cs,'String',0); 
 cs=0; 
end 
if isnan(q) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.q,'String',0); 
 q=0; 
end 
Tsp=solar_rad(i,A,cg,cs,q); 
set(handles.Tsp,'String',Tsp); 
guidata(hObject, handles); 



% --- Executes during object creation, after setting all properties.
function i_CreateFcn(hObject, eventdata, handles)
% hObject    handle to i (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_Callback(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A as text
%        str2double(get(hObject,'String')) returns contents of A as a double
A=str2double(get(hObject,'String')); 
i=str2double(get(handles.i,'String')); 
cg=str2double(get(handles.cg,'String'));
cs=str2double(get(handles.cs,'String'));
q=str2double(get(handles.q,'String'));
if isnan(A) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.A,'String',0); 
 A=0; 
end 
if isnan(i) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.i,'String',0); 
 i=0; 
end 
if isnan(cg) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cg,'String',0); 
 cg=0; 
end 
if isnan(cs) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cs,'String',0); 
 cs=0; 
end 
if isnan(q) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.q,'String',0); 
 q=0; 
end 
Tsp=solar_rad(A,A,cg,cs,q); 
set(handles.Tsp,'String',Tsp); 
guidata(hObject, handles); 



% --- Executes during object creation, after setting all properties.
function A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cg_Callback(hObject, eventdata, handles)
% hObject    handle to cg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cg as text
%        str2double(get(hObject,'String')) returns contents of cg as a double

cg=str2double(get(hObject,'String')); 
A=str2double(get(handles.A,'String')); 
i=str2double(get(handles.i,'String'));
cs=str2double(get(handles.cs,'String'));
q=str2double(get(handles.q,'String'));
if isnan(cg) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cg,'String',0); 
 cg=0; 
end 
if isnan(A) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.A,'String',0); 
 A=0; 
end 
if isnan(i) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.i,'String',0); 
 i=0; 
end 
if isnan(cs) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cs,'String',0); 
 cs=0; 
end 
if isnan(q) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.q,'String',0); 
 q=0; 
end 
Tsp=solar_rad(cg,A,cg,cs,q); 
set(handles.Tsp,'String',Tsp); 
guidata(hObject, handles); 



% --- Executes during object creation, after setting all properties.
function cg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cs_Callback(hObject, eventdata, handles)
% hObject    handle to cs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cs as text
%        str2double(get(hObject,'String')) returns contents of cs as a double

cs=str2double(get(hObject,'String')); 
A=str2double(get(handles.A,'String')); 
cg=str2double(get(handles.cg,'String'));
i=str2double(get(handles.i,'String'));
q=str2double(get(handles.q,'String'));
if isnan(i) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.i,'String',0); 
 i=0; 
end 
if isnan(A) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.A,'String',0); 
 A=0; 
end 
if isnan(cg) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cg,'String',0); 
 cg=0; 
end 
if isnan(cs) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cs,'String',0); 
 cs=0; 
end 
if isnan(q) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.q,'String',0); 
 q=0; 
end 
Tsp=solar_rad(i,A,cg,cs,q); 
set(handles.Tsp,'String',Tsp); 
guidata(hObject, handles); 



% --- Executes during object creation, after setting all properties.
function cs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double
q=str2double(get(hObject,'String')); 
A=str2double(get(handles.A,'String')); 
cg=str2double(get(handles.cg,'String'));
cs=str2double(get(handles.cs,'String'));
i=str2double(get(handles.i,'String'));
if isnan(i) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.i,'String',0); 
 i=0; 
end 
if isnan(A) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.A,'String',0); 
 A=0; 
end 
if isnan(cg) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cg,'String',0); 
 cg=0; 
end 
if isnan(cs) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.cs,'String',0); 
 cs=0; 
end 
if isnan(q) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.q,'String',0); 
 q=0; 
end 
Tsp=solar_rad(i,A,cg,cs,q); 
set(handles.Tsp,'String',Tsp); 
guidata(hObject, handles); 




% --- Executes during object creation, after setting all properties.
function q_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
