
function [ r ] = invMatrix( x, size )
r = x;
I = eye(size);
% -- append matrix
r = [r I];

i = 1;
while i <= size
    % -- swap if error
    if r(i, i) == 0 
        if i+1 <= size
            tmp = r(i,:);
            r(i,:) = r(i+1,:);
            r(i+1,:) = tmp;
        else
            r = zeros(size);
            warndlg('Error guass');
            return
        end
    end
    
    % -- vector down divide alpha
    if i+1 <= size
        r(i+1:size, i) = r(i+1:size, i) / r(i, i);
    end
    
    % --  vector up divide alpha
    if i-1 >= 1
        r(1:i-1, i) = r(1:i-1, i) / r(i, i);
    end
    
    % -- vector down multiply vector right
    if i+1 <= size
        tmp = r(i+1:size, i) * r(i, i+1:size*2);
        r(i+1:size, i+1:size*2) = r(i+1:size, i+1:size*2) - tmp;
    end
    
    % -- vector up multiply vector right
    if i-1 >= 1
        tmp = r(1:i-1, i) * r(i, i+1:size*2);
        r(1:i-1, i+1:size*2) = r(1:i-1, i+1:size*2) - tmp;
    end
    
    % -- set some to zeros
    tmp = zeros(size);
    if i-1 >= 1
        r(1:i-1, i) = tmp(1:i-1, i);
    end
    if i+1 <= size
        r(i+1:size, i) = tmp(i+1:size, i);
    end
    
    % -- move i
    i = i+1;

end

% -- make identity
for i = 1:size
    r(i,:) = r(i,:)/r(i,i);
end

r = r(:, size+1:size*2);


return
