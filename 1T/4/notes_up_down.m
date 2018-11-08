function varargout = notes_up_down(varargin)
% NOTES_UP_DOWN MATLAB code for notes_up_down.fig
%      NOTES_UP_DOWN, by itself, creates a new NOTES_UP_DOWN or raises the existing
%      singleton*.
%
%      H = NOTES_UP_DOWN returns the handle to a new NOTES_UP_DOWN or the handle to
%      the existing singleton*.
%
%      NOTES_UP_DOWN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NOTES_UP_DOWN.M with the given input arguments.
%
%      NOTES_UP_DOWN('Property','Value',...) creates a new NOTES_UP_DOWN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before notes_up_down_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to notes_up_down_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help notes_up_down

% Last Modified by GUIDE v2.5 09-Oct-2018 20:41:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @notes_up_down_OpeningFcn, ...
                   'gui_OutputFcn',  @notes_up_down_OutputFcn, ...
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


% --- Executes just before notes_up_down is made visible.
function notes_up_down_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to notes_up_down (see VARARGIN)

% Choose default command line output for notes_up_down
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes notes_up_down wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = notes_up_down_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in durationMenu.
function durationMenu_Callback(hObject, eventdata, handles)
% hObject    handle to durationMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns durationMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from durationMenu


% --- Executes during object creation, after setting all properties.
function durationMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to durationMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in frequencyMenu.
function frequencyMenu_Callback(hObject, eventdata, handles)
% hObject    handle to frequencyMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns frequencyMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from frequencyMenu


% --- Executes during object creation, after setting all properties.
function frequencyMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to frequencyMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in upScaleButton.
function upScaleButton_Callback(hObject, eventdata, handles)
% hObject    handle to upScaleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.downScaleButton.Enable='Off';
notes(handles.frequencyMenu.UserData(handles.frequencyMenu.Value),handles.durationMenu.Value,1);
handles.downScaleButton.Enable='On';

% --- Executes on button press in downScaleButton.
function downScaleButton_Callback(hObject, eventdata, handles)
% hObject    handle to downScaleButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.upScaleButton.Enable='Off';
notes(handles.frequencyMenu.UserData(handles.frequencyMenu.Value),handles.durationMenu.Value,-1);
handles.upScaleButton.Enable='On';


% --- Executes on button press in exitButton.
function exitButton_Callback(hObject, eventdata, handles)
% hObject    handle to exitButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
 close all force
