function [r, iter] = md_gauss_seidel_for_plot (A, e)

    % sekcja inicjalizacyjna
    w = size(A,1);
    k = size(A,2);
    r = 1;
    x = zeros(w,1);
    b = A(:,k);
    A = A(:, 1:k-1);
    iter = 1;
    
    L = zeros(w,w);
D = zeros(w,w);
U = zeros(w,w);

    
    %Sprawdzenie warunku dostatecznego zbieznosci - silnej dominacji
    %diagonalnej macierzy A
    for i = 1:w
        %Sumujemy wszystkie elementy w wierszu, poza diagonalnym
        sum = 0;
        for j = 1:w    
            if i~=j
                sum = sum + abs(A(i,j));
            end
        end
        %Jesli suma jest wieksza od elementu to warunek nie jest spelniony
        if sum > abs(A(i,i))
            disp('Warunek silnej dominacji diagonalnej nie jest spelniony');
        return
        end
    end
 
% %Stworzenie macierzy trojkatnych oraz diagonalnej
% for i = 1:w
%     for j = 1:w
%         if(i<j)
%             U(i,j) = A(i,j);
%         elseif(i>j)
%             L(i,j) = A(i,j);
%         else
%             D(i,j) = A(i,j);
%         end
%     end
% end

    
    % petla glowna
    while(r>e)
        z = x; % zachowanie wyniku poprzedniej iteracji
        for i = 1:w
            % wyliczenie nowych wartosci dla wektora x
            x(i,1) =  (1/A(i, i)) * (b(i) - A(i,:) * x + A(i, i) * x(i)); 
        end
        % liczymy blad z normy euklidesowej
        r = x-z;
        r = norm(r);
        iter = iter + 1;
    end
   
end

