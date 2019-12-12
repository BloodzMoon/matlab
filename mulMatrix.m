
function [ r ] = mulMatrix( x, y, size )
r = zeros(size);
    for i = 1:size
        for j = 1:size
            for k = 1:size
                r(i, j) = r(i, j) + x(i, k) * y(k, j);
            end
        end
    end
end
