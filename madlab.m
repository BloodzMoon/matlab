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

% Last Modified by GUIDE v2.5 05-Dec-2019 16:21:20

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
% Initialize things HERE -------
%Reposition each panel to same location as panel 1
set(handles.P2,'position',get(handles.P1,'position'));
set(handles.P2, 'visible', 'off');

logo = imread('logo.jpg');
set(gca,'XColor', 'none','YColor','none')
axes(handles.logo_box);
imshow(logo);

handles.scene = "-HOME-";
handles.mouseSelect = "NONE";

% Update ALL variables
guidata(hObject, handles);




% --- Outputs from this function are returned to the command line.
function varargout = madlab_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;


% --- Executes on button press in start_button.
function start_button_Callback(hObject, eventdata, handles)
handles.scene = "-MENU-";
set(handles.P1, 'visible', 'off');
set(handles.P2, 'visible', 'on');
guidata(hObject, handles);



% --- Executes on mouse motion over figure - except title and menu.
function madlab_WindowButtonMotionFcn(hObject, eventdata, handles)
mouse = get(hObject, 'currentpoint');
setfigptr('circle', handles.madlab);
handles.mouseSelect = "NONE";
switch handles.scene
    case "-HOME-"
        startBT = get(handles.start_button, 'position');
        disp(startBT)
        if checkHover(startBT, mouse)
            handles.mouseSelect = "START";
            setfigptr('cross', handles.madlab);
        end
end

        
        
        
