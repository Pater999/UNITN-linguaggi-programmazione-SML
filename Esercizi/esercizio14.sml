(*
    ESERCIZIO 14
    Testo:    
    Scrivere una funzione sum che somma una lista di interi

    SOLUZIONE:
*)

    val rec sum = fn [] => 0
                   | (a::l) => a + sum l;

(* ESEMPIO ESECUZIONE: *)

    sum [1,2];
    sum [2,4,6];