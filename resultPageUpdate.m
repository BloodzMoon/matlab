function [ ] = resultPageUpdate( hObject, handles )
% Mouse click event in RESULT page

switch handles.mouseSelect
    case "BACKMENU"
        set(handles.P4, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);