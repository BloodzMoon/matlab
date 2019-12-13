
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
        switch handles.operation
            case 0 % -- Add
                start = tic;
                result = addMatrix(X,Y);
                set(handles.timeL, 'String', toc(start)*1000);
                
                start = tic;
                result = addMatrixSpark(X,Y);
                set(handles.timeS, 'String', toc(start)*1000);
            case 1 % -- Sub
                start = tic;
                result = subMatrix(X,Y);
                set(handles.timeL, 'String', toc(start)*1000);
                
                start = tic;
                result = subMatrixSpark(X, Y); 
                set(handles.timeS, 'String', toc(start)*1000);
            case 2 % -- Mul
                start = tic;
                result = mulMatrix(X,Y);
                set(handles.timeL, 'String', toc(start)*1000);
                
                start = tic;
                result = mulMatrixSpark(X, Y);
                set(handles.timeS, 'String', toc(start)*1000);
            case 3 % -- Inv
                start = tic;
                result = invMatrix(X);
                set(handles.timeL, 'String', toc(start)*1000);
                
                start = tic;
                result = invMatrixSpark(X);
                set(handles.timeS, 'String', toc(start)*1000);
        end
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