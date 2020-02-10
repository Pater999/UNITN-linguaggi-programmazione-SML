(*
    ESAME febbraio 2020
    Testo:    
    Scrivere una funzione f che data una lista di interi restituisca true se essa è ordinata in ordine crescente
    false altrimenti

    SOLUZIONE:
*)

    fun f [] = true
     |  f (a::[]) = true
     |  f (a::b::l) = if a > b then false else f(b::l);


    (* OPPURE ALTRA SOLUZIONE VALIDA - presa dalle slide *)
    val rec f1 = fn l =>
        if List.null l then true
        else if List.null (tl l) then true
        else (hd l <= hd (tl l)) andalso f1 (tl l);

(* ESEMPIO ESECUZIONE: *)

    f [1,2,2,3,4];
    f[3,2,1];
    f[4,12,3,44,0];

    f1 [1,2,2,3,4];
    f1[3,2,1];
    f1[4,12,3,44,0];