%skrypt generujacy rozwziacanie zadania przy pomocy funkcji ode45 
%w celu porowiania z zaimplementowanymi metodami
%Realizacja podpunktu 3 metoda metoda RK4 zmienny krok
clear; 
zero=[8 7; 0 0.4; 5 0; 0.01 0.001]; %wektor stanow poczatkowych
data = zeros(1,3);

for k = 1:4
    
   
    data = ode45(@md_fxy,[0 20],transpose(zero(k,:)));
    
    h = figure;
    %('visible','off');
    plot3(data.y(1,:),data.y(2,:),data.x,'-o');
    %l = size(data.x);
    hold on;
    %xl = get(gca,'xlim');
    %yl = get(gca,'ylim');
    %zl = get(gca,'zlim');
    %scatter2(data.y(1,:),data.y(2,:),repmat(zl(1),[l,1]),'.');
    %scatter2(data.y(1,:),repmat(yl(2),[l,1]),data.x,'.');
    %scatter2(repmat(xl(2),[l,1]),data.y(2,:),data.x,'.');
    grid on; 
    name =  ['metoda ode45 3d podpunkt:' num2str(k)];
    title(name);
    saveas(h,name,'jpg'); 
end