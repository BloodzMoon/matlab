
function [ ] = inputPage2( hObject, handles )
% This is a INPUT manual page. Update mouseSelect and hover here


% -- import button
if checkHover(hObject, handles.importA)
    handles.mouseSelect = "IMPORTA";
    set(handles.importA, 'BackgroundColor', [0.89 0.24 0.45]);
    setfigptr('coolpointer', handles.madlab);
elseif checkHover(hObject, handles.importB)
    handles.mouseSelect = "IMPORTB";
    set(handles.importB, 'BackgroundColor', [0.89 0.24 0.45]);
    setfigptr('coolpointer', handles.madlab);

% -- Clear button
elseif checkHover(hObject, handles.clearA)
    handles.mouseSelect = "CLEARA";
    set(handles.clearA, 'BackgroundColor', [0.31 0.31 0.31]);
    setfigptr('coolpointer', handles.madlab);
elseif checkHover(hObject, handles.clearB)
    handles.mouseSelect = "CLEARB";
    set(handles.clearB, 'BackgroundColor', [0.31 0.31 0.31]);
    setfigptr('coolpointer', handles.madlab);
    
% -- Back button
elseif checkHover(hObject, handles.back2)
    handles.mouseSelect = "BACK";
    set(handles.back2, 'BackgroundColor', [0.12 0.69 0.69]);
    setfigptr('coolpointer', handles.madlab);
    
% clear all button
else
    handles.mouseSelect = "NONE";
    % reset import button
    set(handles.importA, 'BackgroundColor', [0.98 0.32 0.52]);
    set(handles.importB, 'BackgroundColor', [0.98 0.32 0.52]);
    % reset clear button
    set(handles.clearA, 'BackgroundColor', [0.5 0.5 0.5]);
    set(handles.clearB, 'BackgroundColor', [0.5 0.5 0.5]);
    % reset back button
    set(handles.back2, 'BackgroundColor', [0.26 0.75 0.78]);
    
    setfigptr('circle', handles.madlab); 
end

guidata(hObject, handles);