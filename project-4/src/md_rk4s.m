function [Y] = md_rk4s(x,timelimit,stp)
% Rozwiazanie ukladu metoda Rungego-Kutty czwartego rzędu
% x - stan poczatkowy
% timelimit - zakres czasu
% step - rozmiar kroku

    Y = zeros(ceil(timelimit/stp),3); %macierz stanów x1, x2 i czasu
    hstp=stp/2; %połowa kroku
    for i = 1:(ceil(timelimit/stp))
        Y(i,3) = i*stp;  %zapisanie czasu próbki
        k1 = md_fx(x); %pochodna w punkcie y(xn)
        k2 = md_fx(x+hstp*k1); %pochodna w punkcie y(xn+step/2*k1)   
        k3 = md_fx(x+hstp*k2); %pochodna w punkcie y(xn+step/2*k2)
        k4 = md_fx(x+stp*k3); %pochodna w punkcie y(xn+step*k3)
        x=x+(1/6)*stp*(k1+2*k2+2*k3+k4); %obliczenie następnego punktu
        Y(i,1:2) = x;  
        %zapisanie punktu do wektora
    end
end

