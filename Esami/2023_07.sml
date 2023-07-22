(*
    ESAME luglio 2023

    Si scriva una funzione conta_duplicati (avente tipo ''a list -> (''a * int) list) che riceve come argomento una lista di ''a e restituisce una lista di tuple ''a * int. 
    La funzione conta_duplicati ritorna una lista di coppie (elemento, numero di occorrenze dell'elemento), cioè per ogni elemento distinto e della lista di input, la lista di output contiene una coppia (e, numero di occorrenze di e).
    
    Come esempio, l'invocazione conta_duplicati [2, 2, 2, 2]; deve avere risultato [(2,4)],
    conta_duplicati ["lunedi'", "lunedi'", "martedi'", "lunedi'"]; deve avere risultato [("lunedi'",3), ("martedi'",1)] e
    conta_duplicati ["blu", "verde", "verde", "blu", "rosso"]; deve avere risultato [("blu",2), ("verde",2), ("rosso",1)].

    IMPORTANTE: notare il tipo della funzione!.

    L'ordine delle coppie all'interno della lista risultante non è rilevante.

    La funzione conta_duplicati deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato. 
    Il file .sml deve contenere la chiamata a conta_duplicati. Si consegni il file .sml contenente la definizione di conta_duplicati rinominandolo Cognome_Nome_Matricola.sml.

    SOLUZIONE:
*)

fun conta_duplicati(L) =
    let
        fun estrai [] = nil
         |  estrai (x::y) =
             if(List.exists(fn a => a = x) y) then
                estrai y
             else
                x::estrai y;
        
        val duplicati = estrai L;

        fun conta s [] = 0
         |  conta s (x::y) =
             if s = x then 1 + conta s y
             else conta s y;

        fun tuple [] = nil 
         |  tuple (x::y) = (x, conta x L)::tuple y;

    in
        tuple duplicati
    end;

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

conta_duplicati [2, 2, 2, 2];
conta_duplicati ["lunedi'", "lunedi'", "martedi'", "lunedi'"];
conta_duplicati ["blu", "verde", "verde", "blu", "rosso"];
conta_duplicati [1];
conta_duplicati [1,1,1,1,1,1,1,1,1,1];