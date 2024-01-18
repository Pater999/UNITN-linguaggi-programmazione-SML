(*
    ESAME gennaio 2024
    
    Scrivere una funzione suffixes (di tipo string -> string list) che presa in input una stringa,
    ritorni una lista di tutti i suffissi della stringa, compresa la stringa stessa ed escusa la stringa vuota.
    
    Esempi: 
    > suffixes "ciao";
    val it : ["ciao", "iao", "ao", "o"];
    > suffixes "";
    val it : [];
    > suffixes "hi world";
    val it : ["hi world", "i world", " world", "world", "orld", "rld", "ld", "d"];
    
    SOLUZIONE:
*)

    fun suffixes ("") = []
    | suffixes (s) = s::implode(tl(explode(s)));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)
    suffixes "ciao";
    suffixes "";
    suffixes "hi world";
