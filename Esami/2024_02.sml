(*
    ESAME febbraio 2024

    Scrivere una funzione prefixes (di tipo string -> string list) che presa in input una stringa,
    ritorni una lista di tutti i prefissi della stringa, compresa la stringa stessa ed esclusa la stringa vuota.
    (nota: esista una funzione map che permette appendere un elemento a ogni elementi da lista)

    Esempi: 
    > prefixes "ciao";
    val it : ["c" , "ci", "cia", "ciao"];
    > prefixes "";
    val it : [];
    > prefixes "hi world";
    val it : ["h", "hi", "hi ", "hi w", "hi wo", "hi wor", "hi worl", "hi world"];

    SOLUZIONE:
*)

fun prefixes s =
    (* Helper function that generates the prefixes by using an index *)
    let
        (* Inner recursive function that constructs the prefix list *)
        fun helper (str, len) =
            if len = String.size str then
                [str] (* If the length equals the size of the string, return the string as the final prefix *)
            else
                String.substring(str, 0, len) :: helper (str, len + 1)
    in
        if s = "" then [] (* If the input string is empty, return an empty list *)
        else helper (s, 1) (* Otherwise, start generating prefixes from length 1 *)
    end;

fun prefixesAlternative s =
    let
        fun helper (str, acc, n) =
            if n > String.size str then
                List.rev acc
            else
                helper (str, (String.substring (str, 0, n)) :: acc, n + 1)
    in
        helper (s, [], 1)
    end;

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

prefixes "ciao";
prefixes "";
prefixes "hi world";
prefixes "test 123";