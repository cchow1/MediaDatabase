function varargout = usergui(varargin)
% USERGUI MATLAB code for usergui.fig
%      USERGUI, by itself, creates a new USERGUI or raises the existing
%      singleton*.
%
%      H = USERGUI returns the handle to a new USERGUI or the handle to
%      the existing singleton*.
%
%      USERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in USERGUI.M with the given input arguments.
%
%      USERGUI('Property','Value',...) creates a new USERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before usergui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to usergui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help usergui

% Last Modified by GUIDE v2.5 12-Jul-2019 09:14:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @usergui_OpeningFcn, ...
                   'gui_OutputFcn',  @usergui_OutputFcn, ...
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


% --- Executes just before usergui is made visible.
function usergui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to usergui (see VARARGIN)

% Choose default command line output for usergui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes usergui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = usergui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



%DESCRIPTION
function ed_desc_Callback(hObject, eventdata, handles)
% hObject    handle to ed_desc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ed_desc as text
%        str2double(get(hObject,'String')) returns contents of ed_desc as a double
% --- Executes during object creation, after setting all properties.

function ed_desc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_desc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%THOUGHTS
function ed_thots_Callback(hObject, eventdata, handles)
% hObject    handle to ed_thots (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ed_thots as text
%        str2double(get(hObject,'String')) returns contents of ed_thots as a double
% --- Executes during object creation, after setting all properties.
function ed_thots_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_thots (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


%SCORE
function sl_score_Callback(hObject, eventdata, handles)
% hObject    handle to sl_score (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
% --- Executes during object creation, after setting all properties.
function sl_score_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sl_score (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



%SEARCH BAR
%TITLE
function ed_title_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%BOOK DOT
function rb_book_Callback(hObject, eventdata, handles)
% hObject    handle to rb_book (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rb_book

handles = guidata(hObject)
global book
book = get(hObject, 'Value');
handles.genre = 'Books';
guidata(hObject, handles);

%MOVIE DOT
function rb_movie_Callback(hObject, eventdata, handles)
% hObject    handle to rb_movie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rb_movie

handles = guidata(hObject)
global movie
movie = get(hObject, 'Value');
handles.genre = 'Movies';
guidata(hObject, handles);

%TVSHOW DOT
function rb_tvshow_Callback(hObject, eventdata, handles)
% hObject    handle to rb_tvshow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rb_tvshow

handles = guidata(hObject)
global tvshow
tvshow = get(hObject, 'Value');
handles.genre = 'TV Shows';
guidata(hObject, handles);

%OTHER DOT
function rb_other_Callback(hObject, eventdata, handles)
% hObject    handle to rb_other (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rb_other

handles = guidata(hObject)
global other
other = get(hObject, 'Value');
handles.genre = 'Others';
guidata(hObject, handles);

%SEARCH DATABASE
function b_search_Callback(hObject, eventdata, handles)
% hObject    handle to b_search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject)

cont = 0;
while cont ==0
    if isempty(handles.ed_path)
        disp('Must input path to database')
    else
        cont = 1;
    end
end
guidata(hObject, handles);

searchdb( handles) 



%SAVE DATA
function b_save_Callback(hObject, eventdata, handles)
% hObject    handle to b_save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(hObject)
cont = 0;
while cont ==0
    if isempty(handles.ed_desc.String) || isempty(handles.ed_thots.String)
        disp('you are missing some information. pleaes fill in all the blanks')
    else
        cont = 1;
    end
end


write2db(handles)

%EXIT BUTTON
function b_exit_Callback(hObject, eventdata, handles)
% hObject    handle to b_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all;

%CLEAR DATA BUTTON
function b_clear_Callback(hObject, eventdata, handles)
% hObject    handle to b_clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cleardata(handles)





function ed_title_Callback(hObject, eventdata, handles)
% hObject    handle to ed_title (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_title as text
%        str2double(get(hObject,'String')) returns contents of ed_title as a double



function ed_path_Callback(hObject, eventdata, handles)
% hObject    handle to ed_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ed_path as text
%        str2double(get(hObject,'String')) returns contents of ed_path as a double


% --- Executes during object creation, after setting all properties.
function ed_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ed_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
