function [y] = md_gauss_seidel (A, e)

    % sekcja inicjalizacyjna
    w = size(A,1);
    k = size(A,2);
    r = 1;
    x = zeros(w,1);
    b = A(:,k);
    A = A(:, 1:k-1);
    iter = 1;
    
    % petla glowna
    while(r>e)
        z = x; % zachowanie wyniku poprzedniej iteracji
        for i = 1:w
            % wyliczenie nowych wartosci dla wektora x
            x(i,1) =  (1/A(i, i)) * (b(i) - A(i,:) * x + A(i, i) * x(i)); 
        end
        % liczymy blad z normy euklidesowej
        r = x-z;
        r = norm(r);
        iter = iter + 1;
    end
    y = x;
     
end

