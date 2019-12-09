
function [ ] = inputPage2Update( hObject, handles )
% Mouse click event in INPUT manual page


switch handles.mouseSelect
    case "BACK"
        set(handles.P4, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);