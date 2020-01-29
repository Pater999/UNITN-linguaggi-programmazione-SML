(*  
    ESAME giugno 2017 - Turno 2
	Si scriva una funzione sommali (avente tipo int -> int list -> int) che riceve come argomento un intero n ed una
    lista di interi l. La funzione sommali somma ad n gli elementi di l che hanno posizione multipla di 3 (se la 
    lista contiene meno di 3 elementi, sommali ritorna n).

    Come esempio, l’invocazione
    sommali 0 [1,2,3];
    deve avere risultato 3,
    sommali 1 [1,2,3];
    deve avere risultato 4: e
    sommali 2 [1,2,3,4,5,6];
    deve avere risultato 11.

    SOLUZIONE:
*)	

    fun sommali z [] = z
        |  sommali z (a::[]) = z
        |  sommali z (a::b::[]) = z
        |  sommali z (a::b::c::d) = c + (sommali z d);

    (* altro modo extra usando fn -> stesso risultato *)

    val rec sommali_diversa = fn z => fn [] => z
                              | a::[] => z
                              | a::b::[] => z
                              | a::b::c::d => c + (sommali z d);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    sommali 0 [1,2,3];
    sommali 1 [1,2,3];
    sommali 2 [1,2,3,4,5,6];

    sommali_diversa 0 [1,2,3];
    sommali_diversa 1 [1,2,3];
    sommali_diversa 2 [1,2,3,4,5,6];