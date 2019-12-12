
function [ ] = inputPage2Update( hObject, handles )
% Mouse click event in INPUT manual page


switch handles.mouseSelect
    case "IMPORTA"
        importMatrix(hObject, handles, 'A');
    case "IMPORTB"
        importMatrix(hObject, handles, 'B');
        
    case "CLEARA"
        N = handles.matrix_size;
        set(handles.matA, 'Data', zeros(N));
        setfigptr('circle', handles.madlab);
    case "CLEARB"
        N = handles.matrix_size;
        set(handles.matB, 'Data', zeros(N));
        setfigptr('circle', handles.madlab);
        
    case "CAL"
        % CALCULATE!
        result = [];
        X = get(handles.matA, 'Data');
        Y = get(handles.matB, 'Data');
        startL = tic;
        switch handles.operation
            case 0 % -- Add
                result = addMatrix(X,Y,handles.matrix_size);
            case 1 % -- Sub
                result = subMatrix(X,Y,handles.matrix_size);
            case 2 % -- Mul
                result = mulMatrix(X,Y,handles.matrix_size);
            case 3 % -- Inv
                result = invMatrix(X,handles.matrix_size);
        end
        set(handles.timeL, 'String', toc(startL));
        handles.matrixC = result;
        set(handles.matAresult, 'Data', get(handles.matA, 'Data'));
        set(handles.matBresult, 'Data', get(handles.matB, 'Data'));
        set(handles.matC, 'Data', handles.matrixC);
        set(handles.P4, 'visible', 'off');
        handles.scene = "-RESULT-";
        set(handles.P5, 'visible', 'on');
        setfigptr('circle', handles.madlab);
        
        
    case "BACK"
        set(handles.P4, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);