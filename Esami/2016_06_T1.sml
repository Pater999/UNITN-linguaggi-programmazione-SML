(*  
    ESAME giugno 2016 - TURNO 1
	Si scriva una funzione hist (avente tipo real list -> real * real -> int) che riceve come argomento una lista di 
    real l ed una coppia di real (c, d). La funzione hist ritorna il numero di elementi della lista compresi 
    nell’intervallo (c - d, c + d), estremi esclusi (vale a dire il numero di elementi r tali che (c - d < r < c + d).
    
    Come esempio, l’invocazione
    hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.5);
    deve avere risultato 1;
    e hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.6);
    deve avere risultato 2.

    SOLUZIONE:
*)	

    val rec hist = fn [] => (fn (c:real, d:real) => 0)
                    | [e] => (fn (c:real, d:real) => if (e > (c-d) andalso e < (c+d)) then 1 else 0)
                    | (e :: l) => (fn (c:real, d:real) => if (e > (c-d) andalso e < (c+d)) then 1 + hist l (c, d) else 0 + hist l (c, d));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.5);
    hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.6);
    hist [] (2.4, 12.6);
    hist [4.0] (4.1, 0.0);