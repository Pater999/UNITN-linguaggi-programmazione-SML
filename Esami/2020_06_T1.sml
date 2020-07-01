(*
    ESAME giugno 2020 - Turno 1
    Testo:    
    Si scriva una funzione sommali (avente tipo int -> int list -> int) che riceve come argomento un intero n ed una lista di interi l. 
    La funzione sommali somma ad n gli elementi di l che hanno posizione pari (se la lista contiene meno di 2 elementi, sommali ritorna n).
    
    Come esempio, l'invocazione
    
    sommali 0 [1,2];
    deve avere risultato 2,
    sommali 1 [1,2,3];
    deve avere risultato 3: e
    sommali 2 [1,2,3,4];
    deve avere risultato 8. IMPORTANTE: notare il tipo della funzione!.

    La funzione sommali deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato. 
    Si consegni il file .sml contenente la definizione di sommali.

    IMPORTANTE: prima di sottomettere il file usando il form sotto riportato, rinominarlo come segue: 
    cognome del candidato, nome e matricola, separati dal carattere “_”. 
    E.g., per Mario Rossi, matricola 1234567, il file corrispondente sarà ROSSI_MARIO_1234567.sml

    SOLUZIONE:
*)

    fun sommali z [] = z
     |  sommali z (a::[]) = z
     |  sommali z (a::b::c) = b + (sommali z c);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) Codice di test da rimuovere alla consegna! *)

    sommali 0 [1,2];
    sommali 1 [1,2,3];
    sommali 2 [1,2,3,4];

(* NOTE: UGUALE ad esame 2017_06_T1.sml *)