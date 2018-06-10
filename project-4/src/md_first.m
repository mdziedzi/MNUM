% Realizacja zadania 1 
% metoda RK4 ze stalym krokiem
clear; 
zero=[8 7; 0 0.4; 5 0; 0.01 0.001]; %wektor stanow poczatkowych
step = 0.0004; %krok

for k = 3:3
    data = md_rk4s(zero(k,:),20,step);
    h = figure;
    plot(data(:,1),data(:,2),'-o');
    l = size(data,1);
    hold on;
    grid on;
    name =  ['metoda RK4 krok:' num2str(step) ' podpunkt:' num2str(k)]; 
    title(name);
    saveas(h,name,'jpg');
end