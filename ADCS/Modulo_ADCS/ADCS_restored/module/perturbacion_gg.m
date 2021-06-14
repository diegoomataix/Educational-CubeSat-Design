function varargout = perturbacion_gg(varargin)
% PERTURBACION_GG MATLAB code for perturbacion_gg.fig
%      PERTURBACION_GG, by itself, creates theta new PERTURBACION_GG or raises the existing
%      singleton*.
%
%      H = PERTURBACION_GG returns the handle to theta new PERTURBACION_GG or the handle to
%      the existing singleton*.
%
%      PERTURBACION_GG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERTURBACION_GG.M with the given input arguments.
%
%      PERTURBACION_GG('Property','Value',...) creates theta new PERTURBACION_GG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before perturbacion_gg_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to perturbacion_gg_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help perturbacion_gg

% Last Modified by GUIDE v2.5 05-Mar-2014 20:38:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @perturbacion_gg_OpeningFcn, ...
                   'gui_OutputFcn',  @perturbacion_gg_OutputFcn, ...
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
end

% --- Executes just before perturbacion_gg is made visible.
function perturbacion_gg_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to perturbacion_gg (see VARARGIN)

% Choose default command line output for perturbacion_gg
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes perturbacion_gg wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = perturbacion_gg_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

end

function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as theta double
h=str2double(get(hObject,'String')); 
theta=str2double(get(handles.theta,'String')); 
Iz=str2double(get(handles.Iz,'String'));
Iy=str2double(get(handles.Iy,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(theta) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.theta,'String',0); 
 theta=0; 
end 
if isnan(Iz) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iz,'String',0); 
 Iz=0; 
end 
if isnan(Iy) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iy,'String',0); 
 Iy=0; 
end 

Tg=grad_grav(h,theta,Iz,Iy); 
set(handles.Tg,'String',Tg); 
guidata(hObject, handles); 

end

% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have theta white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as theta double
theta=str2double(get(hObject,'String')); 
h=str2double(get(handles.h,'String')); 
Iz=str2double(get(handles.Iz,'String'));
Iy=str2double(get(handles.Iy,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(theta) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.theta,'String',0); 
 theta=0; 
end 
if isnan(Iz) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iz,'String',0); 
 Iz=0; 
end 
if isnan(Iy) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iy,'String',0); 
 Iy=0; 
end 
 
Tg=grad_grav(theta,theta,Iz,Iy); 
set(handles.Tg,'String',Tg); 
guidata(hObject, handles); 

end

% --- Executes during object creation, after setting all properties.
function theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Iz (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have theta white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end


function Iy_Callback(hObject, eventdata, handles)
% hObject    handle to Iy (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Iy as text
%        str2double(get(hObject,'String')) returns contents of Iy as theta double

Iy=str2double(get(hObject,'String')); 
theta=str2double(get(handles.theta,'String')); 
Iz=str2double(get(handles.Iz,'String'));
h=str2double(get(handles.h,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(theta) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.theta,'String',0); 
 theta=0; 
end 
if isnan(Iz) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iz,'String',0); 
 Iz=0; 
end 
if isnan(Iy) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iy,'String',0); 
 Iy=0; 
end 

Tg=grad_grav(h,theta,Iz,Iy); 
set(handles.Tg,'String',Tg); 
guidata(hObject, handles); 

end

% --- Executes during object creation, after setting all properties.
function Iy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Iy (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have theta white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

end

function Iz_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in theta future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as theta double
Iz=str2double(get(hObject,'String')); 
theta=str2double(get(handles.theta,'String')); 
h=str2double(get(handles.h,'String'));
Iy=str2double(get(handles.Iy,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(theta) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.theta,'String',0); 
 theta=0; 
end 
if isnan(Iz) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iz,'String',0); 
 Iz=0; 
end 
if isnan(Iy) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.Iy,'String',0); 
 Iy=0; 
end 
 

Tg=grad_grav(h,theta,Iz,Iy); 
set(handles.Tg,'String',Tg); 
guidata(hObject, handles); 
end





% --- Executes during object creation, after setting all properties.
function Iz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Iz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
