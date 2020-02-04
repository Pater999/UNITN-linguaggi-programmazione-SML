(*
    ESERCIZIO 22
    Testo:    
    Scrivere una funzione che scambia gli elementi alternati di una lista.
    
    Esempio:
    Se a = [a1, . . . , an], il risultato dovrà essere a = [a2, a1, a4, , a3 . . . , an]. Se n è dispari
    an dovrà rimanere in fondo.
    
    SOLUZIONE:
*)

    fun flip [] = []
     |  flip [x] = [x]
     |  flip (x::y::r) = (y::x::flip(r));

(* ESEMPIO ESECUZIONE: *)

    flip [1,2,3,4,5,6];
    flip [1,2,3];
    
    

    
