(*
    ESAME febbraio 2021
    Implementare una funzione "f" che data una lista [a1,...,an], calcoli a1-a2+a3-a4+...
    La funzione così definita dovrà funzionare con liste di qualsiasi lunghezza.

    SOLUZIONE:
*)

    fun f [] = 0
     |  f (a::[]) = a
     |  f (a::b::[]) = a - b
     |  f (a::b::l) = a - b + f(l);


(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

 f [];
 f [1];
 f [1,2];
 f [1,2,3];
 f [1,2,3,4];
 f [3,3,3,3,3,3,3,3,3,3,3,3];
 f [3,3,3,3,3,3,3,3,3,3,3,3,3];