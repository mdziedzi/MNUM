
% k iterator kolumny
% w iterator wiersza
% A aktualny wiersz ktorym zeruje
% x(wiersz,kolumna)

function [y] = md_gauss_jordan (x)  
    for k = 1:(length(x)-1) % iterujemy po kazdej kolumnie
        A = x(k,:);
        A = A/A(k); % dziele aby uzyskac 1 na przekontnej
        x(k,:) = A;
        
        for w = 1:(length(x)-1) % iterujemy po kazdym wierszu w danej kolumnie
            if k ~= w
               x(w,:) = A * x(w,k) * -1 + x(w,:); % zerowanie kolumny oprocz przekatnej
            end
        end
    end
%      y = x;
     y = x(:,length(x));

end