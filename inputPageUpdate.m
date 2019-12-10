
function [ ] = inputPageUpdate( hObject, handles )
% Mouse click event in INPUT random page


switch handles.mouseSelect
    case "RANDOM"
        randomMatrix(hObject, handles);
        set(handles.random_button, 'BackgroundColor', [0.98 0.32 0.52], 'Value', 1);
        setfigptr('circle', handles.madlab);
        
    case "CAL"
        % CALCULATE!
        set(handles.matAresult, 'Data', get(handles.matArand, 'Data'));
        set(handles.matBresult, 'Data', get(handles.matBrand, 'Data'));
        set(handles.matC, 'Data', handles.matrixC);
        set(handles.P3, 'visible', 'off');
        handles.scene = "-RESULT-";
        set(handles.P5, 'visible', 'on');
        setfigptr('circle', handles.madlab);
        
    case "BACK"
        set(handles.P3, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);