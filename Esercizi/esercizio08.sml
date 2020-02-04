(*
    ESERCIZIO 8
    Testo:    
    Scrivere una funzione "mul" che calcoli n ∗ z senza usare la moltiplicazione, 
    dove n è un numero intero positivo e z è un numero intero

    SOLUZIONE:
*)

    fun mul(n,z) = if(n=0) then 0 else if (n=1) then z else z+mul(n-1,z);
    
(* ESEMPIO ESECUZIONE: *)

    mul(3,4);
    mul(0,1);
    mul(3,0);
    mul(10,10);