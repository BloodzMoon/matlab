
function [ ] = inputPageUpdate( hObject, handles )
% Mouse click event in INPUT random page


switch handles.mouseSelect
    case "RANDOM"
        randomMatrix(hObject, handles);
        set(handles.random_button, 'BackgroundColor', [0.98 0.32 0.52], 'Value', 1);
        setfigptr('circle', handles.madlab);
        
    case "CAL"
        if handles.random_button.Value == 1
            handles.matrixA = get(handles.matArand, 'Data');
            handles.matrixB = get(handles.matBrand, 'Data');
            switch handles.operation
                case 0 % add
                    % -- ADDITION
                case 1 % sub
                    % -- SUBTRACTION
                case 2 % mul
                    % -- MULTIPLICATION
                case 3 % inv
                    % -- INVERTION
            end
            set(handles.P3, 'visible', 'off');
            handles.scene = "-RESULT-";
            set(handles.P5, 'visible', 'on');
            setfigptr('circle', handles.madlab);
        else
            warndlg('Please random the number!');
        end
        
    case "BACK"
        set(handles.P3, 'visible', 'off');
        handles.scene = "-MENU-";
        set(handles.P2, 'visible', 'on');
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);