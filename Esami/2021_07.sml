(*
    ESAME luglio 2021
    Testo:    
    Si scriva una funzione conta (avente tipo ' 'a list -> int) che riceve come argomento una lista di ' 'a. 
    La funzione conta ritorna il numero di elementi della lista senza considerare i duplicati.
    Come esempio, l'invocazione conta ["pera", "pera", "pera", "pera"]; deve avere risultato 1, 
    conta ["red", "red", "green", "blue"]; deve avere risultato 3 e 
    conta [2, 3, 4, 2]; deve avere risultato 3.

    IMPORTANTE: notare il tipo della funzione!.

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

(* NOTE: UGUALE ad esame 2018_06.sml e 2020_06_T2.sml *)