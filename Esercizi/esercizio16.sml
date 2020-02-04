(*
    ESERCIZIO 16
    Testo:    
    Scrivere una funzione "copy: int * ’a -> ’a list" tale che:
    copy(0,5) = []
    copy(1,5) = [5]
    copy(3,"a") = ["a","a","a"]
    copy(3,copy(1,8)) = [[8],[8],[8]]

    SOLUZIONE:
*)

    fun copy(0,x) = []
      | copy(n,x) = x::copy(n-1,x);
    
(* ESEMPIO ESECUZIONE: *)

    copy(0,5);
    copy(1,5);
    copy(3,"a");
    copy(3,copy(1,8));
