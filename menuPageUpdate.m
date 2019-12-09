
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
        set(handles.matA, 'Data', cell(2,2));
        set(handles.matB, 'Data', cell(2,2));
        set(handles.matArand, 'Data', cell(2,2));
        set(handles.matBrand, 'Data', cell(2,2));
    case "SIZE3"
        handles.matrix_size = 3;
        set(handles.size2, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size3, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.size4, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size2_icon, 'Visible', 'off');
        set(handles.size3_icon, 'Visible', 'on');
        set(handles.size4_icon, 'Visible', 'off');
        set(handles.matA, 'Data', cell(3,3));
        set(handles.matB, 'Data', cell(3,3));
        set(handles.matArand, 'Data', cell(3,3));
        set(handles.matBrand, 'Data', cell(3,3));
    case "SIZE4"
        handles.matrix_size = 4;
        set(handles.size2, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size3, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.size4, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.size2_icon, 'Visible', 'off');
        set(handles.size3_icon, 'Visible', 'off');
        set(handles.size4_icon, 'Visible', 'on');
        set(handles.matA, 'Data', cell(4,4));
        set(handles.matB, 'Data', cell(4,4));
        set(handles.matArand, 'Data', cell(4,4));
        set(handles.matBrand, 'Data', cell(4,4));
    
        
    case "ADD"
        handles.operation = 0;
        set(handles.add, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.add_icon, 'Visible', 'on');
        set(handles.sub_icon, 'Visible', 'off');
        set(handles.mul_icon, 'Visible', 'off');
        set(handles.inv_icon, 'Visible', 'off');
        set(handles.disable, 'Visible', 'off', 'Value', 0);
        set(handles.add_icon2, 'Visible', 'on');
        set(handles.sub_icon2, 'Visible', 'off');
        set(handles.mul_icon2, 'Visible', 'off');
        set(handles.inv_icon2, 'Visible', 'off');
        set(handles.disable2, 'Visible', 'off', 'Value', 0);
        set(handles.minB, 'Visible', 'on');
        set(handles.maxB, 'Visible', 'on');
    case "SUB"
        handles.operation = 1;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.add_icon, 'Visible', 'off');
        set(handles.sub_icon, 'Visible', 'on');
        set(handles.mul_icon, 'Visible', 'off');
        set(handles.inv_icon, 'Visible', 'off');
        set(handles.disable, 'Visible', 'off', 'Value', 0);
        set(handles.add_icon2, 'Visible', 'off');
        set(handles.sub_icon2, 'Visible', 'on');
        set(handles.mul_icon2, 'Visible', 'off');
        set(handles.inv_icon2, 'Visible', 'off');
        set(handles.disable2, 'Visible', 'off', 'Value', 0);
        set(handles.minB, 'Visible', 'on');
        set(handles.maxB, 'Visible', 'on');
    case "MUL"
        handles.operation = 2;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.inv, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.add_icon, 'Visible', 'off');
        set(handles.sub_icon, 'Visible', 'off');
        set(handles.mul_icon, 'Visible', 'on');
        set(handles.inv_icon, 'Visible', 'off');
        set(handles.disable, 'Visible', 'off', 'Value', 0);
        set(handles.add_icon2, 'Visible', 'off');
        set(handles.sub_icon2, 'Visible', 'off');
        set(handles.mul_icon2, 'Visible', 'on');
        set(handles.inv_icon2, 'Visible', 'off');
        set(handles.disable2, 'Visible', 'off', 'Value', 0);
        set(handles.minB, 'Visible', 'on');
        set(handles.maxB, 'Visible', 'on');
    case "INV"
        handles.operation = 3;
        set(handles.add, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.sub, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.mul, 'Value', 0, 'BackgroundColor', [0.94 0.94 0.94], 'ForegroundColor', [0 0 0]);
        set(handles.inv, 'Value', 1, 'BackgroundColor', [0.98 0.32 0.52], 'ForegroundColor', [1 1 1]);
        set(handles.add_icon, 'Visible', 'off');
        set(handles.sub_icon, 'Visible', 'off');
        set(handles.mul_icon, 'Visible', 'off');
        set(handles.inv_icon, 'Visible', 'on');
        set(handles.disable, 'Visible', 'on', 'Value', 1);
        set(handles.add_icon2, 'Visible', 'off');
        set(handles.sub_icon2, 'Visible', 'off');
        set(handles.mul_icon2, 'Visible', 'off');
        set(handles.inv_icon2, 'Visible', 'on');
        set(handles.disable2, 'Visible', 'on', 'Value', 1);
        set(handles.minB, 'Visible', 'off');
        set(handles.maxB, 'Visible', 'off');
        
        
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
        if handles.input_mode == 0
            handles.scene = "-INPUT-";
            set(handles.P3, 'visible', 'on');
        elseif handles.input_mode == 1
            handles.scene = "-INPUT2-";
            set(handles.P4, 'visible', 'on');
        end
       
        setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);

