(*  
    ESAME giugno 2017 - Turno 1
	Si scriva una funzione sommali (avente tipo int -> int list -> int) che riceve come argomento un intero n ed una 
    lista di interi l. La funzione sommali somma ad n gli elementi di l che hanno posizione pari (se la lista 
    contiene meno di 2 elementi, sommali ritorna n).

    Come esempio, l’invocazione
    sommali 0 [1,2];
    deve avere risultato 2;
    sommali 1 [1,2,3];
    deve avere risultato 3;
    sommali 2 [1,2,3,4];
    deve avere risultato 8.

    SOLUZIONE:
*)	

    fun sommali z [] = z
     |  sommali z (a::[]) = z
     |  sommali z (a::b::c) = b + (sommali z c);

    (* altro modo extra usando fn -> stesso risultato *)

    val rec sommali_diversa = fn z => fn [] => z
                              | a::[] => z
                              | a::b::c => b + (sommali z c);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    sommali 0 [1,2];
    sommali 1 [1,2,3];
    sommali 2 [1,2,3,4];

    sommali_diversa 0 [1,2];
    sommali_diversa 1 [1,2,3];
    sommali_diversa 2 [1,2,3,4];
    
    