function varargout = Perturbaciones(varargin)
% PERTURBACIONES MATLAB code for Perturbaciones.fig
%      PERTURBACIONES, by itself, creates a new PERTURBACIONES or raises the existing
%      singleton*.
%
%      H = PERTURBACIONES returns the handle to a new PERTURBACIONES or the handle to
%      the existing singleton*.
%
%      PERTURBACIONES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERTURBACIONES.M with the given input arguments.
%
%      PERTURBACIONES('Property','Value',...) creates a new PERTURBACIONES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Perturbaciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Perturbaciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Perturbaciones

% Last Modified by GUIDE v2.5 21-Apr-2020 15:04:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Perturbaciones_OpeningFcn, ...
                   'gui_OutputFcn',  @Perturbaciones_OutputFcn, ...
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


% --- Executes just before Perturbaciones is made visible.
function Perturbaciones_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Perturbaciones (see VARARGIN)


% Choose default command line output for Perturbaciones
handles.output = hObject;

% Update handles structure
%load Perturbaciones.mat;
%recupera_variables(handles);
guidata(hObject, handles);


% UIWAIT makes Perturbaciones wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Perturbaciones_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global ID_modulo
global handles_flag

%Bandera que indica con qué estructura handles se está trabajando
handles_flag = 1;

%Establece ID del módulo
ID_modulo = 1;

%Borra tabla de datos
set(handles.DATOS,'Data','')

% Get default command line output from handles structure
varargout{1} = handles.output;
%load perturbaciones.mat;
%recupera_variables(hObject,handles);
%Abre módulo de comunicación (común para todos los módulos)
%open('COMM.fig')
%COMM(handles)



function D1_Callback(hObject, eventdata, handles)
% hObject    handle to D1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D1 as text
%        str2double(get(hObject,'String')) returns contents of D1 as a double
%guidata(hObject, handles); 

global D1
D1 = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function D1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Iz_Callback(hObject, eventdata, handles)
% hObject    handle to Iz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Iz as text
%        str2double(get(hObject,'String')) returns contents of Iz as a double


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



function Iy_Callback(hObject, eventdata, handles)
% hObject    handle to Iy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Iy as text
%        str2double(get(hObject,'String')) returns contents of Iy as a double


% --- Executes during object creation, after setting all properties.
function Iy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Iy (see GCBO)
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



function Cd_Callback(hObject, eventdata, handles)
% hObject    handle to Cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cd as text
%        str2double(get(hObject,'String')) returns contents of Cd as a double


