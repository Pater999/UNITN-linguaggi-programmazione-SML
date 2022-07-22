(*  
    ESAME luglio 2022

    Scrivere una funzione f di tipo int list -> int list che presa in input una lista trasformi ogni elemento "a" 
    della lista nel seguente modo:
        se a >= 0    allora l'elemento "a" dovrà essere trasformato in a^2-1
        altrimenti          l'elemento "a" dovrà essere trasformato in a^2+1

    ESEMPIO
    f [~1,2,3,0,~5,6];
    dovrà dare in output:
    val it = [2, 3, 8, ~1, 26, 35]: int list

    SOLUZIONE:
*)

    fun f [] = []
     |  f (a::b) = if (a>=0) then ((a*a)-1)::(f b) else ((a*a)+1)::(f b);

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    f [~1,2,3,0,~5,6];
    f [0,~1];

(* NOTE: UGUALE ad esame 2019_06.sml *)