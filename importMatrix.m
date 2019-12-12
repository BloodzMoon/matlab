function [ ] = importMatrix( hObject, handles, matrix )
% import data from excel file

N = handles.matrix_size;
[filename,path] = uigetfile('*.xlsx');
switch N
    case 2
        range = 'A1:B2';
    case 3
        range = 'A1:C3';
    case 4
        range = 'A1:D4';
end
M = xlsread(fullfile(path, filename), 'Sheet1', range);

isValid = sum(isnan(M(:)));
if ~isValid
    if matrix == 'A'
        set(handles.matA, 'Data', M);
    elseif matrix == 'B'
        set(handles.matB, 'Data', M);
    end
else
    warndlg("Can't read data from file", 'modal');
    return
end

guidata(hObject, handles);

