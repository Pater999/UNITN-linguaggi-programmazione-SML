(*
    ESERCIZIO 5
    Testo:
    Scrivere una funzione che restituisca il valore 2 per gli argomenti 0, 1 e 2
    e restituisca 3 per tutti gli altri argomenti (interi). Scrivi due soluzioni: 
    (a) usando pattern matching 
    (b) usando if-then-else

    SOLUZIONE:
*)

    (*A*)
    fun A (0) = 2
      | A (1) = 2
      | A (2) = 2
      | A (_) = 3;

    (*B*)
    fun B(x) = if (x>2) then 3 else if (x<0) then 3 else 2;

(* ESEMPIO ESECUZIONE: *)
    
    A(0);
    B(0);
    A(2);
    B(2);
    A(~1);
    A(~2);
    
    



