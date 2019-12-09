
function [ ] = inputPage( hObject, handles )
% This is a INPUT random page. Update mouseSelect and hover here


% -- Back button
if checkHover(hObject, handles.back)
    handles.mouseSelect = "BACK";
    set(handles.back, 'BackgroundColor', [0.12 0.69 0.69]);
    setfigptr('coolpointer', handles.madlab);
    
% clear all button
else
    handles.mouseSelect = "NONE";
    % reset back button
    set(handles.back, 'BackgroundColor', [0.26 0.75 0.78]);
    
    setfigptr('circle', handles.madlab); 
end

guidata(hObject, handles);