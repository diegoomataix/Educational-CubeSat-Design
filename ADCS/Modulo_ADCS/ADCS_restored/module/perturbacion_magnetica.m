function varargout = perturbacion_magnetica(varargin)
% PERTURBACION_MAGNETICA MATLAB code for perturbacion_magnetica.fig
%      PERTURBACION_MAGNETICA, by itself, creates m1 new PERTURBACION_MAGNETICA or raises the existing
%      singleton*.
%
%      H = PERTURBACION_MAGNETICA returns the handle to m1 new PERTURBACION_MAGNETICA or the handle to
%      the existing singleton*.
%
%      PERTURBACION_MAGNETICA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERTURBACION_MAGNETICA.M with the given input arguments.
%
%      PERTURBACION_MAGNETICA('Property','Value',...) creates m1 new PERTURBACION_MAGNETICA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before perturbacion_magnetica_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to perturbacion_magnetica_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help perturbacion_magnetica

% Last Modified by GUIDE v2.5 05-Mar-2014 19:46:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @perturbacion_magnetica_OpeningFcn, ...
                   'gui_OutputFcn',  @perturbacion_magnetica_OutputFcn, ...
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


% --- Executes just before perturbacion_magnetica is made visible.
function perturbacion_magnetica_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to perturbacion_magnetica (see VARARGIN)

% Choose default command line output for perturbacion_magnetica
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
end

% UIWAIT makes perturbacion_magnetica wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = perturbacion_magnetica_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as m1 double
h=str2double(get(hObject,'String')); 
M1=str2double(get(handles.M1,'String')); 
D=str2double(get(handles.D,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(M1) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.M1,'String',0); 
 M1=0; 
end 
if isnan(D) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.D,'String',0); 
 D=0; 
end 
 

Tm =mag_field(h,D,M1); 
set(handles.Tm,'String',Tm); 
guidata(hObject, handles); 

end


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have m1 white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function M1_Callback(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of M1 as text
%        str2double(get(hObject,'String')) returns contents of M1 as m1 double
M1=str2double(get(hObject,'String')); 
h=str2double(get(handles.h,'String')); 
D=str2double(get(handles.D,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(M1) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.M1,'String',0); 
 M1=0; 
end 
if isnan(D) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.D,'String',0); 
 D=0; 
end 
  
Tm =mag_field(h,D,M1); 
set(handles.Tm,'String',Tm); 
guidata(hObject, handles); 
end


% --- Executes during object creation, after setting all properties.
function M1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have m1 white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as m1 double

D=str2double(get(hObject,'String')); 
M1=str2double(get(handles.M1,'String')); 
h=str2double(get(handles.h,'String'));

if isnan(h) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.h,'String',0); 
 h=0; 
end 
if isnan(M1) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.M1,'String',0); 
 M1=0; 
end 
if isnan(D) 
 errordlg('El valor debe ser numérico','ERROR') 
 set(handles.D,'String',0); 
 D=0; 
end 
 
 
Tm =mag_field(h,D,M1); 
set(handles.Tm,'String',Tm); 
guidata(hObject, handles); 

end



% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in m1 future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have m1 white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
end
