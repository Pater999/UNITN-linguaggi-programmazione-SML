(*  
    ESAME giugno 2021

    Implementare una funzione "f" che, dato un file "test.txt" contenente una lista con un numero
    pari di caratteri restituisca una lista (type string list) di coppie di caratteri, ignorando i
    primi due e proponendo i successivi due iterativamente (quindi si avranno i caratteri 3,4
    seguiti da 7,8, e così via).

    Il file contenente il codice e file "test.txt" devono trovarsi nella stessa directory. Il file
    "test.txt" di esempio viene fornito unitamente a questo file.

    Un'ipotetica esecuzione del codice da bash potrebbe essere:

    Assicurarsi di avere il file "test.txt".
    Lanciare poly da terminale

    > use "my-code-name.sml";
    val it = ["ac","ef","54",""]: string list

    La funzione f deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice
    di test sia usato. Si consegni il file .sml contente la definizione di f. Rinominare il file con
    cognome_nome.sml 
        
    SOLUZIONE:
*)

    fun f filename =
    let
        val file = TextIO.openIn ("test.txt");
        val lista = explode (TextIO.inputAll file);
        fun coppie nil = [""]
          | coppie [_] = [""]
          | coppie (a::b::[]) = [""]
          | coppie (a::b::c::[]) = [""]
          | coppie (a::b::c::d::[]) = implode [c, d] :: [""] 
          | coppie (a::b::c::d::l) = (implode [c, d]) :: coppie l;
    in
        TextIO.closeIn file;
        coppie lista
    end;
    f "text.txt";

(* NB: si aggiunge la stringa vuota "" per gestire i caratteri terminatori del file --> \n\r *)
(* ALTRO MODO extra usando un'altra strategia -> stesso risultato *)

    val input = TextIO.openIn("test.txt");
    fun f2 file=if TextIO.endOfStream(file) then [TextIO.inputN(file,2)] else
      let
         val trash=TextIO.inputN(file,2)
         val keep=TextIO.inputN(file,2)
      in
         keep::(f2 file)
      end;
    f2 input;
