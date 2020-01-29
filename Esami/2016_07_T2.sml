(*  
    ESAME luglio 2016 - TURNO 2
    Basandosi sul tipo di dato espressione e la funzione eval definiti come segue:

    local
        val rec eval = fn costante n => n
                        | somma (a1, a2) => (eval a1) + (eval a2)
                        | sottrazione (a1, a2) => (eval a1) - (eval a2)
                        | prodotto (a1, a2) => (eval a1) * (eval a2)
                        | divisione (a1, a2) => (eval a1) div (eval a2);
    in
        val semplifica = fn costante n => costante(n)
                        | somma (a1, a2) => costante((eval a1) + (eval a2))
                        | sottrazione (a1, a2) => costante((eval a1) - (eval a2))
                        | prodotto (a1, a2) => costante((eval a1) * (eval a2))
                        | divisione (a1, a2) => costante((eval a1) div (eval a2))
    end;

    il tipo espressione può essere esteso come segue per supporare il concetto di variabile: 
*)

    datatype espressione = costante of int
                         | variabile of string
                         | somma of espressione * espressione
                         | sottrazione of espressione * espressione
                         | prodotto of espressione * espressione
                         | divisione of espressione * espressione
                         | var of string * espressione * espressione;

(*
    Si riscriva la funzione eval per supportare i due nuovi costruttori variabile e var. variabile x, con
    x di tipo stringa, é valutata al valore della variabile di nome x (per fare questo, eval deve cercare
    nell’ambiente un legame fra tale nome ed un valore). var (x, e1, e2) é valutata al valore di e2 dopo
    aver assegnato ad x il valore di e1.
    Per poter valutare correttamente variabile e var, eval deve quindi ricevere come argomento l’ambiente
    in cui valutare le variabili. Tale ambiente può essere rappresentato come una lista di coppie (stringa,
    intero) ed avra’ quindi tipo (string * int)list.
    La funzione eval deve quindi avere tipo (string * int)list -> espressione -> int.

    SOLUZIONE:
*)

    local
        val rec cerca = fn s => fn [] => 0
                    | (s1, v)::l => if s1 = s then v else cerca s l
    in
        val rec eval = fn env => fn costante n => n
                                    | variabile s => cerca s env
                                    | somma (a1, a2) => (eval env a1) + (eval env a2)
                                    | sottrazione (a1, a2) => (eval env a1) - (eval env a2)
                                    | prodotto (a1, a2) => (eval env a1) * (eval env a2)
                                    | divisione (a1, a2) => (eval env a1) div (eval env a2)
                                    | var (v, e1, e2) => eval ((v, eval env e1)::env) e2
    end;
