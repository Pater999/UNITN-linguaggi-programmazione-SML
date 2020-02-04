(*
    ESERCIZIO 20
    Testo:  
    Scrivere una funzione "flatten" la quale prende in input una lista di liste e restituisce
    una lista formata da tutti gli elementi nello stesso ordine in cui appaiono.  

    Esempio:
    flatten [[1,2],[2,3,4],[5],[],[6,7]] = [1,2,2,3,4,5,6,7]

    SOLUZIONE:  
*)

    fun flatten [] = []
     |  flatten (x::l) = x @ flatten l;

(* ESEMPIO ESECUZIONE: *)
    flatten [] ;
    flatten [[]];
    flatten [["a"],["b","a"]];
    
    

    
