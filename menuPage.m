function [ ] = menuPage( hObject, handles )
% This is a MENU page. Update mouseSelect and hover here

setfigptr('circle', handles.madlab);
handles.mouseSelect = "NONE";

% -- 2x2 button
if checkHover(hObject, handles.size2) && handles.size2_check.Value == 0
    handles.mouseSelect = "SIZE2";
    set(handles.size2_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);
else
    set(handles.size2_check, 'BackgroundColor', [0.65 0.65 0.65]);
end
% -- 3x3 button
if checkHover(hObject, handles.size3) && handles.size3_check.Value == 0
    handles.mouseSelect = "SIZE3";
    set(handles.size3_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);
else
    set(handles.size3_check, 'BackgroundColor', [0.65 0.65 0.65]);
end
% -- 4x4 button
if checkHover(hObject, handles.size4) && handles.size4_check.Value == 0
    handles.mouseSelect = "SIZE4";
    set(handles.size4_check, 'BackgroundColor', [0.5 0.5 0.5]);
    setfigptr('coolpointer', handles.madlab);
else
    set(handles.size4_check, 'BackgroundColor', [0.65 0.65 0.65]);
end

guidata(hObject, handles);


