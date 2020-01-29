(*  
    ESAME luglio 2016 - TURNO 1
    Si consideri il tipo di dato:
*)	
    datatype lambda_expr = Var of string
                         | Lambda of string * lambda_expr
                         | Apply of lambda_expr * lambda_expr;

(*  
    che rappresenta un’espressione del Lambda-calcolo.
    Il costruttore Var crea un’espressione costituita da un’unica funzione / variabile (il cui nome è un valore
    di tipo string); 
    Il costruttore Lambda crea una Lambda-espressione a partire da un’altra espressione, legandone una variabile 
    (indicata da un valore di tipo string); 
    Il costruttore Apply crea un’espressione data dall’applicazione di un’espressione ad un’altra.

    Si scriva una funzione is_free (avente tipo string -> lambda_expr -> bool) che riceve come argomenti una stringa
    (che rappresenta il nome di una variabile / funzione) ed una Lambda-espressione, ritornando true se la variabile 
    indicata appare come libera nell’espressione, false altrimenti (quindi, la funzione ritorna false se la variabile 
    è legata o se non appare nell’epressione).

    Come esempio, l’invocazione
    is_free "a" (Var "a")
    deve avere risultato true, l’invocazione
    is_free "b" (Var "a")
    deve avere risultato false, l’invocazione
    is_free "a" (Lambda ("a", Apply((Var "a"), Var "b")))
    deve avere risultato false, l’invocazione
    is_free "b" (Lambda ("a", Apply((Var "a"), Var "b")))
    deve avere risultato true e così via.

    SOLUZIONE:
*)	

    val rec is_free = fn s => fn Var v => s = v
                              | Lambda (v, e) => if (s = v) then false else is_free s e
                              | Apply (e1, e2) => (is_free s e1) orelse (is_free s e2);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    is_free "a" (Var "a");
    is_free "b" (Var "a");
    is_free "a" (Lambda ("a", Apply((Var "a"), Var "b")));
    is_free "b" (Lambda ("a", Apply((Var "a"), Var "b")));