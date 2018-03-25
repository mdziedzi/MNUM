function [R1] = md_blad_residuum (A, x)
    
    w = size(A,1); % ilosc wierszy
    R = zeros(w);
    for i = 1:w
        R(:,i) = A(:,i);
    end
    
    b = A(:,i+1);

    R1 = R * x - b;
end