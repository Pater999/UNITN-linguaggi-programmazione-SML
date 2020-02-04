(*
    ESERCIZIO 12
    Testo:    
    Scrivere una funzione isUguale che dati come argomenti 2 liste NON ordinate restituisca true se le liste
    sono uguali e false altrimenti

    SOLUZIONE:
*)

    val rec isMember = fn (a,l) =>
        if List.exists(fn n => n = a) l then true else false
    
    val rec containedIn = fn(l1,l2) =>
        if null (l1) then true
        else isMember (hd l1,l2) andalso containedIn(tl l1,l2) ;
    
    val rec isUguale = fn l1 => fn l2 =>
    containedIn(l1,l2) andalso containedIn (l2,l1);

(* ESEMPIO ESECUZIONE: *)

    isUguale [] [];
    isUguale [1] [1];
    isUguale [1,4,2,8] [8,1,4,2];
    isUguale [1,2,4,3] [11,24,56,7];
    isUguale [7,5,12,88] [7,88,12,5];
    isUguale [7,5,12,88] [7,5,12,88,13,15];