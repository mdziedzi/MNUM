% Funkcja wyznaczajaca punkty zerowe funkcji metoda bisekcji
%
% IN:
% a0, b0 - zakres
% md_fun_1 - funkcja 
% iter - maksymalna liczba iteracji
%
% OUT:
% solution - wyznaczone miejsce zerowe

function soluiton = md_bisection(md_fun_1,a0,b0,iter)

  a = a0; 
  b = b0;
  % inicjalizacja wartosciami poczatkowymi
  fa =feval(md_fun_1,a);     
  fb =feval(md_fun_1,b);
  for k=1:iter
    % obliczenie srodka odcinka
    xm = a + 0.5*(b-a);    
    %  f(xm) 
    fm = feval(md_fun_1,xm);      
%     fprintf('%3d    [%12.10f;%12.10f]	%12.16f     %12.3e\n',k,a,b,xm,fm);
    fprintf('%3d & [%12.10f;%12.10f] & %12.16f & %12.3e \\\\ \n',k,a,b,xm,fm);
    if(fm == 0)
        return
    end
    %  Zero lezy w przedziale [xm,b], zamiana a
    if sign(fm)==sign(fa)    
        a = xm;
        fa = fm;
    %  Zero lezy w przedziale [a,xm], zamiana b
    else                     
        b = xm;
        fb = fm;
    end
    %dodatkowy warunek zakonczenia wykonywania
    if(fm == 0) 
        return
    end
  end
  soluiton = xm; 
  return
end
	

		
