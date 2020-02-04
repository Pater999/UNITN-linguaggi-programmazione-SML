(*
    ESERCIZIO 24
    Testo:    
    Leggere un file di carratteri "test.txt" contente una sequenza di parole (lettere diverse da spazi consecutive)
    Ritornare la lista delle parole contenute nel file.

    SOLUZIONE:
*)

    fun white(" ") = true
     |  white("\t") = true
     |  white("\n") = true
     |  white(_) = false;
     
    fun getWord(file) =
        if TextIO.endOfStream(file) then "" else
            let
                val c = TextIO.inputN(file,1)
            in
                if white(c) then "" else c^getWord(file)
            end;

    fun getList1(file) = if TextIO.endOfStream(file) then nil else getWord(file) :: getList1(file);
   
    fun getList(filename) = getList1(TextIO.openIn(filename));

(* ESEMPIO ESECUZIONE: *)

    getList "test.txt";
    

    
