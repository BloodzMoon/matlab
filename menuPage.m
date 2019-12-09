function [ ] = menuPage( hObject, handles )
% This is a MENU page. Update mouseSelect and hover here


% -- 2x2 button
if checkHover(hObject, handles.size2) && handles.size2.Value == 0
    handles.mouseSelect = "SIZE2";
    set(handles.size2, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- 3x3 button
elseif checkHover(hObject, handles.size3) && handles.size3.Value == 0
    handles.mouseSelect = "SIZE3";
    set(handles.size3, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- 4x4 button
elseif checkHover(hObject, handles.size4) && handles.size4.Value == 0
    handles.mouseSelect = "SIZE4";
    set(handles.size4, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);


% -- + button
elseif checkHover(hObject, handles.add) && handles.add.Value == 0
    handles.mouseSelect = "ADD";
    set(handles.add, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- - button
elseif checkHover(hObject, handles.sub) && handles.sub.Value == 0
    handles.mouseSelect = "SUB";
    set(handles.sub, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- x button
elseif checkHover(hObject, handles.mul) && handles.mul.Value == 0
    handles.mouseSelect = "MUL";
    set(handles.mul, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- inv button
elseif checkHover(hObject, handles.inv) && handles.inv.Value == 0
    handles.mouseSelect = "INV";
    set(handles.inv, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);    
    
    
% -- Random button
elseif (checkHover(hObject, handles.random) || checkHover(hObject, handles.random_icon)) && handles.random.Value == 0
    handles.mouseSelect = "RANDOM";
    set(handles.random, 'BackgroundColor', [0.9 0.9 0.9]);
    set(handles.random_icon, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
% -- Manual button
elseif (checkHover(hObject, handles.manual) || checkHover(hObject, handles.manual_icon)) && handles.manual.Value == 0
    handles.mouseSelect = "MANUAL";
    set(handles.manual, 'BackgroundColor', [0.9 0.9 0.9]);
    set(handles.manual_icon, 'BackgroundColor', [0.9 0.9 0.9]);
    setfigptr('coolpointer', handles.madlab);
    

% -- Next button
elseif checkHover(hObject, handles.next) && handles.next.Value == 0
    handles.mouseSelect = "NEXT";
    set(handles.next, 'BackgroundColor', [0.12 0.69 0.69]);
    setfigptr('coolpointer', handles.madlab);
    
% -- clear all button    
else
    handles.mouseSelect = "NONE";
    % reset size button
    if handles.size2.Value == 0
        set(handles.size2, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.size3.Value == 0
        set(handles.size3, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.size4.Value == 0
        set(handles.size4, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    % reset tool button
    if handles.add.Value == 0
        set(handles.add, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.sub.Value == 0
        set(handles.sub, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.mul.Value == 0
        set(handles.mul, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.inv.Value == 0
        set(handles.inv, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    % reset mode button
    if handles.random.Value == 0
        set(handles.random, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.random_icon, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    if handles.manual.Value == 0
        set(handles.manual, 'BackgroundColor', [0.94 0.94 0.94]);
        set(handles.manual_icon, 'BackgroundColor', [0.94 0.94 0.94]);
    end
    % reset next button
    if handles.next.Value == 0
        set(handles.next, 'BackgroundColor', [0.26 0.75 0.78]);
    end
    setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);


