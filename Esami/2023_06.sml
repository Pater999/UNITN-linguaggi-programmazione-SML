(*  
    ESAME giugno 2023

    scrivere una curried function “f” che prenda in input una lista di stringhe[ai, ai+1, …] e un intero n, 
    e ritorni una lista di stringhe[bi, bi+1, …] in cui 
    bi è uguale ad ai solo se la lunghezza di ai è minore o uguale ad n, 
    altrimenti bi è uguale ad ai senza il primo carattere.

    Esempio:

    >f [" ", "ab", "abc", "abcd", "abcde"] 3;
    val it = [" ", "ab", "abc", "bcd", "bcde"]: string list

    SOLUZIONE:
*)

fun f (nil) n = nil 
 |  f (a::l) n = if (length (explode a) <= n) 
        then 
           a::(f (l) n) 
        else 
           implode(tl(explode(a)))::(f (l) n);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

f [" ", "ab", "abc", "abcd", "abcde"] 3;