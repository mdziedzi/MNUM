function md_exec (max_time) 

    n = 10;
    N = [];
    E = [];
    while true
        N = [N ; n];
        tic()
        A = md_prepare_data_c(n);
        n
        B = md_gauss_jordan(A);
        C = md_blad_residuum(A,B);
        D = md_norma_residuum(C);
        E = [E ; D];
        t = toc();
        if max_time < t
            break
        end
        n = n * 2;
    end
    N
    E
   
    plot(N,E);
    title('Zaleznosc bledu rozwiazania od liczby rownan');
    xlabel('liczba rownan n');
    ylabel('blad rozwiazania (norma residuum)');
end