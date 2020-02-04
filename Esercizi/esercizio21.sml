(*
    ESERCIZIO 21
    Testo:    
    Considera la seguente struttura dati  “binary tree”:
*)
    datatype 'a btree = emptybt | consbt of 'a * 'a btree * 'a btree;
(*
    Scrivere una funzione "sum_tree : int btree -> int" la quale ritorna la somma di tutti gli elementi
    dell'albero

    SOLUZIONE:
*)

    fun sum_tree emptybt = 0
     |  sum_tree (consbt(x,t1,t2)) = x + sum_tree t1 + sum_tree t2;

    
    

    
