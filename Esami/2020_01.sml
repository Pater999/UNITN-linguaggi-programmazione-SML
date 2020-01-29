(*  
    ESAME gennaio 2020

    Scrivere una funzione chiamata f che prende in input un file "text2.txt" la funzione deve ritornare i caratteri
    in posizione pari presenti nel file txt. Il file txt conterrà un numero di caratteri pari maggiore di zero.

    Si assuma che il file sia presente nella stessa cartella.

    ESEMPIO di esecuzione
    Dato il file "text2.txt" che contiene:
    abcdef
    Eseguendo il comando use "esercizio.sml";
    dovrà essere prodotto il seguente risultato:
    val it = ["b","d","f"]: string list
        
    SOLUZIONE:
*)

    fun f filename =
    let
        val file = TextIO.openIn filename
        val str = TextIO.inputAll file
        val rec elem_pari = fn [] => []
                             | a::[] => []
                             | a::b::c => Char.toString(b)::(elem_pari c)
    in
        TextIO.closeIn file;
        elem_pari (explode str)
    end;
    f "text2.txt";