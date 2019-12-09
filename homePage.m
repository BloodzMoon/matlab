
function [ ] = homePage( hObject, handles )
% This is a HOME page. Update mouseSelect and hover here


% -- Click me! button
if checkHover(hObject, handles.start_button)
    handles.mouseSelect = "START";
    set(handles.start_button, 'Fontsize', 14);
    setfigptr('coolpointer', handles.madlab);
else
    handles.mouseSelect = "NONE";
    set(handles.start_button, 'Fontsize', 12);
    setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);


