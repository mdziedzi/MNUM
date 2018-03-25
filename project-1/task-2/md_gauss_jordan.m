
% k iterator kolumny
% w iterator wiersza
% A aktualny wiersz ktorym zeruje
% x(wiersz,kolumna)

function [y] = md_gauss_jordan (x)  
    for k = 1:(length(x)-1)
        A = x(k,:);
        A = A/A(k);
        x(k,:) = A;
        
        for w = 1:(length(x)-1)
            if k ~= w
               x(w,:) = A * x(w,k) * -1 + x(w,:);
            end
        end
    end
%     y = x;
    y = x(:,length(x));

end