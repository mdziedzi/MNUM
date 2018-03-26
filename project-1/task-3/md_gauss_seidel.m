function [y] = md_gauss_seidel (A, e)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

    w = size(A,1);
    k = size(A,2);
    
%     res = zeros(w,1);

    r = 1;
    x = zeros(w,1);
    b = A(:,k);
    A = A(:, 1:k-1);
    while(r>e)
        z = x;
        for i = 1:w
            x(i,1) =  (1/A(i, i)) * (b(i) - A(i,:) * x + A(i, i) * x(i));

        end
        r = x-z;
        r = norm(r);
    end
    y = x;
end

