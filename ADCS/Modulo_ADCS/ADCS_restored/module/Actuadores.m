function varargout = Actuadores(varargin)
% RESULTADOS MATLAB code for Resultados.fig
%      RESULTADOS, by itself, creates a new RESULTADOS or raises the existing
%      singleton*.
%
%      H = RESULTADOS returns the handle to a new RESULTADOS or the handle to
%      the existing singleton*.
%
%      RESULTADOS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESULTADOS.M with the given input arguments.
%
%      RESULTADOS('Property','Value',...) creates a new RESULTADOS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Perturbaciones_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Perturbaciones_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Resultados

% Last Modified by GUIDE v2.5 06-Mar-2014 00:46:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Actuadores_OpeningFcn, ...
                   'gui_OutputFcn',  @Actuadores_OutputFcn, ...
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


% --- Executes just before Resultados is made visible.
function Actuadores_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Resultados (see VARARGIN)

% Choose default command line output for Resultados
handles.output = hObject;
carga_variables(handles);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Resultados wait for user response (see UIRESUME)
% uiwait(handles.Cuadro);


% --- Outputs from this function are returned to the command line.
function varargout = Actuadores_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double

 


% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
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




function tdes_Callback(hObject, eventdata, handles)
% hObject    handle to tdes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tdes as text
%        str2double(get(hObject,'String')) returns contents of tdes as a double


% --- Executes during object creation, after setting all properties.
function tdes_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tdes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hrw_Callback(hObject, eventdata, handles)
% hObject    handle to hrw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hrw as text
%        str2double(get(hObject,'String')) returns contents of hrw as a double


% --- Executes during object creation, after setting all properties.
function hrw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hrw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hmw_Callback(hObject, eventdata, handles)
% hObject    handle to hmw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hmw as text
%        str2double(get(hObject,'String')) returns contents of hmw as a double


