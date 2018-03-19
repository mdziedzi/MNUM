% Marcin Dziedzic
% projekt 1 
% zadanie 1.4.1

tic()
eps=1;

disp('duble precision: ')


while eps+1~=1 % eps jest najmniejsza wartoscia taka ze po dodaniu do 1 wynik jest rozny od 1
eps=eps/2; % dzielimy przez 2 gdyz liczby sa zapisane w rejestrach binarnie 
end

eps=eps*2; % mnoze przez 2 gdyz wychodzi z petli gdy 1+eps=1 a eps jest liczba taka ze 1+eps~=1
eps

toc()
disp('single precision: ')


tic()
eps=1;
eps=single(eps);%na single precion

while eps+1~=1
eps=eps/2;
end

eps=eps*2;
eps
toc()