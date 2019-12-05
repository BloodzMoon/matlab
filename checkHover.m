function [ isHover ] = checkHover( obj, mouse )
% check if mouse is over the object
oX = obj(1)+10.05; 
oY = obj(2)+3.65;
oW = obj(3); 
oH = obj(4);

mX = mouse(1);
mY = mouse(2);

    isHover = false;
    if mX >= oX && mX <= (oX + oW) && mY >= oY && mY <= (oY + oH)
        isHover = true;
    end
return

