
function [ ] = inputPageUpdate( hObject, handles )
% Mouse click event in INPUT random page


switch handles.mouseSelect
    case "BACK"
        set(handles.P3, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
    
    case "RANDOM"
        randomMatrix(hObject, handles);
        set(handles.random_button, 'BackgroundColor', [0.98 0.32 0.52]);
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);