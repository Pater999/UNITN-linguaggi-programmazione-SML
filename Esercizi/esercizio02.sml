(*
    ESERCIZIO 2
    Testo:
    Scrivere una funzione "prod" che calcoli il prodotto di tutti gli interi tra 2 numeri m ed n. (con m >= m inclusi).
	Usare poi questa funzione per scrivere una funzione C(n,k) la quale calcola il numero di combinazioni di n elementi
	presi k a k. 
	Definita dalla formula matematica: C(n, k) = n!/(k! * (n − k)!)
	che equivale anche a: C(n, k) = (n − k + 1) · (n − k + 2)· · · n/1 · 2 · · · k

    SOLUZIONE:
*)

    fun prod(m,n) = if n <= m then m else n * prod(m,n-1);

    fun C(n,k) = prod(n-k+1,n) div prod(1,k);


(* ESEMPIO ESECUZIONE: *)

    C(7,5);
    C(9,1);
    C(4,3);