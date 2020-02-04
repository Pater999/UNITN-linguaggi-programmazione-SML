(*
    ESERCIZIO 18
    Testo:    
    Scrivere una funzione "remove_dup: ’’a list -> ’’a list" che rimuove i duplicati da una lista.
    
    SOLUZIONE:
*)

    fun remove_dup l = 
    let 
        fun delete(x,[]) = []
         |  delete(x,y::l) = if x=y then delete(x,l) else y::delete(x,l);

        fun remove_dup_rec [] = []
         |  remove_dup_rec (x::l) = x::remove_dup_rec(delete(x,l));
    in
        remove_dup_rec l
    end;

(* ESEMPIO ESECUZIONE: *)

    remove_dup [];
    remove_dup [1,2,1];
    remove_dup ["a","a","a"];
    remove_dup [[1],[1,2],[1,2,3],[1,2],[4,5]];
    

    
