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

% Last Modified by GUIDE v2.5 08-Dec-2019 01:24:37

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
randomicon1 = imread('random.jpg');
axes(handles.random_icon1);
imshow(randomicon1);
randomicon2 = imread('random2.jpg');
axes(handles.random_icon2);
imshow(randomicon2);
randomicon3 = imread('random3.jpg');
axes(handles.random_icon3);
imshow(randomicon3);
set(handles.random_icon2,'position',get(handles.random_icon1,'position'));
set(handles.random_icon3,'position',get(handles.offscreen,'position'));
manualicon1 = imread('manual.jpg');
axes(handles.manual_icon1);
imshow(manualicon1);
manualicon2 = imread('manual2.jpg');
axes(handles.manual_icon2);
imshow(manualicon2);
manualicon3 = imread('manual3.jpg');
axes(handles.manual_icon3);
imshow(manualicon3);
set(handles.manual_icon2,'position',get(handles.offscreen,'position'));
set(handles.manual_icon3,'position',get(handles.offscreen,'position'));

% Update ALL variables
handles.scene = "-HOME-";
handles.mouseSelect = "NONE";
handles.matrix_size = 3;
handles.input_mode = 0;
guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = madlab_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

% --- Executes on mouse motion over figure - except title and menu.
function madlab_WindowButtonMotionFcn(hObject, eventdata, handles)
switch handles.scene
    case "-HOME-"
        homePage(hObject, handles);
    case "-MENU-"
        menuPage(hObject, handles);
end
 disp(handles.input_mode); % DEBUG








% All button here
function start_button_ButtonDownFcn(hObject, eventdata, handles)
homePageUpdate(hObject, handles);

function size2_ButtonDownFcn(hObject, eventdata, handles)
menuPageUpdate(hObject, handles);

function size3_ButtonDownFcn(hObject, eventdata, handles)
menuPageUpdate(hObject, handles);

function size4_ButtonDownFcn(hObject, eventdata, handles)
menuPageUpdate(hObject, handles);

function random_box_ButtonDownFcn(hObject, eventdata, handles)
menuPageUpdate(hObject, handles);

function manual_box_ButtonDownFcn(hObject, eventdata, handles)
menuPageUpdate(hObject, handles);
