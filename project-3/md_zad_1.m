% zadanie nr 1

clear; 
x  = 2 : 0.1 : 11;
plot(x, md_fun_1(x))
grid on
axis([2 11 -10 4])
hold on
plot([4 4], [-10 4], 'g-');
plot([6.1 6.1], [-10 4], 'g-');
plot([6.9 6.9], [-10 4], 'b-');
plot([9 9], [-10 4], 'b-');
plot(5.2353163129141116, 0, '.','MarkerSize', 24, 'MarkerEdge', 'k');
plot(7.4317177653721664, 0,'.','MarkerSize',24,'MarkerEdge','k');

n=100; 
x1 = 4; 
x2 = 5; 

% algorytmiczne wyznaczanie przedzialow izolacji
for k=1:2
    for j=1:n
        if md_fun_1(x1)*md_fun_1(x2)<0
            a = x1;
            b = x2;
            fprintf('Wyniki dla %d miejsca zerowego w przedziale [%d,%d]\n',k,a,b);
            md_bisection('md_fun_1',a,b,100);
            md_secans('md_fun_1',a,b,100);
            md_newton('md_fun_1',a,100);
            x1 = 8; 
            x2 = 9; 
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

md_bisection('md_fun_1',5.2,5.3,100);
            md_secans('md_fun_1',5.2,5.3,100);
            md_newton('md_fun_1',7.3,100);
