function  md_exec_3 ()


        A = md_prepare_data_d();
        
        B = md_gauss_jordan(A);
        C = md_blad_residuum(A,B);
        D = md_norma_residuum(C);
        A
        B
        C
        D

end

