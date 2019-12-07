
function [ isHover ] = checkHover( hObject, obj )
% This function will check if mouse over the object
% How to use: input handles.(something) and hObject

% get mouse location
mouse = get(hObject, 'currentpoint'); 
mX = mouse(1); 
mY = mouse(2);

% get object location & size
o = get(obj, 'position'); 
oX = o(1); 
oY = o(2);
oW = o(3); 
oH = o(4);

% test to see if mouse is within the object bound. 
isHover = false;
if mX >= oX && mX <= (oX + oW) && mY >= oY && mY <= (oY + oH)
    isHover = true;
end

return