% --- Executes during object creation, after setting all properties.
function Cd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function Cpa_Callback(hObject, eventdata, handles)
% hObject    handle to Cpa (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Cpa as text
%        str2double(get(hObject,'String')) returns contents of Cpa as a double


% --- Executes during object creation, after setting all properties.
function Cpa_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cpa (see GCBO)
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



function q_Callback(hObject, eventdata, handles)
% hObject    handle to q (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q as text
%        str2double(get(hObject,'String')) returns contents of q as a double


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



function Tg_Callback(hObject, eventdata, handles)
% hObject    handle to Tg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tg as text
%        str2double(get(hObject,'String')) returns contents of Tg as a double


% --- Executes during object creation, after setting all properties.
function Tg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ta_Callback(hObject, eventdata, handles)
% hObject    handle to Ta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Ta as text
%        str2double(get(hObject,'String')) returns contents of Ta as a double


% --- Executes during object creation, after setting all properties.
function Ta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Ta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tm_Callback(hObject, eventdata, handles)
% hObject    handle to Tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tm as text
%        str2double(get(hObject,'String')) returns contents of Tm as a double


% --- Executes during object creation, after setting all properties.
function Tm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Tsp_Callback(hObject, eventdata, handles)
% hObject    handle to Tsp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tsp as text
%        str2double(get(hObject,'String')) returns contents of Tsp as a double


% --- Executes during object creation, after setting all properties.
function Tsp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tsp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Td_Callback(hObject, eventdata, handles)
% hObject    handle to Td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Td as text
%        str2double(get(hObject,'String')) returns contents of Td as a double


% --- Executes during object creation, after setting all properties.
function Td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function h_Callback(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global h
h = str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of h as text
%        str2double(get(hObject,'String')) returns contents of h as a double


% --- Executes during object creation, after setting all properties.
function h_CreateFcn(hObject, eventdata, handles)
% hObject    handle to h (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_m_Callback(hObject, eventdata, handles)
% hObject    handle to theta_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global theta_m
theta_m = str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of theta_m as text
%        str2double(get(hObject,'String')) returns contents of theta_m as a double


% --- Executes during object creation, after setting all properties.
function theta_m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function v_Callback(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global v
v = str2double(get(hObject,'String'));
% Hints: get(hObject,'String') returns contents of v as text
%        str2double(get(hObject,'String')) returns contents of v as a double


% --- Executes during object creation, after setting all properties.
function v_CreateFcn(hObject, eventdata, handles)
% hObject    handle to v (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function M1_Callback(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of M1 as text
%        str2double(get(hObject,'String')) returns contents of M1 as a double

global M1
M1 = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function M1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to M1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function I_Callback(hObject, eventdata, handles)
% hObject    handle to I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of I as text
%        str2double(get(hObject,'String')) returns contents of I as a double

global I
I = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function I_CreateFcn(hObject, eventdata, handles)
% hObject    handle to I (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ps_Callback(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ps as text
%        str2double(get(hObject,'String')) returns contents of ps as a double

global ps
ps = str2double(get(hObject,'String'));

% --- Executes during object creation, after setting all properties.
function ps_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ps (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Calcular_Tg.
function Calcular_Tg_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_Tg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Datos de orbita

global h;
global theta_m;
global Iz;
global Iy;

global Tg;
carga_variables(handles);


%Datos de satelite


%Comprobamos que son datos numericos
if isnan(h)
errordlg('El valor debe ser numérico','ERROR')
set(handles.h,'String',0);
h=0;
return;
end
if isnan(theta_m)
errordlg('El valor debe ser numérico','ERROR')
set(handles.theta_m,'String',0);
theta_m=0;
return;
end
if isnan(Iz)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Iz,'String',0);
Iz=0;
return;
end
if isnan(Iy)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Iy,'String',0);
Iy=0;
return;
end


%Calculamos las perturbaciones
Tg=grad_grav(h,theta_m,Iz,Iy);


%Las mostramos en pantalla
set(handles.Tg,'String',Tg);
guidata(hObject, handles);

% --- Executes on button press in calcular_Ta.
function calcular_Ta_Callback(hObject, eventdata, handles)

% hObject    handle to calcular_Ta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Datos de orbita
global h;
global v;

%Datos de satelite
global A;
global Cd;
global Cpa;
global cg;
global Ta;
carga_variables(handles);



%Comprobamos que son datos numericos
if isnan(h)
errordlg('El valor debe ser numérico','ERROR')
set(handles.h,'String',0);
h=0;
return;
end
if isnan(v)
errordlg('El valor debe ser numérico','ERROR')
set(handles.v,'String',0);
v=0;
return;
end
if isnan(A)
errordlg('El valor debe ser numérico','ERROR')
set(handles.A,'String',0);
A=0;
return;
end
if isnan(Cd)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Cd,'String',0);
Cd=0;
return;
end
if isnan(Cpa)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Cpa,'String',0);
Cpa=0;
return;
end
if isnan(cg)
errordlg('El valor debe ser numérico','ERROR')
set(handles.cg,'String',0);
cg=0;
return;
end



%Calculamos perturbacion
Ta=aerodinamica(h,v,A,Cd,Cpa,cg);
%Mostramos en pantalla
set(handles.Ta,'String',Ta);
guidata(hObject, handles);


% --- Executes on button press in calcular_Tm.
function calcular_Tm_Callback(hObject, eventdata, handles)
% hObject    handle to calcular_Tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Datos de orbita
global h;
global M1;
%Datos planta potencia
global D1;

global Tm;
carga_variables(handles);



%Comprobamos que son datos numericos
if isnan(h)
errordlg('El valor debe ser numérico','ERROR')
set(handles.h,'String',0);
h=0;
return;
end
if isnan(M1)
errordlg('El valor debe ser numérico','ERROR')
set(handles.M1,'String',0);
M1=0;
return;
end
if isnan(D1)
errordlg('El valor debe ser numérico','ERROR')
set(handles.D1,'String',0);
D=0;
return;
end

%Calcular perturbacion
Tm =mag_field(h,D1,M1);
%Mostramos en pantalla
set(handles.Tm,'String',Tm);
guidata(hObject, handles);

% --- Executes on button press in calcular_Tsp.
function calcular_Tsp_Callback(hObject, eventdata, handles)
% hObject    handle to calcular_Tsp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Datos de orbita

global i;
global cs;

%Datos de satelite
global A;
global cg;
global q;

global Tsp;

carga_variables(handles);



%Comprobamos que los datos son numericos
if isnan(i)
errordlg('El valor debe ser numérico','ERROR')
set(handles.I,'String',0);
i=0;
return;
end
if isnan(cs)
errordlg('El valor debe ser numérico','ERROR')
set(handles.ps,'String',0);
cs=0;
return;
end
if isnan(A)
errordlg('El valor debe ser numérico','ERROR')
set(handles.A,'String',0);
A=0;
return;
end
if isnan(cg)
errordlg('El valor debe ser numérico','ERROR')
set(handles.cg,'String',0);
cg=0;
return;
end
if isnan(q)
errordlg('El valor debe ser numérico','ERROR')
set(handles.q,'String',0);
q=0;
return;
end


%Calculamos perturbacion
Tsp=solar_rad(i,A,cg,cs,q);
%Mostramos en pantalla
set(handles.Tsp,'String',Tsp);
guidata(hObject, handles);

% --- Executes on button press in calcular_Td.
function calcular_Td_Callback(hObject, eventdata, handles)
% hObject    handle to calcular_Td (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global Ta;
global Tm;
global Tsp;
global Tg;

global Td;

%Ta= str2double(get(handles.Ta, 'String'));
%Tm= str2double(get(handles.Tm, 'String'));
%Tsp= str2double(get(handles.Tsp, 'String'));
%Tg= str2double(get(handles.Tg, 'String'));

%Comprobamos que son datos numericos
if isnan(Ta)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Ta,'String',0);
Ta=0;
return;
end
if isnan(Tm)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Tm,'String',0);
Tm=0;
return;
end
if isnan(Tsp)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Tsp,'String',0);
Tsp=0;
return;
end
if isnan(Tg)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Tg,'String',0);
Tg=0;
return;
end

%Calculamos perturbacion total
Td = Ta + Tg + Tm +Tsp;
%Mostramos en pantalla

set(handles.Td,'String',Td);
guidata(hObject, handles);

%Activamos el boton
set(handles.g_RW_MW_MT,'Enable','on');

save Perturbaciones.mat;

%close Perturbaciones;
%Actuadores;

function carga_variables(handles)

global h;
global theta_m;
global v;
global M1;
global i;
global cs;
global D1;
global Iz;
global Iy;
global A;
global Cd;
global Cpa;
global cg;
global q;

h = str2double(get(handles.h, 'String'))
theta_m = str2double(get(handles.theta_m, 'String')); 
v = str2double(get(handles.v, 'String')); 
M1 = str2double(get(handles.M1, 'String')); 
i = str2double(get(handles.I, 'String')); 
cs = str2double(get(handles.ps, 'String')); 
D1 = str2double(get(handles.D1, 'String')); 
Iz = str2double(get(handles.Iz, 'String')); 
Iy = str2double(get(handles.Iy, 'String')); 
A = str2double(get(handles.A, 'String')); 
Cd = str2double(get(handles.Cd, 'String')); 
Cpa = str2double(get(handles.Cpa, 'String')); 
cg = str2double(get(handles.cg, 'String')); 
q = str2double(get(handles.q, 'String')); 

function recupera_variables(handles)

global h;
global theta_m;
global v;
global M1;
global i;
global cs;
global D1;
global Iz;
global Iy;
global A;
global Cd;
global Cpa;
global cg;
global q;

set(handles.h, 'String',h); 
set(handles.theta_m, 'String',theta_m); 
set(handles.v, 'String',v); 
set(handles.M1, 'String',M1); 
set(handles.I, 'String',i); 
set(handles.ps, 'String',cs); 
set(handles.D1, 'String',D1); 
set(handles.Iz, 'String',Iz); 
set(handles.Iy, 'String',Iy); 
set(handles.A, 'String',A); 
set(handles.Cd, 'String',Cd); 
set(handles.Cpa, 'String',Cpa); 
set(handles.cg, 'String',cg); 
set(handles.q, 'String',q); 


% --- Executes on button press in g_Actuadores.
function g_Actuadores_Callback(hObject, eventdata, handles)
% hObject    handle to g_Actuadores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear handles;
save Perturbaciones.mat;
close Perturbaciones;
Actuadores;


% --- Executes on button press in g_RW_MW_MT.
function g_RW_MW_MT_Callback(hObject, eventdata, handles)
% hObject    handle to g_RW_MW_MT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global export_param
Tg       = str2double(get(handles.Tg, 'String')); 
Ta      = str2double(get(handles.Ta, 'String')); 
Tm     = str2double(get(handles.Tm, 'String')); 
Tsp      = str2double(get(handles.Tsp, 'String')); 
Td       = str2double(get(handles.Td, 'String'));

export_param = [ Tg ; Ta ; Tm ; Tsp ; Td ];
clear handles;
save Perturbaciones.mat;
close Perturbaciones;
RW_MW_MT;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in leer_datos.
function leer_datos_Callback(hObject, eventdata, handles)
% hObject    handle to leer_datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%Lectura de parámetros de la base de datos
parametros_DB = leer_datos_DB(ID_modulo);

%LECTURA DE PARAMETROS LOCALES Y MUESTRA EN TABLA COMPARATIVA
%Vector de parametros locales de salida leidos
load('Perturbaciones.mat');
params_loc_out = [Ta;Td;Tg;Tm;Tsp];
%Vector de parametros locales de entrada leidos
params_loc_in = [h;theta_m;v;M1;i;cs;D1;Iz;Iy;A;Cd;Cpa;cg;q];
%Todos los parametros locales
params_loc = [params_loc_out;params_loc_in];
%%Matriz de parametros locales vs. parametros de DB
PARAMETROS = [params_loc,parametros_DB];
%Asigna nombres a filas de la tabla de datos (Nombres de parámetros)
set(handles.DATOS,'RowNames',nombresparametros);
%Muestra tabla de datos locales enfrentados con los leidos de la DB
set(handles.DATOS,'Data',PARAMETROS);
%Habilita para poder escribir en DB
set(handles.enviar_datos,'Enable',on);
set(handles.importar_datos,'Enable',on);

% --- Executes on button press in enviar_datos.
function enviar_datos_Callback(hObject, eventdata, handles)
% hObject    handle to enviar_datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h       = str2double(get(handles.h, 'String')); 
theta_m = str2double(get(handles.theta_m, 'String')); 
v       = str2double(get(handles.v, 'String')); 
M1      = str2double(get(handles.M1, 'String')); 
i       = str2double(get(handles.I, 'String')); 
cs      = str2double(get(handles.ps, 'String')); 
D1      = str2double(get(handles.D1, 'String')); 
Iz      = str2double(get(handles.Iz, 'String')); 
Iy      = str2double(get(handles.Iy, 'String')); 
A       = str2double(get(handles.A, 'String')); 
Cd      = str2double(get(handles.Cd, 'String')); 
Cpa     = str2double(get(handles.Cpa, 'String')); 
cg      = str2double(get(handles.cg, 'String')); 
q       = str2double(get(handles.q, 'String'));
Tg       = str2double(get(handles.Tg, 'String')); 
Ta      = str2double(get(handles.Ta, 'String')); 
Tm     = str2double(get(handles.Tm, 'String')); 
Tsp      = str2double(get(handles.Tsp, 'String')); 
Td       = str2double(get(handles.Td, 'String'));

global data
export_param = [Tg ; Ta ; Tm ; Tsp ; Td]
update_module_parameters(data(15:19,5),export_param)
%BASE PARA LEER PARAMETROS DE LA DB Y TRAERLOS A CADA MODULO (o SUB-MODULO)

% %Define elementos (nombre del grupo de parametros) a ser leidos
% elementos = ['Datos orbita' 'Datos satelite' 'Datos planta de potencia' 'Perturbaciones'];
% %Define parametros a ser leidos
% parametros = ['altura' 'maxima desviacion vertical' 'velocidad orbita'...
%               'factor campo magnetico terrestre' 'inclinacion solar' 'centro de presion solar'...
%               'dipolo magnetico' 'momento de inercia Iz' 'momento de inercia minimo' 'area frontal'...
%               'coeficiente eficiencia aerodinamica' 'centro de presiones aerodinamico'...
%               'centro de masas satelite' 'reflexion de la superficie del satelite'...
%               'para gradiente gravedad' 'par resistencia aerodinamica' 'par campo magnetico'...
%               'par presion solar' 'par total'];
% %Número de parámetros por cada elemento
% num = [6 7 1 5];
% 
% %LEER PARAMETROS LOCALES Y MOSTRARLOS EN TABLA COMPARATIVA
% %Vector de parametros locales de salida leidos
% load('Perturbaciones.mat');
% params_loc_out = [Tg;Ta;Tm;Tsp;Td];
% %Vector de parametros locales de entrada leidos 
% params_loc_in = [h;theta_m;v;M1;i;cs;D1;Iz;Iy;A;Cd;Cpa;cg;q];
% %Todos los parametros locales
% params_loc = [params_loc_out;params_loc_in];
% %Envia parametros locales a la base de datos
% estado = enviar_datos_DB(elementos,parametros,num,params_loc);
% %%Matriz de parametros locales vs. parametros de DB
% PARAMETROS = [params_loc,parametros_DB];
% %Muestra tabla de datos locales enfrentados con los leidos
% set(handles.DATOS,'Data',PARAMETROS);
% %Habilita para poder escribir en DB
% set(handles.enviar_datos,'Enable',off);


% --- Executes on button press in importar_datos.
function importar_datos_Callback(hObject, eventdata, handles)
% hObject    handle to importar_datos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%ACTUALIZA LOS DATOS DE LA DB MOSTRADOS EN EL MODULO PARA SU IMPORTACION

%Define elementos (nombre del grupo de parametros) a ser leidos
elementos = ['Datos orbita' 'Datos satelite' 'Datos planta de potencia' 'Perturbaciones'];
%Define parametros a ser leidos
parametros = ['altura' 'maxima desviacion vertical' 'velocidad orbita'...
              'factor campo magnetico terrestre' 'inclinacion solar' 'centro de presion solar'...
              'dipolo magnetico' 'momento de inercia Iz' 'momento de inercia minimo' 'area frontal'...
              'coeficiente eficiencia aerodinamica' 'centro de presiones aerodinamico'...
              'centro de masas satelite' 'reflexion de la superficie del satelite'...
              'para gradiente gravedad' 'par resistencia aerodinamica' 'par campo magnetico'...
              'par presion solar' 'par total'];
          
parametros_entrada = {'altura' 'maxima desviacion vertical' 'velocidad orbita'...
        'factor campo magnetico terrestre' 'inclinacion solar' 'centro de presion solar'...
        'dipolo magnetico' 'momento de inercia Iz' 'momento de inercia minimo' 'area frontal'...
        'coeficiente eficiencia aerodinamica' 'centro de presiones aerodinamico'...
        'centro de masas satelite' 'reflexion de la superficie del satelite'}';
          
    parametros_salida = {'par gradiente gravedad' 'par resistencia aerodinamica' 'par campo magnetico'...
        'par presion solar' 'par total' 'par para contrarrestar perturbación' 'par de maniobra de rueda de reacción' 'par magnetopares (dipolo)'...
        'momento almacenado rueda de reacción' 'momento almacenado rueda de inercia' 'momento almacenado spinner'...
        'fuerza para contrarrestar perturbaciones' 'fuerza para maniobras' 'fuerza para amortiguar momento' 'fuerza de momento cero' 'masa propulsante' 'tiempo de vida del propulsor'}';
    unidades_entrada = {'km' 'º' 'm/s' ' ' 'º' 'm' ' ' 'kg·m^2' 'kg·m^2'...
        'm^2' ' ' 'm' 'm' ' '}';    
    unidades_salida = {'N·m' 'N·m' 'N·m' 'N·m' 'N·m'...
        'N·m' 'N·m' 'N·m' 'N·m' 'N·m' 'N·m' ...
        'N' 'N' 'N' 'N' 'kg' 'pulsos'}';
%Número de parámetros por cada elemento
num = [6 7 1 5];
%Lee parametros de la base de datos
CDA_interface = import_CDA(parametros_entrada,unidades_entrada, parametros_salida, unidades_salida);%----------------------------------------------------


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data


%Define elementos (nombre del grupo de parametros) a ser leidos
elementos = {'Datos orbita' 'Datos satelite' 'Datos planta de potencia' 'Perturbaciones'};
%Define parametros a ser leidos
parametros = {'altura' 'maxima desviacion vertical' 'velocidad orbita'...
              'factor campo magnetico terrestre' 'inclinacion solar' 'centro de presion solar'...
              'dipolo magnetico' 'momento de inercia Iz' 'momento de inercia minimo' 'area frontal'...
              'coeficiente eficiencia aerodinamica' 'centro de presiones aerodinamico'...
              'centro de masas satelite' 'reflexion de la superficie del satelite'...
              'para gradiente gravedad' 'par resistencia aerodinamica' 'par campo magnetico'...
              'par presion solar' 'par total'};
          
parametros_entrada = {'altura' 'maxima desviacion vertical' 'velocidad orbita'...
        'factor campo magnetico terrestre' 'inclinacion solar' 'centro de presion solar'...
        'dipolo magnetico' 'momento de inercia Iz' 'momento de inercia minimo' 'area frontal'...
        'coeficiente eficiencia aerodinamica' 'centro de presiones aerodinamico'...
        'centro de masas satelite' 'reflexion de la superficie del satelite'}';
          
unidades_entrada = {'km' 'º' 'm/s' ' ' 'º' 'm' ' ' 'kg·m^2' 'kg·m^2'...
        'm^2' ' ' 'm' 'm' ' '}';    
%Número de parámetros por cada elemento
num = [6 7 1 5];
%parametros_DB = CDA_interface
PARAMETROS = zeros(length(parametros),2); %%%%parametros
%Asigna datos actualizados
%data(:,7)
for i = 1:length(PARAMETROS(:,1))
% varvalue = select_variable(data(i,5));
PARAMETROS(i,2) = data(i,8);
end
TABLA = [convertStringsToChars(data(:,6)) convertStringsToChars(data(:,8))];
%Asigna datos de parametros de la DB a los locales
PARAMETROS(:,1) = PARAMETROS(:,2);
%Muestra tabla de datos actualizada con los datos importados
set(handles.DATOS,'Data',TABLA);
%Escribe datos en los campos correspondientes
set(handles.h, 'String',PARAMETROS(1,2)); 
set(handles.theta_m, 'String',PARAMETROS(2,2)); 
set(handles.v, 'String',PARAMETROS(3,2)); 
set(handles.M1, 'String',PARAMETROS(4,2)); 
set(handles.I, 'String',PARAMETROS(5,2)); 
set(handles.ps, 'String',PARAMETROS(6,2)); 
set(handles.D1, 'String',PARAMETROS(7,2)); 
set(handles.Iz, 'String',PARAMETROS(8,2)); 
set(handles.Iy, 'String',PARAMETROS(9,2)); 
set(handles.A, 'String', PARAMETROS(10,2)); %PARAMETROS(15,2)
set(handles.Cd, 'String',PARAMETROS(11,2)); 
set(handles.Cpa, 'String',PARAMETROS(12,2)); 
set(handles.cg, 'String',PARAMETROS(13,2)); 
set(handles.q, 'String',PARAMETROS(14,2)); 
set(handles.Tg,'String',PARAMETROS(15,2));
set(handles.Ta,'String',PARAMETROS(16,2));
set(handles.Tm,'String',PARAMETROS(17,2));
set(handles.Tsp,'String',PARAMETROS(18,2));
set(handles.Td,'String',PARAMETROS(19,2));
%Inhabilita el botón importar hasta que no se comprueben nuevamente los
%datos con el botón de comparación
set(handles.enviar_datos,'Enable','on');
