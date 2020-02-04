(*
    ESERCIZIO 15
    Testo:    
    Scrivere una funzione isPalindroma che restituisca true se una lista è palindroma false altrimenti.

    es. isPalindroma [1,2,3,4] 
    false

    es. isPalindroma [1,2,3,2,1]
    true

    SOLUZIONE:
*)

    val rec isPalindroma = fn l => if l = List.rev l then true else false;

(* ESEMPIO ESECUZIONE: *)

    isPalindroma [1,2,3,2,1];
    isPalindroma ["A","A","D","D","A","A"];
    isPalindroma [1,2,3];