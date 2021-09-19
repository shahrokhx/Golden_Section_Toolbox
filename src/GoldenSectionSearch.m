function varargout = GoldenSectionSearch(varargin)
% GOLDENSECTIONSEARCH MATLAB code for GoldenSectionSearch.fig
%      GOLDENSECTIONSEARCH, by itself, creates a new GOLDENSECTIONSEARCH or raises the existing
%      singleton*.
%
%      H = GOLDENSECTIONSEARCH returns the handle to a new GOLDENSECTIONSEARCH or the handle to
%      the existing singleton*.
%
%      GOLDENSECTIONSEARCH('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GOLDENSECTIONSEARCH.M with the given input arguments.
%
%      GOLDENSECTIONSEARCH('Property','Value',...) creates a new GOLDENSECTIONSEARCH or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GoldenSectionSearch_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GoldenSectionSearch_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GoldenSectionSearch

% Last Modified by GUIDE v2.5 02-May-2018 09:51:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GoldenSectionSearch_OpeningFcn, ...
                   'gui_OutputFcn',  @GoldenSectionSearch_OutputFcn, ...
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


% --- Executes just before GoldenSectionSearch is made visible.
function GoldenSectionSearch_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GoldenSectionSearch (see VARARGIN)

% Choose default command line output for GoldenSectionSearch
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GoldenSectionSearch wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GoldenSectionSearch_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
func = inline (get(handles.edit1,'string'))
delta= str2num(get(handles.edit2,'string'));
maxq = str2num(get(handles.edit3,'string'));
tol  = str2num(get(handles.edit4,'string'));
maxit= str2num(get(handles.edit5,'string'));

set(handles.text11,'String','');

[x,intervals,alpha,q] = LineSearch(func,delta,maxq,tol,maxit);






% graphical view
%     title ('LineSearch Initial Intrval')
cla(handles.axes1)
grid(handles.axes1,'on');
hold(handles.axes1,'on');
plot(handles.axes1,alpha,func(alpha),'b-O')
plot(handles.axes1,[alpha(q-2) alpha(q-2)],[0, func(alpha(q-2))],'r-.*')
plot(handles.axes1,[alpha(q) alpha(q)],[0, func(alpha(q))],'r--*')
legend(handles.axes1,'Phase I \alpha_q','Lower Bound','Upper Bound')
xLim = handles.axes1.XLim;
yLim = handles.axes1.YLim;

cla(handles.axes2)
grid(handles.axes2,'on');
hold(handles.axes2,'on');
xlim(handles.axes2,xLim);

cla(handles.axes3)
grid(handles.axes3,'on');
hold(handles.axes3,'on');
xlim(handles.axes3,xLim);
    

cmp = colormap(parula(length(intervals)));

for i = 1 : length(intervals)
    set(handles.uitable1,'data',intervals(1:i,:))
    
    % Axes2
    cla(handles.axes2)
    fill([intervals(i,1), intervals(i,1), intervals(i,2), intervals(i,2)], ...
         [yLim(1)       , yLim(2)       , yLim(2)       , yLim(1)       ], ...
          cmp(i,:),'FaceAlpha',0.1,'EdgeColor','b','Parent',handles.axes2)
    
    % Axes3
    fill([xLim(1), xLim(1), intervals(i,1), intervals(i,1)], ...
         [yLim(1), yLim(2), yLim(2)        , yLim(1)      ], ...
          'r','FaceAlpha',0.1,'EdgeColor','none','Parent',handles.axes3)
        
    fill([intervals(i,2), intervals(i,2), xLim(2), xLim(2)], ...
         [yLim(1)       , yLim(2)       , yLim(2), yLim(1)], ...
         'r','FaceAlpha',0.1,'EdgeColor','none','Parent',handles.axes3)  
    
    pause (str2num(get(handles.edit7,'string')));
end
set(handles.text11,'String',['X* = ',num2str(x)])
    

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
