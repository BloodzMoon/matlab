function [ ] = menuPageUpdate( hObject, handles )
% Mouse click event in MENU page

switch handles.mouseSelect
    case "SIZE2"
        handles.matrix_size = 2;
        set(handles.size2, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.size3, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size4, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size2_icon, 'Visible', 'on');
        set(handles.size3_icon, 'Visible', 'off');
        set(handles.size4_icon, 'Visible', 'off');
    case "SIZE3"
        handles.matrix_size = 3;
        set(handles.size2, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size3, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.size4, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size2_icon, 'Visible', 'off');
        set(handles.size3_icon, 'Visible', 'on');
        set(handles.size4_icon, 'Visible', 'off');
    case "SIZE4"
        handles.matrix_size = 4;
        set(handles.size2, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size3, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size4, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.size2_icon, 'Visible', 'off');
        set(handles.size3_icon, 'Visible', 'off');
        set(handles.size4_icon, 'Visible', 'on');
    
        
    case "ADD"
        handles.operation = 0;
        set(handles.add, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
    case "SUB"
        handles.operation = 1;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
    case "MUL"
        handles.operation = 2;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
    case "INV"
        handles.operation = 3;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
    
        
    case "RANDOM"
        handles.input_mode = 0;
        set(handles.random, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.random_icon, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.manual, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.manual_icon, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
    case "MANUAL"
        handles.input_mode = 1;
        set(handles.random, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.random_icon, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.manual, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.manual_icon, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        
    case "NEXT"
        set(handles.P2, 'visible', 'off');
        % random mode
        if handles.input_mode == 0
            handles.scene = "-RESULT-";
            set(handles.P4, 'visible', 'on');
        % manual mode
        elseif handles.input_mode == 1
            handles.scene = "-INPUT-";
            set(handles.P3, 'visible', 'on');
        end    
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);

