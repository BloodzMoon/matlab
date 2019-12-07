
function [ ] = homePage( hObject, handles )
% This is a HOME page. Update mouseSelect and hover here


% -- Click me! button
if checkHover(hObject, handles.start_button)
    handles.mouseSelect = "START";
    set(handles.start_button, 'Fontweight', 'bold');
    set(handles.start_button, 'Fontsize', 14);
    set(handles.start_button, 'ForegroundColor', [0.77 0 0.24]);
    setfigptr('coolpointer', handles.madlab);
else
    handles.mouseSelect = "NONE";
    set(handles.start_button, 'Fontweight', 'normal');
    set(handles.start_button, 'Fontsize', 12);
    set(handles.start_button, 'ForegroundColor', [0 0 0]);
    setfigptr('circle', handles.madlab);
end

guidata(hObject, handles);


