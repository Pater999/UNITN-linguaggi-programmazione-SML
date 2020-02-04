(*
    ESERCIZIO 19
    Testo:    
    Scrivere una funzione "first_list: (’a * ’b) list -> ’a list" la quale
    ritorna una lista formata dal primo elemento di ogni lista.
    Esempio:
    first_list [(1,"a"),(2,"b"),(3,"c")] = [1,2,3]
    
    SOLUZIONE:
*)

    fun first_list [] = []
     |  first_list((x,y)::l) = x::first_list l;

(* ESEMPIO ESECUZIONE: *)

    first_list [] ;
    first_list [(1,2),(1,3)];
    first_list [(1,"a"),(2,"b"),(3,"c")];
    first_list [([],"a"),([1],"b"),([1,2],"c")];

    

    
