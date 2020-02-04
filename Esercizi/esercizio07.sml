(*
    ESERCIZIO 7
    Testo:    
    Scrivere una funzione che restituisca il più piccolo dei suoi due argomenti 
    (a) usando argument pattern
    (b) usando una dichiarazione locale

    SOLUZIONE:
*)

    fun minA(a,b) = if (a<b) then a else b;
    
    fun minB(t:int*int) = 
        let 
            val (a,b)=t 
        in 
            if (a<b) then a else b 
    end;
    
(* ESEMPIO ESECUZIONE: *)

    minA(2,3);
    minB(2,3);
    minA(3,2);
    minB(3,2);
    


    
    



