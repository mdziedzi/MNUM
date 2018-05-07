% implementacja algorytmu Mullera MM1
% Funkcja zwraca rozwiazanie oraz
% macierz wartosci i punktow 
function [x,mm]= md_MM1(fun,x0,x1,x2,pre)
  i=1;
  x=100;
  counter = 0;
  while abs(feval(fun, x))>pre
      counter = counter +1;
    z0=x0-x2;
    z1=x1-x2;
    c=feval(fun, x2);% Rozwiazujemy uklad rownan liniowych 
% by otrzymac wszystkie wspolczynniki paraboli
    A=[z0^2,z0;z1^2,z1];
    B=[feval(fun, x0)-c;feval(fun, x1)-c];
    r=A\B;
    a=r(1);
    b=r(2);
    % Wybor warunka minimalnego dla z
    if abs(b+sqrt(b.^2-4*a*c))>=abs(b-sqrt(b.^2-4*a*c)) 
      zmin=((-2)*c)/(b+sqrt(b.^2-4*a*c));
    else
      zmin=((-2)*c)/(b-sqrt(b.^2-4*a*c));
    end
    % obliczenie szukanego pierwiastka x
    x=x2+zmin;
    mm(i,1)=x;
    mm(i,2)=feval(fun,x);
    %szukamy najbliszego pierwiastka
    %ktory jest oddalony od x
    p0=abs(x-x0);
    p1=abs(x-x1);
    p2=abs(x-x2);
    if p0>p1 %gdy x0 jest dalej
      m=x1;
      x1=x0;
      x0=m;
    end
    if p1>p2 %gdy x1 jest dalej niz x2
    m=x2;
    x2=x1;
    x1=m;
    end
    x2=x;
    if isnan(c) 
      break;
    end
    i = i +1;
  end
  counter
end
