(*  
    ESAME agosto 2015 
	Scrivere una funzione Standard ML, chiamata elementi_pari, che ha tipo 'a list -> 'a list. La funzione riceve 
    come parametro una a-lista e ritorna una a-lista contenente gli elementi della lista di ingresso che hanno 
    posizione pari (il secondo elemento, il quarto elemento, etc. . . ).

    Per esempio
    elementi_pari [1,5,2,10]      ritorna      [5,10]

    Si noti inoltre che la funzione elementi_pari non deve cambiare l’ordine degli elementi della lista rispetto 
    all’ordine della lista ricevuta come argomento (considerando l’esempio precedente, il valore ritornato deve 
    essere [5,10], non [10,5]). Si noti che la funzione elementi_pari può usare i costruttori forniti da 
    Standard ML per le alfa-liste, senza bisogno di definire alcun datatype o altro.

    SOLUZIONE:
*)	

    val rec elementi_pari = fn [] => []
                             | a::[] => []
                             | (a::b::l) => b::(elementi_pari l);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    elementi_pari []; (* Restituisce la lista vuota [] *)
    elementi_pari [1]; (* Restituisce la lista vuota [] *)
    elementi_pari [1,4,4,5,6]; (* Restituisce la lista vuota [4,5] *)