% Funkcja wyznaczajaca punkty zerowe funkcji metoda siecznych
%
% IN:
% a0, b0 - zakres
% md_fun_1 - funkcja 
% iter - maksymalna liczba iteracji
%
% OUT:
% solution - wyznaczone miejsce zerowe
function solution = md_secans(md_fun_1, a0, b0, iter)
  a = a0;
  b = b0;
  % poczatkowa wartosc funkcji
  fa = feval(md_fun_1,a); 
  for k = 1:iter
    fb = feval(md_fun_1,b);
    dx = fb * (b-a) / (fb-fa); 
    xm = b-dx; 
    if(isnan(xm))
        return
    end
    a = b;
    b = xm;
    fa = fb;
    solution = b;
    fprintf('%3d & [%12.10f;%12.10f] & %12.16f & %12.3e \\\\ \n',k,a,b,xm,fb);
    %dodatkowy warunek zakonczenia wykonywania
    if(fb == 0) 
        return
    end
  end
end
