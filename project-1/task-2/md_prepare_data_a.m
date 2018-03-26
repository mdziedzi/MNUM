function [y] = md_prepare_data_a (n)

    A = zeros(n, n+1);    
    
    for w = 1:n
        for k = 1:n
            if w == k
                A(w,k) = 10;
            elseif (w == k-1) || (w == k+1) % todo
                A(w,k) = 3;
            else
                A(w,k) = 0;
            end
        end
    end
    
    for w = 1:n
        for k = n+1
            A(w,k) = 0.5 + (2.5 * w);
        end
    end
    
    y = A;
    
end