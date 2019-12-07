function varargout = madlab(varargin)
% MADLAB MATLAB code for madlab.fig
%      MADLAB, by itself, creates a new MADLAB or raises the existing
%      singleton*.
%
%      H = MADLAB returns the handle to a new MADLAB or the handle to
%      the existing singleton*.
%
%      MADLAB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MADLAB.M with the given input arguments.
%
%      MADLAB('Property','Value',...) creates a new MADLAB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before madlab_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to madlab_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help madlab

% Last Modified by GUIDE v2.5 06-Dec-2019 17:03:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @madlab_OpeningFcn, ...
                   'gui_OutputFcn',  @madlab_OutputFcn, ...
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


% --- Executes just before madlab is made visible.
function madlab_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
set(gcf,'Position',[0 0 790 450])
% Reposition each panel to same location as panel 1
set(handles.P2,'position',get(handles.P1,'position'));
set(handles.P2, 'visible', 'off');

% Load all images here
logo = imread('logo.jpg');
axes(handles.logo_box);
imshow(logo);
logomini = imread('logobw.jpg');
axes(handles.logomini_box);
imshow(logomini);
sizeicon = imread('size.jpg');
axes(handles.size_icon);
imshow(sizeicon);

random2 = imread('random2.jpg');
axes(handles.random_icon);
imshow(random2);
manual = imread('manual.jpg');
axes(handles.manual_icon);
imshow(manual);
manual2 = imread('manual2.jpg');

% Update ALL variables
handles.scene = "-HOME-";
handles.mouseSelect = "NONE";
handles.matrix_size = 3;
handles.mode = 0;
guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = madlab_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on mouse motion over figure - except title and menu.
function madlab_WindowButtonMotionFcn(hObject, eventdata, handles)
disp(handles.scene);
switch handles.scene
    case "-HOME-"
        homePage(hObject, handles);
    case "-MENU-"
        menuPage(hObject, handles);
end
disp(handles.mouseSelect);


% --- Executes on mouse press over figure background, over a disabled or
function madlab_WindowButtonDownFcn(hObject, eventdata, handles)

switch handles.scene
    case "-HOME-"
        homePageUpdate(hObject, handles);
end

switch handles.mouseSelect % must set button enable = inactive !!
    case "SIZE2"
        handles.matrix_size = 2;
        set(handles.size2_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size3_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size4_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size2, 'FontWeight', 'bold');
        set(handles.size3, 'FontWeight', 'normal');
        set(handles.size4, 'FontWeight', 'normal');
    case "SIZE3"
        handles.matrix_size = 3;
        set(handles.size2_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size3_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size4_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size2, 'FontWeight', 'normal');
        set(handles.size3, 'FontWeight', 'bold');
        set(handles.size4, 'FontWeight', 'normal');
    case "SIZE4"
        handles.matrix_size = 4;
        set(handles.size2_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size3_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size4_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size2, 'FontWeight', 'normal');
        set(handles.size3, 'FontWeight', 'normal');
        set(handles.size4, 'FontWeight', 'bold');
    
    case "RANDOM"
        handles.mode = 0;
        set(handles.random_icon, 'UserData', 67);
        imagesc(random2, 'Parent', handles.random_icon)
        imagesc(manual, 'Parent', handles.manual_icon)
    case "MANUAL"
        handles.mode = 1;
        set(handles.random_icon, 'UserData', 69);
        imagesc(random, 'Parent', handles.random_icon)
        imagesc(manual2, 'Parent', handles.manual_icon)
end
guidata(hObject, handles);


% --- Executes on button press in pushbutton12.
function pushbutton12_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
