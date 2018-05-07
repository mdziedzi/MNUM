% Funkcja wyznaczajaca punkty zerowe funkcji metoda Newtona
%
% IN:
% a0 - lewa strona zakresu
% fun - funkcja 
% iter - maksymalna liczba iteracji
%
% OUT:
% solution - wyznaczone miejsce zerowe
function solution = md_newton(fun, a0,iter)
  x0 = a0; 
  for k = 1:iter
    [fold, fpold] = feval(fun,x0); 
    dx = fold / fpold; 
    x0 = x0 - dx;
    fprintf('%3d & %12.3e & %12.3e & %12.3e \\\\ \n',k,dx,x0,fold);
    if(fold == 0)
        return
    end
    %dodatkowy warunek zatrzumania
	if fold==0 
        solution = x0;
        break; 
    end
  end
end
  