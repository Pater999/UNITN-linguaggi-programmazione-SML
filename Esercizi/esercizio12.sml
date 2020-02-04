(*
    ESERCIZIO 12
    Testo:    
    Scrivere una funzione isUguale che dati come argomenti 2 liste ordinate restituisca true se le liste
    sono uguali e false altrimenti

    SOLUZIONE:
*)

    fun isUguale [] [] = true
     |  isUguale [] (a::b) = false
     |  isUguale (a::b) [] = false
     |  isUguale (a::l) (b::p) = if a <> b then false else isUguale l p;

(* ESEMPIO ESECUZIONE: *)

    isUguale [] [];
    isUguale [1] [1];
    isUguale [1,2,3,4] [1,2,3,4];
    isUguale [1,2,3,4] [];
    isUguale [1,2,3,4] [1,2,3,5];
    isUguale [1,2,3,4] [1,2,3];