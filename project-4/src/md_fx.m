function [D] = md_fx(x)
% Funkcja zwracająca pochodne  

D(1) = x(2) + x(1)*(0.2 -x(1)^2 -x(2)^2); 
D(2) = -x(1) + x(2)*(0.2 -x(1)^2 -x(2)^2);

end

