(*
    ESAME gennaio 2024

    Scrivere una funzione suffixes (di tipo string -> string list) che presa in input una stringa,
    ritorni una lista di tutti i suffissi della stringa, compresa la stringa stessa ed esclusa la stringa vuota.
    (nota: esista una funzione map che permette appendere un elemento a ogni elementi da lista)

    Esempi: 
    > suffixes "ciao";
    val it : ["ciao" , "cia", "ci", "ci", "c"];
    > suffixes "";
    val it : [];
    > suffixes "hi world";
    val it : ["hi world","hi worl","hi wor","hi wo","hi w","hi ","hi","h"];

    SOLUZIONE:
*)

fun suffixes s =
    let
        fun helper (str, acc) =
            if str = "" then
                List.rev acc
            else
                helper (String.extract (str, 1, NONE), str :: acc)
    in
        helper (s, [])
    end;

fun suffixesAlternative "" = []
  | suffixesAlternative s = s :: suffixesAlternative (String.extract (s, 0, SOME (size s - 1)));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

suffixes "ciao";
suffixes "";
suffixes "hi world";
suffixes "test 123 4";