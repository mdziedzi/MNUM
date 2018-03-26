
z =[];
x = [];
e = 0.1;
for i = 1:150
    [z(i),x(i)] = md_gauss_seidel(md_prepare_data_d, e);
    e = e/10;
end
plot(x,z);
title('Zaleznosc bledu wyniku od ilosci iteracji');
xlabel('ilosc iteracji');
ylabel('blad wyniku');

    
    