
z =[];
x = [];
e = 0.1;
for i = 1:10
    [z(i),x(i)] = md_gauss_seidel_for_plot(md_prepare_data_a(1280), e);
    e = e/10;
end
plot(x,z);
title('Zaleznosc bledu wyniku od ilosci iteracji');
xlabel('ilosc iteracji');
ylabel('blad wyniku');

    
    