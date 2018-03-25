function [y] = md_norma_residuum (x)
    w = size(x,1);
    sum = 0;
    for i = 1:w
       sum = sum + (x(i,1) * x(i,1));
    end
    y = sqrt(sum);
    
end