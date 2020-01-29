(*  
    ESAME giugno 2016 - TURNO 2
    Si scriva una funzione noduplen (avente tipo ''a list -> int) che riceve come argomento una lista di ''a l.
    La funzione noduplen ritorna il numero di elementi della lista senza considerare i duplicati.
    
    Come esempio, l’invocazione
    noduplen ["pera", "pera", "pera", "pera"];
    deve avere risultato 1;
    noduplen ["red", "red", "green", "blue"];
    deve avere risultato 3.

    SOLUZIONE:
*)	

    val rec noduplen = fn [] => 0
                       | a::[] => 1
                       | a::b => if (List.exists ((fn y => a = y)) b) then 0+(noduplen b) else 1+(noduplen b); 
    

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    noduplen ["pera", "pera", "pera", "pera"];
    noduplen ["red", "red", "green", "blue"];
    noduplen ["red"];
    noduplen [];
    noduplen [1,2,4,5,6,0,1,4,5];
    noduplen [true, false, true, false];
    noduplen [#"A",#"a",#"B",#"b"];