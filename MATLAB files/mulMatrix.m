
function [ r ] = mulMatrix( x, y )
[ m, n ] = size(x);
r = zeros(m);

for i = 1:m
    for j = 1:n
        for k = 1:m
            r(i, j) = r(i, j) + x(i, k) * y(k, j);
        end
    end
end

