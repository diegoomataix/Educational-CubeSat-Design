function varargout = Propulsores(varargin)
% PROPULSORES MATLAB code for Propulsores.fig
%      PROPULSORES, by itself, creates a new PROPULSORES or raises the existing
%      singleton*.
%
%      H = PROPULSORES returns the handle to a new PROPULSORES or the handle to
%      the existing singleton*.
%
%      PROPULSORES('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROPULSORES.M with the given input arguments.
%
%      PROPULSORES('Property','Value',...) creates a new PROPULSORES or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Propulsores_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Propulsores_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Propulsores

% Last Modified by GUIDE v2.5 10-Jul-2020 12:24:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Propulsores_OpeningFcn, ...
                   'gui_OutputFcn',  @Propulsores_OutputFcn, ...
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


% --- Executes just before Propulsores is made visible.
function Propulsores_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Propulsores (see VARARGIN)

% Choose default command line output for Propulsores
handles.output = hObject;
%load RW_MW_MT.mat
%recupera_variables(handles);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Propulsores wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Propulsores_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Calcular_fuerzas.
function Calcular_fuerzas_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_fuerzas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%---------------------------------------
%Fuerza para contrarrestar perturbaciones
%---------------------------------------
%Datos
global L;
global TDS;
global Fd;
global Fs;
global Fmd;

global theta_m;
global tm;
global t_ac;
global Iz;

global hMW;
global tb;
global d;
global ts;


%global Td;

global Fzm;

carga_variables(handles)

%Comprobamos que son datos numericos
if isempty(L) || L < eps
errordlg('El valor debe ser positivo','ERROR')
set(handles.L,'String',0);
L=0;
return;
end

%Calculamos el par
Fd=thruster_disturbances(TDS,L);

%Las mostramos en pantalla
set(handles.Fd,'String',Fd);
guidata(hObject, handles);

%-----------------------------
%Fuerza para maniobras
%------------------------------
%Datos


%Comprobamos que son datos numericos
if isempty(ts) || ts<eps
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.ts,'String',0);
    ts=5;
    return;
end

if isempty(t_ac) || t_ac<eps
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.t_ac,'String',0);
    t_ac=0;
    return;
end

%Calculamos la fuerza
Fzm=m0(Iz,theta_m,ts,L,t_ac);



%Las mostramos en pantalla
set(handles.Fzm,'String',Fzm);
guidata(hObject, handles);

%-----------------------------
%Fuerza para amortiguar momento 
%------------------------------
%Datos



%Comprobamos que son datos numericos
if isempty(tb) || tb< eps
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.tb,'String',0);
    tb=0;
    return;
end



%Calculamos el par
Fmd=momentum_damping(hMW,L,tb);



%Las mostramos en pantalla
set(handles.Fmd,'String',Fmd);
guidata(hObject, handles);

%---------------------------------------
%Fuerza para maniobras con momento de polarización  !!!!!!!Acabar no esta
%finalizado!!!!!!!!!
%---------------------------------------
%Datos




%Comprobamos que son datos numericos
if isempty(tm) || tm < eps
errordlg('El valor debe ser positivo','ERROR')
set(handles.tm,'String',0);
tm=0;
return;
end

if isempty(d) || d<eps
errordlg('El valor debe ser positivo','ERROR')
set(handles.d,'String',0);
d=0;
return;
end


%Calculamos la fuerza
Fs=mb(hMW,L,theta_m,tm,d);

%Las mostramos en pantalla
set(handles.Fs,'String',Fs);


%Activamos el otro botón
set(handles.Calcular_otros_resultados,'Enable','on')

guidata(hObject, handles);



% --- Executes on button press in Calcular_otros_resultados.
function Calcular_otros_resultados_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_otros_resultados (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global sPMG
global sPAM
global na
global va1
global va2
global Mp
global Pulsos
global Fs
global Fmd
global Isp

carga_variables(handles)

if  isempty(va1)
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.va1,'String',0);
    va1=0;
    return;
end

if  isempty(va2)
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.va2,'String',0);
    va2=0;
    return;
end

if  isempty(na)
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.na,'String',0);
    na=0;
    return;
end

if  isempty(sPMG)
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.sPMG,'String',0);
    sPMG=0;
    return;
end
if  isempty(sPAM)
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.sPAM,'String',0);
    sPAM=0;
    return;
end

if  isempty(Isp) || Isp <eps
    errordlg('El valor debe ser positivo','ERROR')
    set(handles.Isp,'String',0);
    Isp=eps;
    return;
end

a = va1*na;
b = va2*na;

Pulsos = a + b;
set(handles.Pulsos,'String',Pulsos);
 impulso = a*sPMG*Fs +b*sPAM*Fmd;
 
 Mp = impulso/(Isp*9.8);
 set(handles.Mp,'String',Mp);
 
 guidata(hObject, handles);


function Mp_Callback(hObject, eventdata, handles)
% hObject    handle to Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mp as text
%        str2double(get(hObject,'String')) returns contents of Mp as a double


% --- Executes during object creation, after setting all properties.
function Mp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Pulsos_Callback(hObject, eventdata, handles)
% hObject    handle to Pulsos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Pulsos as text
%        str2double(get(hObject,'String')) returns contents of Pulsos as a double


