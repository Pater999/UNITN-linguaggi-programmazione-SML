(*
    ESERCIZIO 11
    Testo:    
    Scrivere una funzione isOrdinata che data una lista restituisca true se essa è ordinata in ordine crescente
    false altrimenti

    SOLUZIONE:
*)

    fun isOrdinata [] = true
     |  isOrdinata (a::[]) = true
     |  isOrdinata (a::b::l) = if a > b then false else isOrdinata(b::l);


    (* OPPURE *)
    val rec ordered = fn l =>
        if List.null l then true
        else if List.null (tl l) then true
        else (hd l < hd (tl l)) andalso ordered (tl l);

(* ESEMPIO ESECUZIONE: *)

    isOrdinata [1,2,3,4];
    isOrdinata[3,2,1];
    isOrdinata[4,12,3,44,0];

    ordered [1,2,3,4];
    ordered[3,2,1];
    ordered[4,12,3,44,0];