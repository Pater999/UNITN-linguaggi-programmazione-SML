(*  
    ESAME giugno 2018
    Si scriva una funzione conta (avente tipo ''a list -> int) che riceve come argomento una lista di ''a l.
    La funzione conta ritorna il numero di elementi della lista senza considerare i duplicati.

    SOLUZIONE:
*)	

    val rec conta = fn [] => 0
                       | a::b => if (List.exists ((fn y => a = y)) b) then (conta b) else 1+(conta b);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    conta ["pera", "pera", "pera", "pera"];
    conta ["red", "red", "green", "blue"];
    conta ["red"];
    conta [];
    conta [1,2,4,5,6,0,1,4,5];
    conta [true, false, true, false];
    conta [#"A",#"a",#"B",#"b"];