% --- Executes during object creation, after setting all properties.
function Pulsos_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Pulsos (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fd_Callback(hObject, eventdata, handles)
% hObject    handle to Fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fd as text
%        str2double(get(hObject,'String')) returns contents of Fd as a double


% --- Executes during object creation, after setting all properties.
function Fd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fs_Callback(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fs as text
%        str2double(get(hObject,'String')) returns contents of Fs as a double


% --- Executes during object creation, after setting all properties.
function Fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fmd_Callback(hObject, eventdata, handles)
% hObject    handle to Fmd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fmd as text
%        str2double(get(hObject,'String')) returns contents of Fmd as a double


% --- Executes during object creation, after setting all properties.
function Fmd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fmd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function L_Callback(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of L as text
%        str2double(get(hObject,'String')) returns contents of L as a double


% --- Executes during object creation, after setting all properties.
function L_CreateFcn(hObject, eventdata, handles)
% hObject    handle to L (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function t_ac_Callback(hObject, eventdata, handles)
% hObject    handle to t_ac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_ac as text
%        str2double(get(hObject,'String')) returns contents of t_ac as a double


% --- Executes during object creation, after setting all properties.
function t_ac_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_ac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sPMG_Callback(hObject, eventdata, handles)
% hObject    handle to sPMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sPMG as text
%        str2double(get(hObject,'String')) returns contents of sPMG as a double


% --- Executes during object creation, after setting all properties.
function sPMG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sPMG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sPAM_Callback(hObject, eventdata, handles)
% hObject    handle to sPAM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sPAM as text
%        str2double(get(hObject,'String')) returns contents of sPAM as a double


% --- Executes during object creation, after setting all properties.
function sPAM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sPAM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tb_Callback(hObject, eventdata, handles)
% hObject    handle to tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tb as text
%        str2double(get(hObject,'String')) returns contents of tb as a double


% --- Executes during object creation, after setting all properties.
function tb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
   set(hObject,'BackgroundColor','white');
end



function Isp_Callback(hObject, eventdata, handles)
% hObject    handle to Isp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Isp as text
%        str2double(get(hObject,'String')) returns contents of Isp as a double


% --- Executes during object creation, after setting all properties.
function Isp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Isp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function na_Callback(hObject, eventdata, handles)
% hObject    handle to na (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of na as text
%        str2double(get(hObject,'String')) returns contents of na as a double


% --- Executes during object creation, after setting all properties.
function na_CreateFcn(hObject, eventdata, handles)
% hObject    handle to na (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function va1_Callback(hObject, eventdata, handles)
% hObject    handle to va1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of va1 as text
%        str2double(get(hObject,'String')) returns contents of va1 as a double


% --- Executes during object creation, after setting all properties.
function va1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to va1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function va2_Callback(hObject, eventdata, handles)
% hObject    handle to va2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of va2 as text
%        str2double(get(hObject,'String')) returns contents of va2 as a double


% --- Executes during object creation, after setting all properties.
function va2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to va2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function ts_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function carga_variables(handles)
global L
global t_ac
global tb
global Isp
global ts
global d

global sPMG
global sPAM
global na
global va1
global va2


L = str2num(get(handles.L,'String'));
t_ac = str2num(get(handles.t_ac,'String'));

tb = str2num(get(handles.tb,'String'));
Isp = str2num(get(handles.Isp,'String'));
ts = str2num(get(handles.ts,'String'));
d = str2num(get(handles.d,'String'));
sPMG = str2num(get(handles.sPMG,'String'));
sPAM = str2num(get(handles.sPAM,'String'));

na = str2num(get(handles.na,'String'));
va1 = str2num(get(handles.va1,'String'));
va2 = str2num(get(handles.va2,'String'));

function recupera_variables(handles)
global TDS;
global theta_m
global tm
global P
global theta_a

global TRW
global D2
global hRW
global hMW
global omega_s


% --- Executes during object creation, after setting all properties.
function d_CreateFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function d_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function d_Callback(hObject, eventdata, handles)
% hObject    handle to d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of d as text
%        str2double(get(hObject,'String')) returns contents of d as a double



function Fzm_Callback(hObject, eventdata, handles)
% hObject    handle to Fzm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fzm as text
%        str2double(get(hObject,'String')) returns contents of Fzm as a double


% --- Executes during object creation, after setting all properties.
function Fzm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fzm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ts_Callback(hObject, eventdata, handles)
% hObject    handle to ts (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ts as text
%        str2double(get(hObject,'String')) returns contents of ts as a double


% --- Executes on button press in export.
function export_Callback(hObject, eventdata, handles)
% hObject    handle to export (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global data Tg Ta  Tm  Tsp Td  TDS  TRW  D  hRW  hMW  omega_s  Fd  Fs  Fmd  Fzm  Mp  Pulsos

data(15:31,8) = [Tg ; Ta ; Tm ; Tsp ; Td ; TDS ; TRW ; D ; hRW ; hMW ; omega_s ; Fd ; Fs ; Fmd ; Fzm ; Mp ; Pulsos];





TABLA = [convertStringsToChars(data(15:end,6)) convertStringsToChars(data(15:end,8))];


set(handles.uitable1,'Data',TABLA);




export_param = [Tg ; Ta ; Tm ; Tsp ; Td];
update_module_parameters(data(15:end,5),data(15:end,8))
