(*  
    ESAME settembre 2015 
	Si consideri il seguente tipo di dato:
*)	
    datatype codice = rosso of string
                    | giallo of string
                    | verde of string;
(*
    che rappresenta un paziente in arrivo al pronto soccorso.
    La stringa rappresenta il cognome del paziente, mentre i tre diversi costruttori rosso, giallo e verde rappresentano 
    la gravità del paziente (codice rosso: massima urgenza, codice verde: minima urgenza).
    Quando un paziente con codice rosso arriva al pronto soccorso, viene messo in lista d’attesa dopo tutti
    i pazienti con codice rosso (ma prima di quelli con codice giallo o verde); quando arriva un paziente con codice 
    giallo, viene messo in lista d’attesa dopo tutti i pazienti con codice rosso o giallo (ma prima di quelli con 
    codice verde), mentre quando arriva un paziente con codice verde viene messo in lista d’attesa dopo tutti gli 
    altri pazienti.

    Si scriva una funzione arriva (avente tipo codice list -> codice -> codice list) che riceve come argomenti la 
    lista dei pazienti in attesa (lista di elementi di tipo codice) ed un paziente appena arrivato (elemento di tipo 
    codice) e ritorna la lista aggiornata dei pazienti in attesa (dopo aver inserito il nuovo paziente nel giusto posto 
    in coda).

    Come esempio, l’invocazione 
    arriva [rosso "topolino", rosso "cip", giallo "ciop", verde "paperino", verde "pluto"] (giallo "clarabella");
    deve avere risultato
    [rosso "topolino", rosso "cip", giallo "ciop", giallo "clarabella", verde "paperino", verde "pluto"]

    SOLUZIONE:
*)

    val rec arriva = fn []          => (fn x => [x])
                     | (verde n)::l => (fn (verde nn)  => (verde n)::(arriva l (verde nn))
                                        |      x       => x::((verde n)::l))
                     | (giallo n)::l => (fn (verde nn) => (giallo n)::(arriva l (verde nn))
                                         | (giallo nn) => (giallo n)::(arriva l (giallo nn))
                                         |     x       => x::((giallo n)::l))
                     | (rosso n)::l => (fn     x       => (rosso n)::(arriva l x));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    arriva [rosso "topolino", rosso "cip", giallo "ciop", verde "paperino", verde "pluto"] (giallo "clarabella");
    arriva [] (verde "pluto");

    val listaAttesa = [];
    val listaAttesa = arriva listaAttesa (verde "pluto");
    val listaAttesa = arriva listaAttesa (verde "pippo");
    val listaAttesa = arriva listaAttesa (giallo "pluto");
    val listaAttesa = arriva listaAttesa (rosso "ciop");
    val listaAttesa = arriva listaAttesa (verde "cip");