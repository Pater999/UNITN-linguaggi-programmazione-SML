(*
    ESERCIZIO 1
    Testo:
    Scrivere una funzione f che ritorna "uno" se riceve come paramentro 1 e "qualcos'altro" altrimenti.

    SOLUZIONE:
*)

    val rec f = fn 1 => "uno"
                 | _ => "qualcos'altro";

(* ESEMPIO ESECUZIONE: *)

    f 1;
    f 2;
    f 3;
(*  f "ciao";  da errore perchè il parametro deve essere di tipo intero *)