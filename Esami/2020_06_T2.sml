(*
    ESAME giugno 2020 - Turno 2
    Testo:    
    Si scriva una funzione conta (avente tipo ''a list -> int) che riceve come argomento una 
    lista di ''a l. La funzione conta ritorna il numero di elementi della lista senza considerare 
    i duplicati.

    Come esempio, l'invocazione 
    conta ["pera", "pera", "pera", "pera"]; deve avere risultato 1; 
    conta ["red", "red", "green", "blue"]; deve avere risultato 3.

    La funzione conta deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato. 
    Si consegni il file .sml contenente la definizione di conta.

    IMPORTANTE: prima di sottomettere il file usando il form sotto riportato, rinominarlo come segue: 
    cognome del candidato, nome e matricola, separati dal carattere “_”. 
    E.g., per Mario Rossi, matricola 1234567, il file corrispondente sarà ROSSI_MARIO_1234567.sml

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

(* NOTE: UGUALE ad esame 2018_06.sml *)