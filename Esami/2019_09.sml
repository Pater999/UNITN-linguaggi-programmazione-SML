(*  
    ESAME settembre 2019

    Scrivere una funzione chiamata f che prende in input un file "text.txt" la funzione deve ritornare la lista 
    dei caratteri senza spazi presenti nel file di testo.

    Si assuma che il file sia presente nella stessa cartella.

    ESEMPIO
    Dato il file "text.txt" che contiene:
    ab e ad c
    Eseguendo il comando use "esercizio.sml";
    dovrà essere prodotto il seguente risultato:
    val it = [#"a", #"b", #"e", #"a", #"d", #"c"]: char list
        
    SOLUZIONE:
*)

    fun f filename =
    let
        val file = TextIO.openIn filename
        val str = TextIO.inputAll file
    in
        TextIO.closeIn file;
        List.filter (fn c => c <> #" " andalso c <> #"\t" andalso c <> #"\n") (explode str)
    end;
    f "text.txt";