function [y] = md_prepare_data_b (n)

    A = zeros(n, n+1);    
    
    for w = 1:n
        for k = 1:n
            if w == k
                A(w,k) = 1/4;
            else
                A(w,k) = 3 * (w-k) + 4;
            end
        end
    end
    
    for w = 1:n
        for k = n+1
            A(w,k) = 3.5 - 0.4*w;
        end
    end
    
    y = A;
    
end