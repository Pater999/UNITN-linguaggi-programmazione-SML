(*
    ESERCIZIO 23
    Testo:    
    Scrivere una funzione che riordina gli elementi di una lista utilizzando Quicksort
    
    SOLUZIONE:
*)

    fun quick [] = []
     |  quick [x] = [x]
     |  quick (a::bs) =
            let fun partition (left,right,[]) = (quick left) @ (a::quick right)
                  | partition (left,right,x::xs) = if x<=a then partition(x::left, right,xs)
                                                           else partition (left,x::right,xs)
            in partition([],[],bs) 
            end;

(* ESEMPIO ESECUZIONE: *)

    quick [1,2,3,4,5,0];
    quick [1,8,99,2,45,678,875,3,5656,232,22,11,55,766];
    
    

    