% --- Executes during object creation, after setting all properties.
function hmw_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hmw (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ws_Callback(hObject, eventdata, handles)
% hObject    handle to ws (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ws as text
%        str2double(get(hObject,'String')) returns contents of ws as a double


% --- Executes during object creation, after setting all properties.
function ws_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ws (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Td_Callback(hObject, eventdata, handles)
% hObject    handle to tdes (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tdes as text
%        str2double(get(hObject,'String')) returns contents of tdes as a double


% --- Executes during object creation, after setting all properties.
function Td_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tdes (see GCBO)
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



function theta_Callback(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of theta as text
%        str2double(get(hObject,'String')) returns contents of theta as a double


% --- Executes during object creation, after setting all properties.
function theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta (see GCBO)
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




% --- Executes on button press in Calcular_1.
function Calcular_1_Callback(hObject, eventdata, handles)
% hObject    handle to Calcular_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Datos de orbita

variables(handles)
%Datos de satelite

global Td;
global theta;
global theta_a;
global Iz;
global Iy;
global tdes;
global hrw;
global hmw;
global ws;
global h;
global A;
global P;
global D;
global NI;

%Comprobamos que son datos numericos
if isnan(Td)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Td,'String',0);
Td=0;
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


%Calculamos tiempo de desviación
tdes=tiempo_desviacion(Td,theta,Iz,Iy);

%Las mostramos en pantalla
set(handles.tdes,'String',tdes );

%Calculamos momento angular de Reaction wheel
hrw = Td * P/4 *.707;
set(handles.hrw,'String',hrw);

%Momento angular de Momentum wheel
hmw = hrw*180/(pi*theta_a);
set(handles.hmw,'String',hmw);

%Velocidad de giro s es un spinner
ws = hmw/Iz;
set(handles.ws,'String',ws  );

%Dipolo magnético y amperios vuelta si tiene actuadores magnéticos
[D NI]=magnetopar(h,Td,A)
set(handles.D,'String',D );
set(handles.NI,'String',NI );








% --- Executes on button press in calcular_3.
function calcular_3_Callback(hObject, eventdata, handles)

% hObject    handle to calcular_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Datos de orbita

%Calculo el boton 1
%Calcular_1_Callback(hObject, eventdata, handles);
%calcular_2_Callback(hObject, eventdata, handles);
global L;
global rate;
global hmw;
global theta;
global tman;

global Fmb

variables(handles);

%Comprobamos que son datos numericos
if isnan(L)
errordlg('El valor debe ser numérico','ERROR')
set(handles.L,'String',0);
L=0;
end
if isnan(rate)
errordlg('El valor debe ser numérico','ERROR')
set(handles.rate,'String',90);
rate=90;
end
Fmb = hmw*theta/tman*pi/(180*(1-rate/100)*L);
set(handles.Fmb,'String',Fmb);





% --- Executes on button press in calcular_2.
function calcular_2_Callback(hObject, eventdata, handles)
% hObject    handle to calcular_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Datos de orbita

global Td;
global theta;
global Iz;
global rate;
global tman;
global L;

global Fd;
global Fman;

variables(handles)




%Comprobamos que son datos numericos

if isnan(Td)
errordlg('El valor debe ser numérico','ERROR')
set(handles.Td,'String',0);
Td=0;
end
if isnan(rate)
errordlg('El valor debe ser numérico','ERROR')
set(handles.rate,'String',0);
rate=90;
end

%Calcular fuerzas
Fd = Td/L;
thetap = theta/tman;
thetapp = thetap/((1-rate/100)*tman/2);
Fman = Iz*thetapp/L;
%Mostramos en pantalla
set(handles.Fd,'String',Fd);
set(handles.Fman,'String',Fman);


% --- Executes on button press in calcular_Tsp.

% --- Executes during object creation, after setting all properties.
function Cuadro_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cuadro (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

function  t = tiempo_desviacion(Td,theta,Iz,Iy)
%calcula el tiempo que tarda la perturbación el desviar un angulo dado    
t = 2 * sqrt(theta*max(Iz,Iy)/Td);




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



function NI_Callback(hObject, eventdata, handles)
% hObject    handle to NI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NI as text
%        str2double(get(hObject,'String')) returns contents of NI as a double


% --- Executes during object creation, after setting all properties.
function NI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fman_Callback(hObject, eventdata, handles)
% hObject    handle to Fman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fman as text
%        str2double(get(hObject,'String')) returns contents of Fman as a double


% --- Executes during object creation, after setting all properties.
function Fman_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fman (see GCBO)
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



function rate_Callback(hObject, eventdata, handles)
% hObject    handle to rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rate as text
%        str2double(get(hObject,'String')) returns contents of rate as a double


% --- Executes during object creation, after setting all properties.
function rate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tman_Callback(hObject, eventdata, handles)
% hObject    handle to tman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tman as text
%        str2double(get(hObject,'String')) returns contents of tman as a double


% --- Executes during object creation, after setting all properties.
function tman_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tman (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fmb_Callback(hObject, eventdata, handles)
% hObject    handle to Fmb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fmb as text
%        str2double(get(hObject,'String')) returns contents of Fmb as a double


% --- Executes during object creation, after setting all properties.
function Fmb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fmb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function carga_variables(handles)
global h
global theta
global v
global M1;
global Iz;
global Iy;
global A;
global Td;

set(handles.h,'String',h);
set(handles.theta,'String',theta);
set(handles.v,'String',v);
set(handles.M1,'String',M1);

set(handles.Iz,'String',Iz);
set(handles.Iy,'String',Iy);
set(handles.A,'String',A);
set(handles.Td,'String',Td);


function variables(handles)
global h;
global theta;
global theta_a;
global v;
global M1;
global Iz;
global Iy;
global A;
global Td;
global P;
global L;
global rate;

global hrw;
global ws;
global hmw;
global D;
global NI
global tman;





Td= str2double(get(handles.Td, 'String'));
h= str2double(get(handles.h, 'String'));
theta = str2double(get(handles.theta, 'String'));
theta_a= str2double(get(handles.theta_a, 'String'));
P= str2double(get(handles.P, 'String'));
M1= str2double(get(handles.M1, 'String'));
A = str2double(get(handles.A, 'String'));
v = str2double(get(handles.v, 'String'));
Iz= str2double(get(handles.Iz, 'String'));
Iy= str2double(get(handles.Iy, 'String'));


L= str2double(get(handles.L, 'String'));
rate= str2double(get(handles.rate, 'String'));
hmw= str2double(get(handles.hmw, 'String'));
theta= str2double(get(handles.theta, 'String'));
tman= str2double(get(handles.tman, 'String'));

hrw= str2double(get(handles.hrw, 'String'));
ws= str2double(get(handles.ws, 'String'));
D= str2double(get(handles.D, 'String'));
NI= str2double(get(handles.NI, 'String'));
