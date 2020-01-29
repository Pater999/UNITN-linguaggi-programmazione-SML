(*  
    ESAME luglio 2015 
	Si consideri il seguente tipo di dato, che rappresenta una semplice espressione avente due argomenti x e y:
*)	
    datatype Expr = X
                  | Y
                  | Avg of Expr * Expr
                  | Mul of Expr * Expr

(*                   
    dove il costruttore X rappresenta il valore del primo argomento x dell’espressione, il costruttore Y rappresenta il 
    valore del secondo argomento y, il costruttore Avg, che si applica ad una coppia (e1, e2), rappresenta la media 
    (intera) dei valori di e1 ed e2, mentre il costruttore Mul (che ancora si applica ad una coppia (e1, e2)) 
    rappresenta il prodotto dei valori di due espressioni e1 ed e2. 
    Implementare una funzione Standard ML, chiamata compute, che ha tipo Expr -> int -> int -> int.
    Come suggerito dal nome, compute calcola il valore dell’espressione ricevuta come primo argomento, applicandola 
    ai valori ricevuti come secondo e terzo argomento e ritorna un intero che indica il risultato finale della valutazione.
    IMPORTANTE: notare il tipo della funzione! Come si può intuire da tale tipo, la funzione riceve tre
    argomenti usando la tecnica del currying. É importante che la funzione abbia il tipo corretto (indicato
    qui sopra). Una funzione avente tipo diverso da Expr -> int -> int -> int non sarà considerata corretta.
    
    SOLUZIONE:
*)

    val rec compute = fn X => (fn x => fn y => x)
                       | Y => (fn x => fn y => y)
                       | Avg(e1, e2) => (fn x => fn y => ((compute e1 x y) + (compute e2 x y)) div 2)
                       | Mul(e1, e2) => (fn x => fn y => (compute e1 x y) * (compute e2 x y));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)
    
    (compute X) 4 2; (* Restitusce 4 *)
    (compute Y) 4 2; (* Restitusce 2 *)
    compute (Avg(X,Y)) 4 2; (* Restitusce la media tra 4 e 2 = 3 *)
    compute (Mul(X,Y)) 4 2; (* Restitusce moltiplicazione tra 4 e 2 = 8 *)
    compute (Avg(X,Y)) 4 (compute (Mul(X,Y)) 4 2); (* Restitusce moltiplicazione tra 4 e 2 = 8 e poi fa la media tra 8 e 4 = 6*)