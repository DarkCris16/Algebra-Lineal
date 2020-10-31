function varargout = SISI(varargin)
% SISI MATLAB code for SISI.fig
%      SISI, by itself, creates a new SISI or raises the existing
%      singleton*.
%
%      H = SISI returns the handle to a new SISI or the handle to
%      the existing singleton*.
%
%      SISI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SISI.M with the given input arguments.
%
%      SISI('Property','Value',...) creates a new SISI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SISI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SISI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SISI

% Last Modified by GUIDE v2.5 30-Oct-2020 17:51:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SISI_OpeningFcn, ...
                   'gui_OutputFcn',  @SISI_OutputFcn, ...
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


% --- Executes just before SISI is made visible.
function SISI_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SISI (see VARARGIN)

% Choose default command line output for SISI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes SISI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SISI_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in detA.
function detA_Callback(~, ~, handles)
% hObject    handle to detA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A;
A= det (A);
set(handles.deter_A, 'string', A)

% Se usó el comando det para buscar las determinantes, de esta manera se
% evitó realizar manualmente cada método para buscar cada determinante


% --- Executes on button press in detB.
function detB_Callback(~, ~, handles)
% hObject    handle to detB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global B;
B= det (B);
set(handles.deter_B, 'string', B)

% Se usó el comando det para buscar las determinantes, de esta manera se
% evitó realizar manualmente cada método para buscar cada determinante


% --- Executes on button press in botLimpiar.
function botLimpiar_Callback(~, ~, handles)
% hObject    handle to botLimpiar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



set(handles.A11, 'string', '   ');
set(handles.A12, 'string', '   ');
set(handles.A13, 'string', '   ');
set(handles.A21, 'string', '    ');
set(handles.A22, 'string', '    ');
set(handles.A23, 'string', '    ');
set(handles.A31, 'string', '    ');
set(handles.A32, 'string', '    ');
set(handles.A33, 'string', '    ');


set(handles.B11, 'string', '    ');
set(handles.B12, 'string', '    ');
set(handles.B13, 'string', '    ');
set(handles.B21, 'string', '    ');
set(handles.B22, 'string', '    ');
set(handles.B23, 'string', '    ');
set(handles.B31, 'string', '    ');
set(handles.B32, 'string', '    ');
set(handles.B33, 'string', '    ');


set(handles.C11, 'string','    ');
set(handles.C12, 'string','    ');
set(handles.C13, 'string','    ');
set(handles.C21, 'string','    ');
set(handles.C22, 'string','    ');
set(handles.C23, 'string','    ');
set(handles.C31, 'string','    ');
set(handles.C32, 'string','    ');
set(handles.C33, 'string','    ');


set(handles.U11, 'string','    ');
set(handles.U12, 'string','    ');
set(handles.U13, 'string','    ');



set(handles.V11, 'string','    ');
set(handles.V12, 'string','    ');
set(handles.V13, 'string','    ');


set(handles.deter_A, 'string', '    ');


set(handles.deter_B, 'string', '    ');


set(handles.escalar, 'string', '    ');

% Para el Boton limpiar se seleccionó cada editor de texto para que quedara
% completamente limpio los campos de posición de la interfáz


% --- Executes on button press in botSuma.
function botSuma_Callback(~, ~, handles)
% hObject    handle to botSuma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A;
global B;
global C;

C=A+B;

set(handles.C11, 'string',C(1,1));
set(handles.C12, 'string',C(1,2));
set(handles.C13, 'string',C(1,3));
set(handles.C21, 'string',C(2,1));
set(handles.C22, 'string',C(2,2));
set(handles.C23, 'string',C(2,3));
set(handles.C31, 'string',C(3,1));
set(handles.C32, 'string',C(3,2));
set(handles.C33, 'string',C(3,3));

%Este Botón activa el comando suma el cual ejecuta que todos los numeros
%escritos en la matriz A y B se sumen y den el resultado en la matriz C


% --- Executes on button press in botResta.
function botResta_Callback(~, ~, handles)
% hObject    handle to botResta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global A;
global B;
global C;

C=A-B;

set(handles.C11, 'string',C(1,1));
set(handles.C12, 'string',C(1,2));
set(handles.C13, 'string',C(1,3));
set(handles.C21, 'string',C(2,1));
set(handles.C22, 'string',C(2,2));
set(handles.C23, 'string',C(2,3));
set(handles.C31, 'string',C(3,1));
set(handles.C32, 'string',C(3,2));
set(handles.C33, 'string',C(3,3));

%Este Botón activa el comando resta el cual ejecuta que todos los numeros
%escritos en la matriz A y B se resten y den el resultado en la matriz C


% --- Executes on button press in botEscalar.
function botEscalar_Callback(~, ~, handles)
% hObject    handle to botEscalar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global u;
global v;
global escalar;

