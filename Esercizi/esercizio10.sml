(*
    ESERCIZIO 10
    Testo:    
    Scrivere una funzione "f" che dato un numero x e una lista di interi ordinata
    restituisca una lista ordinata contente x.

    es. f 5 [1,2,3,4,6,7] 
    [1,2,3,4,5,6,7]

    es.  f 5 [5,5,5,5,6] 
    [5,5,5,5,5,6]

    SOLUZIONE:
*)

    fun f x [] = x::[]
     |  f x (a::b) = if x > a then a::(f x b) else x::(a::b);
    
(* ESEMPIO ESECUZIONE: *)

    f 5 [1,2,3,4,6,7];
    f 5 [5,5,5,5,6];
    f 1 [];
    f 9 [1,2];