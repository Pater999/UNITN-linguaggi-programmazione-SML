(*  
    ESAME gennaio 2018
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

    Si scriva una funzione is_bound (avente tipo string -> lambda_expr -> bool) che riceve come argomenti una stringa
    (che rappresenta il nome di una variabile / funzione) ed una Lambda-espressione, ritornando true se la variabile 
    indicata appare come legata nell’espressione, false altrimenti.

    Come esempio, l’invocazione
    is_bound "a" (Var "a")
    deve avere risultato true, l’invocazione
    is_bound "b" (Var "a")
    deve avere risultato false, l’invocazione
    is_bound "a" (Lambda ("a", Apply((Var "a"), Var "b")))
    deve avere risultato true, l’invocazione
    is_bound "b" (Lambda ("a", Apply((Var "a"), Var "b")))
    deve avere risultato true e così via.

    SOLUZIONE:
*)	

    val rec is_bound = fn s => fn Var v => s = v
                                | Lambda (v, e) => if (s = v) then true else is_bound s e
                                | Apply (e1, e2) => (is_bound s e1) orelse (is_bound s e2);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    is_bound "a" (Var "a");
    is_bound "b" (Var "a");
    is_bound "a" (Lambda ("a", Apply((Var "a"), Var "b")));
    is_bound "b" (Lambda ("a", Apply((Var "a"), Var "b")));