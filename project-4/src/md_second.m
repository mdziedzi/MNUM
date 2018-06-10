% Realizacja zadania 2 
% metoda metoda predyktor-korektor Adamsa 4-rzedu
clear; 
zero=[8 7; 0 0.4; 5 0; 0.01 0.001]; %wektor stanow poczatkowych
step = 0.01; %krok

for k = 1:1
    
    data = md_pkadams(zero(k,:),20,step);
   
    h = figure;%('visible','off');
    plot(data(:,1),data(:,2),'-o');
    l = size(data,1);
    hold on;
    xl = get(gca,'xlim');
    yl = get(gca,'ylim');
    zl = get(gca,'zlim');
    grid on; 
    name =  ['metoda Adamsa krok:' num2str(step) ' podpunkt:' num2str(k)];
    title(name);
    saveas(h,name,'jpg'); 
end