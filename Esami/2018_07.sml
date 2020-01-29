(*  
    ESAME luglio 2018
    Si consideri il tipo di dato ITER = Iter of int * (int -> int); i cui valori ITER(n, f) rappresentano funzioni che
    implementano un ciclo for come il seguente:

        int ITER (int x) {
            for (int i = 1; i < n; i++) {
                x = f(x);
            }
        }

    Si scriva una funzione eval (avente tipo Iter -> (int -> int)) che riceve come argomento un valore di tipo Iter e 
    ritorna una funzione da interi ad interi che implementa il ciclo indicato qui sopra (applica n - 1 volte la 
    funzione f all’argomento).

    Come esempio, se val f = fn x => x * 2, allora eval (Iter(3, f)) ritornerà una funzione che dato un numero i 
    ritorna i = 8:

    ESEMPI ESECUZIONE:
        > val f = fn x => x * 2;
        val f = fn: int -> int
        > eval (Iter(3, f));
        val it = fn: int -> int
        > val g = eval (Iter(3, f));
        val g = fn: int -> int
        > g 5;
        val it = 40: int

    SOLUZIONE:
*)	

    datatype ITER = Iter of int * (int -> int);
    val rec eval = fn Iter (n, f) => fn x => if (n > 0) then eval (Iter (n-1, f)) (f x) else x;

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    val f = fn x => x * 2;
    eval (Iter(3, f));
    val g = eval (Iter(3, f));
    g 5;