
function [A_out] =  gauss_loop(A)

    [m,n] = size(A);
    if m < n-1
       A = [A;zeros([n-1-m,n])]; 
    end
    
    for i = 1:m
        if not (A(i,i) == 0 && isequal(A(i+1:m,i),zeros(size(A(i+1:m,i)))))
            while  A(i,i) == 0
                temp = A(i,:);

                A(i,:) = A(i+1,:);

                A(i+1,:) = temp;

            end
            A(i,:) = A(i,:)/A(i,i)
            if i+1 <= m
                l =  A(i+1:m,i);
                A(i+1:m,i+1:n) = A(i+1:m,i+1:n) - l*A(i,i+1:n);
                A(i+1:m,i) = zeros(size( A(i+1:m,i)));
            end
            if i-1 >= 1
                u = A(1:i-1,i);
                A(1:i-1,i+1:n) = A(1:i-1,i+1:n) -  u*A(i,i+1:n);
                A(1:i-1,i) = zeros(size(A(1:i-1,i)));
            end
        end
    end
    
    A_out = A;
return