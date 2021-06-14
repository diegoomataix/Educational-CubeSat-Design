function varargout = RW_MW_MT(varargin)
% RW_MW_MT MATLAB code for RW_MW_MT.fig
%      RW_MW_MT, by itself, creates a new RW_MW_MT or raises the existing
%      singleton*.
%
%      H = RW_MW_MT returns the handle to a new RW_MW_MT or the handle to
%      the existing singleton*.
%
%      RW_MW_MT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RW_MW_MT.M with the given input arguments.
%
%      RW_MW_MT('Property','Value',...) creates a new RW_MW_MT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RW_MW_MT_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RW_MW_MT_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RW_MW_MT

% Last Modified by GUIDE v2.5 13-Mar-2014 22:59:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RW_MW_MT_OpeningFcn, ...
                   'gui_OutputFcn',  @RW_MW_MT_OutputFcn, ...
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


% --- Executes just before RW_MW_MT is made visible.
function RW_MW_MT_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RW_MW_MT (see VARARGIN)

% Choose default command line output for RW_MW_MT
handles.output = hObject;
recupera_variables(handles)

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RW_MW_MT wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RW_MW_MT_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in Calcular_pares.
function Calcular_pares_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_pares (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%variables(handles);

%-----------------------------
%Par de rechazo de perturbacion
%------------------------------
%Datos
global MS;
global Td;
global TRW;
global TDS;
global theta_m;
global Iz;
global tm;
global P;
global h;
global A;
global D;
global export_param;

carga_variables(handles)

%Comprobamos que son datos numericos
if isnan(MS)
errordlg('El valor debe ser numérico','ERROR')
set(handles.MS,'String',0);
MS=0;
return;
end

%Calculamos el par
TDS=rechazo_perturbacion(MS,Td);

%Las mostramos en pantalla
set(handles.TDS,'String',TDS);
guidata(hObject, handles);

%-----------------------------
%Par de maniobra rueda de reaccción RW
%------------------------------
%Datos
%carga_variables(handles)

%Comprobamos que son datos numericos
if isnan(theta_m)
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.theta_m,'String',0);
    theta_m=0;
    return;
end
if isnan(tm)
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.tm,'String',0);
    tm=0;
    return;
end
if isnan(P)
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.P,'String',0);
    P=0;
    return;
end

%Calculamos el par
[TRW hRW]=rueda_reaccion(TDS,theta_m,Iz,tm,P);



%Las mostramos en pantalla
set(handles.TRW,'String',TRW);
guidata(hObject, handles);

%-----------------------------
%Par de magnetopares.¡¡¡¡¡Ver si esta D2 es la misma de
%perturbaciones!!!!!!¿?¿?¿?
%------------------------------
%Datos
%carga_variables(handles)

%Calculamos el par
[D Ic]=magnetopar(h,TDS,A);


%Las mostramos en pantalla
set(handles.D2,'String',D);
guidata(hObject, handles);







% --- Executes on button press in Calcular_momentos_almacenamiento.
function Calcular_momentos_almacenamiento_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_momentos_almacenamiento (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%variables(handles);
%-----------------------------
% Momento almacenado rueda de reacción RW
%------------------------------
%Datos
global tm;
global P;
global TRW;
global theta_a;
global hMW;
global theta_m,
global Iz;
global hRW;
global omega_s;
global TDS;


carga_variables(handles);


%Comprobamos que son datos numericos
if isnan(P)
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.P,'String',0);
    P=0;
    return;
end


%Calculamos el par
[TRW hRW]=rueda_reaccion(TDS,theta_m,Iz,tm,P);



%Las mostramos en pantalla
set(handles.hRW,'String',hRW);
guidata(hObject, handles);
%-----------------------------
% Momento almacenado rueda de inercia MW
%------------------------------
%Datos




%Comprobamos que son datos numericos
if isnan(theta_a)
    errordlg('El valor debe ser numérico','ERROR')
    set(handles.theta_a,'String',0);
    theta_a=0;
    return;
end


%Calculamos el par
hMW=rueda_inercia(hRW,theta_a);


%Las mostramos en pantalla
set(handles.hMW,'String',hMW);
guidata(hObject, handles);

%-----------------------------
% Momento almacenado spinner
%------------------------------
%Datos

