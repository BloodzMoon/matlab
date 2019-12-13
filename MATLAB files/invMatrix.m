
function [ r ] = invMatrix( x )
[ m, n ] = size(x);

% -- append matrix
r = x;
r = [r eye(m)];

i = 1;
while i <= m
    % -- swap if error
    if r(i, i) == 0 
        if i+1 <= m
            tmp = r(i,:);
            r(i,:) = r(i+1,:);
            r(i+1,:) = tmp;
        else
            r = zeros(m);
            warndlg('Error guass' , 'Warning', 'modal');
            return
        end
    end
    
    % -- vector down divide alpha
    if i+1 <= m
        r(i+1:m, i) = r(i+1:m, i) / r(i, i);
    end
    
    % --  vector up divide alpha
    if i-1 >= 1
        r(1:i-1, i) = r(1:i-1, i) / r(i, i);
    end
    
    % -- vector down multiply vector right
    if i+1 <= m
        tmp = r(i+1:m, i) * r(i, i+1:m*2);
        r(i+1:m, i+1:m*2) = r(i+1:m, i+1:m*2) - tmp;
    end
    
    % -- vector up multiply vector right
    if i-1 >= 1
        tmp = r(1:i-1, i) * r(i, i+1:m*2);
        r(1:i-1, i+1:m*2) = r(1:i-1, i+1:m*2) - tmp;
    end
    
    % -- set some to zeros
    tmp = zeros(m);
    if i-1 >= 1
        r(1:i-1, i) = tmp(1:i-1, i);
    end
    if i+1 <= m
        r(i+1:m, i) = tmp(i+1:m, i);
    end
    
    % -- move i
    i = i+1;

end

% -- make identity
for i = 1:m
    r(i,:) = r(i,:)/r(i,i);
end

r = r(:, m+1:m*2);


return
