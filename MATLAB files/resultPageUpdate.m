function [ ] = resultPageUpdate( hObject, handles )
% Mouse click event in RESULT page

switch handles.mouseSelect
    case "BACKMENU"
        set(handles.P5, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        handles.matrixA = [];
        handles.matrixB = [];
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);