escalar = dot(u,v);

set(handles.escalar, 'string', escalar);

%Este Botón activa el comando escalar el cual ejecuta que todos los numeros
%escritos en el vector U y V se multipliquen y sumen y den el resultado de un entero


function C11_Callback(hObject, ~, ~)
% hObject    handle to C11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C11 as text
%        str2double(get(hObject,'String')) returns contents of C11 as a double
global C;
C(1,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C11_CreateFcn(hObject, ~, ~)
% hObject    handle to C11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','White');
end



function C21_Callback(hObject, ~, ~)
% hObject    handle to C21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C21 as text
%        str2double(get(hObject,'String')) returns contents of C21 as a double
global C;
C(2,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C21_CreateFcn(hObject, ~, ~)
% hObject    handle to C21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C31_Callback(hObject, ~, ~)
% hObject    handle to C31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C31 as text
%        str2double(get(hObject,'String')) returns contents of C31 as a double
global C;
C(3,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C31_CreateFcn(hObject, ~, ~)
% hObject    handle to C31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C22_Callback(hObject, ~, ~)
% hObject    handle to C22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C22 as text
%        str2double(get(hObject,'String')) returns contents of C22 as a double
global C;
C(2,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C22_CreateFcn(hObject, ~, ~)
% hObject    handle to C22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C32_Callback(hObject, ~, ~)
% hObject    handle to C32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C32 as text
%        str2double(get(hObject,'String')) returns contents of C32 as a double
global C;
C(3,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C32_CreateFcn(hObject, ~, ~)
% hObject    handle to C32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C13_Callback(hObject, ~, ~)
% hObject    handle to C13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C13 as text
%        str2double(get(hObject,'String')) returns contents of C13 as a double
global C;
C(1,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C13_CreateFcn(hObject, ~, ~)
% hObject    handle to C13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C23_Callback(hObject, ~, ~)
% hObject    handle to C23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C23 as text
%        str2double(get(hObject,'String')) returns contents of C23 as a double
global C;
C(2,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C23_CreateFcn(hObject, ~, ~)
% hObject    handle to C23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C33_Callback(hObject, ~, ~)
% hObject    handle to C33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C33 as text
%        str2double(get(hObject,'String')) returns contents of C33 as a double
global C;
C(3,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C33_CreateFcn(hObject, ~, ~)
% hObject    handle to C33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C12_Callback(hObject, ~, ~)
% hObject    handle to C12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C12 as text
%        str2double(get(hObject,'String')) returns contents of C12 as a double
global C;
C(1,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function C12_CreateFcn(hObject, ~, ~)
% hObject    handle to C12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B11_Callback(hObject, ~, ~)
% hObject    handle to B11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B11 as text
%        str2double(get(hObject,'String')) returns contents of B11 as a double
global B;
B(1,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B11_CreateFcn(hObject, ~, ~)
% hObject    handle to B11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B21_Callback(hObject, ~, ~)
% hObject    handle to B21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B21 as text
%        str2double(get(hObject,'String')) returns contents of B21 as a double
global B;
B(2,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B21_CreateFcn(hObject, ~, ~)
% hObject    handle to B21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B31_Callback(hObject, ~, ~)
% hObject    handle to B31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B31 as text
%        str2double(get(hObject,'String')) returns contents of B31 as a double
global B;
B(3,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B31_CreateFcn(hObject, ~, ~)
% hObject    handle to B31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B22_Callback(hObject, ~, ~)
% hObject    handle to B22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B22 as text
%        str2double(get(hObject,'String')) returns contents of B22 as a double
global B;
B(2,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B22_CreateFcn(hObject, ~, ~)
% hObject    handle to B22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B32_Callback(hObject, ~, ~)
% hObject    handle to B32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B32 as text
%        str2double(get(hObject,'String')) returns contents of B32 as a double
global B;
B(3,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B32_CreateFcn(hObject, ~, ~)
% hObject    handle to B32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B13_Callback(hObject, ~, ~)
% hObject    handle to B13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B13 as text
%        str2double(get(hObject,'String')) returns contents of B13 as a double
global B;
B(1,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B13_CreateFcn(hObject, ~, ~)
% hObject    handle to B13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B23_Callback(hObject, ~, ~)
% hObject    handle to B23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B23 as text
%        str2double(get(hObject,'String')) returns contents of B23 as a double
global B;
B(2,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B23_CreateFcn(hObject, ~, ~)
% hObject    handle to B23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B33_Callback(hObject, ~, ~)
% hObject    handle to B33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B33 as text
%        str2double(get(hObject,'String')) returns contents of B33 as a double
global B;
B(3,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B33_CreateFcn(hObject, ~, ~)
% hObject    handle to B33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B12_Callback(hObject, ~, ~)
% hObject    handle to B12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of B12 as text
%        str2double(get(hObject,'String')) returns contents of B12 as a double
global B;
B(1,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function B12_CreateFcn(hObject, ~, ~)
% hObject    handle to B12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A11_Callback(hObject, ~, ~)
% hObject    handle to A11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A11 as text
%        str2double(get(hObject,'String')) returns contents of A11 as a double
global A;
A(1,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A11_CreateFcn(hObject, ~, ~)
% hObject    handle to A11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A21_Callback(hObject, ~, ~)
% hObject    handle to A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A21 as text
%        str2double(get(hObject,'String')) returns contents of A21 as a double
global A;
A(2,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A21_CreateFcn(hObject, ~, ~)
% hObject    handle to A21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A31_Callback(hObject, ~, ~)
% hObject    handle to A31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A31 as text
%        str2double(get(hObject,'String')) returns contents of A31 as a double
global A;
A(3,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A31_CreateFcn(hObject, ~, ~)
% hObject    handle to A31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A22_Callback(hObject, ~, ~)
% hObject    handle to A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A22 as text
%        str2double(get(hObject,'String')) returns contents of A22 as a double
global A;
A(2,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A22_CreateFcn(hObject, ~, ~)
% hObject    handle to A22 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A32_Callback(hObject, ~, ~)
% hObject    handle to A32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A32 as text
%        str2double(get(hObject,'String')) returns contents of A32 as a double
global A;
A(3,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A32_CreateFcn(hObject, ~, ~)
% hObject    handle to A32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A13_Callback(hObject, ~, ~)
% hObject    handle to A13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A13 as text
%        str2double(get(hObject,'String')) returns contents of A13 as a double
global A;
A(1,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A13_CreateFcn(hObject, ~, ~)
% hObject    handle to A13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A23_Callback(hObject, ~, ~)
% hObject    handle to A23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A23 as text
%        str2double(get(hObject,'String')) returns contents of A23 as a double
global A;
A(2,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A23_CreateFcn(hObject, ~, ~)
% hObject    handle to A23 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A33_Callback(hObject, ~, ~)
% hObject    handle to A33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A33 as text
%        str2double(get(hObject,'String')) returns contents of A33 as a double
global A;
A(3,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A33_CreateFcn(hObject, ~, ~)
% hObject    handle to A33 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A12_Callback(hObject, ~, ~)
% hObject    handle to A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A12 as text
%        str2double(get(hObject,'String')) returns contents of A12 as a double
global A;
A(1,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function A12_CreateFcn(hObject, ~, ~)
% hObject    handle to A12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P11_Callback(hObject, ~, ~)
% hObject    handle to P11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P11 as text
%        str2double(get(hObject,'String')) returns contents of P11 as a double
global Producto;
Producto(1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function P11_CreateFcn(hObject, ~, ~)
% hObject    handle to P11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V11_Callback(hObject, ~, ~)
% hObject    handle to V11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V11 as text
%        str2double(get(hObject,'String')) returns contents of V11 as a double
global v;
v(1,1)=str2double(get(hObject, 'String'));


% --- Executes during object creation, after setting all properties.
function V11_CreateFcn(hObject, ~, ~)
% hObject    handle to V11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V12_Callback(hObject, ~, ~)
% hObject    handle to V12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V12 as text
%        str2double(get(hObject,'String')) returns contents of V12 as a double
global v;
v(1,2)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function V12_CreateFcn(hObject, ~, ~)
% hObject    handle to V12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function V13_Callback(hObject, ~, ~)
% hObject    handle to V13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of V13 as text
%        str2double(get(hObject,'String')) returns contents of V13 as a double
global v;
v(1,3)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function V13_CreateFcn(hObject, ~, ~)
% hObject    handle to V13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function U11_Callback(hObject, ~, ~)
% hObject    handle to U11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U11 as text
%        str2double(get(hObject,'String')) returns contents of U11 as a double
global u;
u(1,1)=str2double(get(hObject, 'String'));

% --- Executes during object creation, after setting all properties.
function U11_CreateFcn(hObject, ~, ~)
% hObject    handle to U11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function U12_Callback(hObject, ~, ~)
% hObject    handle to U12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U12 as text
%        str2double(get(hObject,'String')) returns contents of U12 as a double
global u;
u(1,2)=str2double(get(hObject, 'String'));


% --- Executes during object creation, after setting all properties.
function U12_CreateFcn(hObject, ~, ~)
% hObject    handle to U12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function U13_Callback(hObject, ~, ~)
% hObject    handle to U13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of U13 as text
%        str2double(get(hObject,'String')) returns contents of U13 as a double
global u;
u(1,3)=str2double(get(hObject, 'String'));


% --- Executes during object creation, after setting all properties.
function U13_CreateFcn(hObject, ~, ~)
% hObject    handle to U13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes when figure1 is resized.
function figure1_SizeChangedFcn(~, ~, ~)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
