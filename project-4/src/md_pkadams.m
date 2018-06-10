function[Y] = md_pkadams(x,timelimit,stp)
%funkcja zwracajaca wektor wyznacziony metoda PK adamsa 
%dane wejsciowe
%x - wektor danych 
%timelimit - zakres czasu
%stp - dlugosc kroku
   
    Y = zeros(timelimit/stp,3); %wektor stanow x1, x2, czasu, i bledu
    hstp=stp/2;
    for i = 1:3 %generowanie punktow poczatkowych
        Y(i,3) = i*stp; %generowanie czasu
        k1 = md_fx(x); %pochodna w punkcie y(xn);
        k2 = md_fx(x+hstp*k1); %pochodna w punkcie y(xn+stp/2*k1) 
        k3 = md_fx(x+hstp*k2); %pochodna w punkcie y(xn+stp/2*k2)
        k4 = md_fx(x+stp*k3); %pochodna w punkcie y(xn+stp*k3)
        x=x+(1/6)*stp*(k1+2*k2+2*k3+k4); %obliczenie następnego punktu
        Y(i,1:2) = x; %zapisanie punktu do wektora
    end
    for i = 4:(timelimit/stp)
        Y(i,3) = i*stp; %gererowanie czasu
        tmp = x + stp/24*(55*md_fx(x) - 59*md_fx(Y(i-1,1:2)) + 37*md_fx(Y(i-2,1:2)) - 9*md_fx(Y(i-3,1:2))); % predykcja i ewaluacja
        x = x + stp/24*(9*md_fx(tmp) + 19*md_fx(x) - 5*md_fx(Y(i-1,1:2)) + md_fx(Y(i-2,1:2))); % korekcja i ewaluacja
        Y(i,1:2) = x; %zapis wyniku
    end
end