%carga_variables(handles);


%Calculamos el par
omega_s=momento_almacenado_spin(hMW,Iz);


%Las mostramos en pantalla
set(handles.omega_s,'String',omega_s);


%Habilitamos el boton de propulsores
set(handles.g_Propulsores,'Enable','on');

guidata(hObject, handles);






function hRW_Callback(hObject, eventdata, handles)
% hObject    handle to hRW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hRW as text
%        str2double(get(hObject,'String')) returns contents of hRW as a double


% --- Executes during object creation, after setting all properties.
function hRW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hRW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hMW_Callback(hObject, eventdata, handles)
% hObject    handle to hMW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hMW as text
%        str2double(get(hObject,'String')) returns contents of hMW as a double


% --- Executes during object creation, after setting all properties.
function hMW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hMW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function omega_s_Callback(hObject, eventdata, handles)
% hObject    handle to omega_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of omega_s as text
%        str2double(get(hObject,'String')) returns contents of omega_s as a double


% --- Executes during object creation, after setting all properties.
function omega_s_CreateFcn(hObject, eventdata, handles)
% hObject    handle to omega_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TDS_Callback(hObject, eventdata, handles)
% hObject    handle to TDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TDS as text
%        str2double(get(hObject,'String')) returns contents of TDS as a double


% --- Executes during object creation, after setting all properties.
function TDS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TDS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function TRW_Callback(hObject, eventdata, handles)
% hObject    handle to TRW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TRW as text
%        str2double(get(hObject,'String')) returns contents of TRW as a double


% --- Executes during object creation, after setting all properties.
function TRW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TRW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D2_Callback(hObject, eventdata, handles)
% hObject    handle to D2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D2 as text
%        str2double(get(hObject,'String')) returns contents of D2 as a double


% --- Executes during object creation, after setting all properties.
function D2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MS_Callback(hObject, eventdata, handles)
% hObject    handle to MS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global MS;
global Td;
global TDS;
%Calculamos el par

MS = str2double(get(hObject,'String'));
if ~isnan(MS)
    TDS=rechazo_perturbacion(MS,Td);

    %Las mostramos en pantalla
    set(handles.TDS,'String',sprintf('%5.3E',TDS));
end
guidata(hObject, handles);


% Hints: get(hObject,'String') returns contents of MS as text
%        str2double(get(hObject,'String')) returns contents of MS as a double


% --- Executes during object creation, after setting all properties.
function MS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function theta_m_Callback(~, eventdata, handles)
% hObject    handle to theta_m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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



function theta_a_Callback(hObject, eventdata, handles)
% hObject    handle to theta_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta_a as text
%        str2double(get(hObject,'String')) returns contents of theta_a as a double


% --- Executes during object creation, after setting all properties.
function theta_a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double


% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tm_Callback(hObject, eventdata, handles)
% hObject    handle to tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tm as text
%        str2double(get(hObject,'String')) returns contents of tm as a double


% --- Executes during object creation, after setting all properties.
function tm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function recupera_variables(handles)
global MS
global theta_m
global tm
global P;
global theta_a;

global TDS;
global Td;
global TRW;
global D2;

global hRW;
global hMW;
global omega_s;


set(handles.MS,'String',MS);
set(handles.theta_m,'String',theta_m);
set(handles.tm,'String',tm);
set(handles.P,'String',P);
set(handles.theta_a,'String',theta_a);


%set(handles.TDS,'String',TDS);
set(handles.Td,'String',sprintf('%5.3E',Td));
%set(handles.TRW,'String',TRW);
%set(handles.D2,'String',D2);


%set(handles.hRW,'String',hRW);
%set(handles.hMW,'String',hMW);
%set(handles.omega_s,'String',omega_s);

function carga_variables(handles)
global tm;
global P
global theta_a

tm = str2double(get(handles.tm,'String'));
P = str2double(get(handles.P,'String'));
theta_a = str2double(get(handles.theta_a,'String'));


% --- Executes on button press in g_Propulsores.
function g_Propulsores_Callback(hObject, eventdata, handles)
% hObject    handle to g_Propulsores (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear handles;
save RW_MWMT.mat;
close RW_MW_MT;
Propulsores;
