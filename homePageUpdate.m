function [ ] = homePageUpdate( hObject, handles )
% Mouse click event in HOME page

switch handles.mouseSelect
    % -- Click me! button
    case "START"
        handles.scene = "-MENU-";
        set(handles.P1, 'visible', 'off');
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);

