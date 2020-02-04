(*
    ESERCIZIO 4
    Testo:
    La radice quadrata intera positiva di un numero intero non negativo è una funzione
    introot tale che "introot m" è il più grande intero tale che n * n è minore
    pari o uguale a m. Definire questa funzione in ML.

    es. introot 15
    3*3 = 9 <= 15 --> return 3
    es. introot 16
    4*4 = 16 <= 16 --> return 4

    SOLUZIONE:
*)

    fun introot m = 
        let 
            fun aux(k,m) = if k*k > m then k-1 else aux(k+1,m)
        in 
            aux(0,m)
    end;
    

(* ESEMPIO ESECUZIONE: *)
    
    introot 15;
    introot 16;
    


