
function [ ] = resultPage( hObject, handles )
% This is a RESULT page. Update mouseSelect and hover here

% -- Menu button
if checkHover(hObject, handles.backmenu)
    handles.mouseSelect = "BACKMENU";
    set(handles.backmenu, 'BackgroundColor', [0.12 0.69 0.69]);
    setfigptr('coolpointer', handles.madlab);
    
% clear all button
else
    handles.mouseSelect = "NONE";
    % reset back button
    set(handles.backmenu, 'BackgroundColor', [0.26 0.75 0.78]);
    
    setfigptr('circle', handles.madlab); 
end

guidata(hObject, handles);