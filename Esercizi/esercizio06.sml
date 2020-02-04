(*
    ESERCIZIO 6
    Testo:
    Scrivere una funzione che restituisca -1 per i numeri negativi, 0 per 0 e +1 per
    argomenti positivi. Si può usare il pattern matching?

    SOLUZIONE:
*)

    fun es(x) = if (x=0) then 0 else if (x<0) then ~1 else 1;

    (* Non si può usare pattern matching *)

(* ESEMPIO ESECUZIONE: *)
    
    es 0;
    es 2340;
    es ~53;

    
    



