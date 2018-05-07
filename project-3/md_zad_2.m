%skrypt generujacy wyniki do zadania 2
%Generowanie wykresu funkcji aby sprawdzic poprwanosc otrzymanych rozwiazan 
clear;
x  = -10: .1 : 20;
plot(x, md_fun_2(x))
grid on
% axis([-5 2 -100 50])
hold on
plot(1.0420, 0, '.','MarkerSize', 24, 'MarkerEdge', 'k');
plot(7.4776, 0, '.','MarkerSize', 24, 'MarkerEdge', 'k');



n=100; 
x1 = -8; 
x2 = -7; 

% x1 = 4
% x2=5

% algorytmiczne wyznaczanie przedzialow izolacji
for k=1:10
    for j=1:n
        if md_fun_1(x1)*md_fun_1(x2)<0
            a = x1;
            b = x2;
            fprintf('Wyniki dla %d miejsca zerowego w przedziale [%d,%d]\n',k,a,b);
            MM1('md_fun_2', x1, (x1+x2)/2, x2, 0.001)
            x1 = x1+1; 
            x2 = x2 +2; 
            break;
        elseif abs(md_fun_1(x1))<abs(md_fun_1(x2))
            x1 = x1+1.1*(x1-x2);
        else
            x2 = x2+1.1*(x2-x1);
        end
        %wyjscie z petli po przekroczeniu przedzialu
        if(x1>11)&&(x2<(2))
            break; 
        end
    end
end
