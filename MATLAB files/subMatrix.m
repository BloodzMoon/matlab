
function [ r ] = subMatrix( x, y )
[ m, n ] = size(x);
r = zeros(m);

for i = 1:m
    for j = 1:n
        r(i,j) = x(i,j) - y(i,j);
    end
end
