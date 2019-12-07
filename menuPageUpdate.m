function [ ] = menuPageUpdate( hObject, handles )
% Mouse click event in MENU page

switch handles.mouseSelect
    case "SIZE2"
        handles.matrix_size = 2;
        set(handles.size2_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size3_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size4_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size2, 'FontWeight', 'bold');
        set(handles.size3, 'FontWeight', 'normal');
        set(handles.size4, 'FontWeight', 'normal');
    case "SIZE3"
        handles.matrix_size = 3;
        set(handles.size2_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size3_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size4_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size2, 'FontWeight', 'normal');
        set(handles.size3, 'FontWeight', 'bold');
        set(handles.size4, 'FontWeight', 'normal');
    case "SIZE4"
        handles.matrix_size = 4;
        set(handles.size2_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size3_check, 'Value', 0, 'BackgroundColor', [0.65 0.65 0.65]);
        set(handles.size4_check, 'Value', 1, 'BackgroundColor', [0.77 0.00 0.24]);
        set(handles.size2, 'FontWeight', 'normal');
        set(handles.size3, 'FontWeight', 'normal');
        set(handles.size4, 'FontWeight', 'bold');
       
    case "RANDOM"
        handles.input_mode = 0;
        set(handles.random_box, 'Value', 1);
        set(handles.manual_box, 'Value', 0);
        set(handles.random_box, 'ForegroundColor', [1 1 1]);
        set(handles.manual_box, 'ForegroundColor', [0 0 0]);
        set(handles.random_box, 'BackgroundColor', [0.77 0 0.24]);
        set(handles.manual_box, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.random_icon3,'position',get(handles.offscreen,'position'));
        set(handles.random_icon2,'position',get(handles.random_icon1,'position'));
        set(handles.manual_icon2,'position',get(handles.offscreen,'position'));
    case "MANUAL"
        handles.input_mode = 1;
        set(handles.random_box, 'Value', 0);
        set(handles.manual_box, 'Value', 1);
        set(handles.random_box, 'ForegroundColor', [0 0 0]);
        set(handles.manual_box, 'ForegroundColor', [1 1 1]);
        set(handles.random_box, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.manual_box, 'BackgroundColor', [0.77 0 0.24]);
        set(handles.manual_icon3,'position',get(handles.offscreen,'position'));
        set(handles.random_icon2,'position',get(handles.offscreen,'position'));
        set(handles.manual_icon2,'position',get(handles.manual_icon1,'position'));
end

guidata(hObject, handles);

