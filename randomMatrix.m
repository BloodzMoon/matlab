function [ ] = randomMatrix( hObject, handles )
% Random generate matrix!

% check input isNumber
mina = round(str2double(get(handles.minA, 'String')));
if isnan(mina)
    set(handles.minA, 'String', 'Min', 'Enable', 'inactive');
    warndlg('Min value must be number');
    return
end
maxa = round(str2double(get(handles.maxA, 'String')));
if isnan(maxa)
    set(handles.maxA, 'String', 'Max', 'Enable', 'inactive');
    warndlg('Max value must be number');
    return
end
if mina > maxa
    set(handles.minA, 'String', 'Min', 'Enable', 'inactive');
    set(handles.maxA, 'String', 'Max', 'Enable', 'inactive');
    warndlg('Min value must less than Max value');
    return
end
if handles.operation ~= 3
    minb = round(str2double(get(handles.minB, 'String')));
    if isnan(minb)
        set(handles.minB, 'String', 'Min', 'Enable', 'inactive');
        warndlg('Min value must be number');
        return
    end
    maxb = round(str2double(get(handles.maxB, 'String')));
    if isnan(maxb)
        set(handles.maxB, 'String', 'Max', 'Enable', 'inactive');
        warndlg('Max value must be number');
        return
    end
    if minb > maxb
        set(handles.minB, 'String', 'Min', 'Enable', 'inactive');
        set(handles.maxB, 'String', 'Max', 'Enable', 'inactive');
        warndlg('Min value must less than Max value');
        return
    end
end


% Generate matrix
N = handles.matrix_size;
for i = 1:N
    tmpA = [];
    tmpB = [];
    for j = 1:N
        tmpA = [tmpA randi([mina maxa])];
        if handles.operation ~= 3
            tmpB = [tmpB randi([minb maxb])];
        end
    end
    handles.matrixA = [handles.matrixA; tmpA];
    if handles.operation ~= 3
        handles.matrixB = [handles.matrixB; tmpB];
    end
end

set(handles.matArand, 'Data', handles.matrixA);
set(handles.matBrand, 'Data', handles.matrixB);

guidata(hObject, handles);



