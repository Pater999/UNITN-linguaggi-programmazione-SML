(*  
    ESAME agosto 2016
    Si consideri una possibile implementazione degli insiemi di interi in standard ML, in cui un insieme di
    interi rappresentato da una funzione da int a bool:
*)

    type insiemediinteri = int -> bool;

(*
    La funzione applicata ad un numero intero ritorna true se il numero appartiene all’insieme, false
    altrimenti. L’insieme vuoto è quindi rappresentato da una funzione che ritorna sempre false:
*)

    val vuoto:insiemediinteri = fn n => false;

(*  ed un intero può essere aggiunto ad un insieme tramite la funzione aggiungi: *)

    val aggiungi = fn f:insiemediinteri => fn x:int => (fn n:int => if (n = x orelse f n) then true else false ):insiemediinteri;

(*  É possibile verificare se un intero è contenuto in un insieme tramite la funzione contiene: *)
    
    val contiene = fn f:insiemediinteri => fn n:int => f n;

(*
    Si implementi la funzione intersezione, avente tipo insiemediinteri -> insiemediinteri -> insiemediinteri, che dati
    due insiemi di interi ne calcola l’intersezione.

    SOLUZIONE:
*)

    val intersezione = fn i1:insiemediinteri => fn i2:insiemediinteri => (fn n => ((contiene i1 n) andalso (contiene i2 n))):insiemediinteri;
