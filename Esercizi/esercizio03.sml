(*
    ESERCIZIO 3
    Testo:
    Scrivere una funzione "power : int * int -> int" in modo che, per m>=0 power(n,m) = n^m
    Assumete che 0^0 risulti 1.

    SOLUZIONE:
*)

    fun power(n,m) = if m=0 then 1 else n * power(n,m-1);

(* ESEMPIO ESECUZIONE: *)

    power (0,0);
    power (2,4);
    power (10,3);

