function [y] = md_prepare_data_c (n)

    A = zeros(n, n+1);    
    
    for w = 1:n
        for k = 1:n
            A(w,k) = 1 / (2 * (w+k+1));
        end
    end
    
    for w = 1:n
        for k = n+1
            A(w,k) = 5 / (3*w);
        end
    end
    
    y = A;
    
end