function [ ] = menuPage( hObject, handles )
% This is a MENU page. Update mouseSelect and hover here


% -- 2x2 button
if checkHover(hObject, handles.size2) && handles.size2_check.Value == 0
    handles.mouseSelect = "SIZE2";
    set(handles.size2_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);
% -- 3x3 button
elseif checkHover(hObject, handles.size3) && handles.size3_check.Value == 0
    handles.mouseSelect = "SIZE3";
    set(handles.size3_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);
% -- 4x4 button
elseif checkHover(hObject, handles.size4) && handles.size4_check.Value == 0
    handles.mouseSelect = "SIZE4";
    set(handles.size4_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);


% -- Random button
elseif checkHover(hObject, handles.random_box) && handles.random_box.Value == 0
    handles.mouseSelect = "RANDOM";
    set(handles.random_box, 'BackgroundColor', [0.9 0.9 0.9]);
    set(handles.random_icon3,'position',get(handles.random_icon1,'position'));
    setfigptr('coolpointer', handles.madlab);
% -- Manual button
elseif checkHover(hObject, handles.manual_box) && handles.manual_box.Value == 0
    handles.mouseSelect = "MANUAL";
    set(handles.manual_box, 'BackgroundColor', [0.9 0.9 0.9]);
    set(handles.manual_icon3,'position',get(handles.manual_icon1,'position'));
    setfigptr('coolpointer', handles.madlab);
else
    handles.mouseSelect = "NONE";
    % reset size button
    if handles.size2_check.Value == 0
        set(handles.size2_check, 'BackgroundColor', [0.65 0.65 0.65]);
    end
    if handles.size3_check.Value == 0
        set(handles.size3_check, 'BackgroundColor', [0.65 0.65 0.65]);
    end
    if handles.size4_check.Value == 0
        set(handles.size4_check, 'BackgroundColor', [0.65 0.65 0.65]);
    end
    % reset mode button
    if handles.random_box.Value == 0
        set(handles.random_box, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.random_icon3,'position',get(handles.offscreen,'position'));
    end
    if handles.manual_box.Value == 0
        set(handles.manual_box, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.manual_icon3,'position',get(handles.offscreen,'position'));
    end
    setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);


