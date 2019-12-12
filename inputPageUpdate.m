
function [ ] = inputPageUpdate( hObject, handles )
% Mouse click event in INPUT random page


switch handles.mouseSelect
    case "RANDOM"
        randomMatrix(hObject, handles);
        set(handles.random_button, 'BackgroundColor', [0.98 0.32 0.52], 'Value', 1);
        setfigptr('circle', handles.madlab);
        
    case "CAL"
        % CALCULATE!
        result = [];
        X = get(handles.matArand, 'Data');
        Y = get(handles.matBrand, 'Data');
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
                result = subMatrixSpark(X,Y);
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