
function [ ] = inputPage2Update( hObject, handles )
% Mouse click event in INPUT manual page


switch handles.mouseSelect
    case "IMPORTA"
        importMatrix(hObject, handles, 'A');
    case "IMPORTB"
        importMatrix(hObject, handles, 'B');
    case "CLEARA"
        N = handles.matrix_size;
        set(handles.matA, 'Data', cell(N,N));
        setfigptr('circle', handles.madlab);
    case "CLEARB"
        N = handles.matrix_size;
        set(handles.matB, 'Data', cell(N,N));
        setfigptr('circle', handles.madlab);
    case "BACK"
        set(handles.P4, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);