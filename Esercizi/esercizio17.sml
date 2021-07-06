(*
    ESERCIZIO 17
    Testo:    
    Scrivere una funzione "sumlists: int list * int list -> int list" che prende come argomenti
    due liste di interi e ritorna una lista formata dalla somma degli elementi nella stessa posizione.
    Estendere la lista più corta se necessario aggiungendo zeri.

    es. sumlists([1,2],[3,4]);
    val it = [4, 6]: int list
    
    SOLUZIONE:
*)

    fun sumlists(nil, nil) = 0::nil
     |  sumlists(l,[]) = l
     |  sumlists([],k) = k
     |  sumlists(x::l,y::k) = (x+y)::sumlists(l,k);

(* ESEMPIO ESECUZIONE: *)

    sumlists([1,2],[3,4]);
    sumlists([1],[3,4,2]);
    sumlists([1,6],[3]);

    
