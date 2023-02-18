(*  
    ESAME febbraio 2023
    Si consideri il tipo di dato
*)

    datatype intonil = Nil | Int of int;

(*  ed una possibile implementazione semplificata di ambiente (che considera solo valori interi) basata su di esso: *)
    
    type ambiente = string -> intonil

(*
    In questa implementazione, un ambiente è rappresentato da una funzione che mappa nomi (valori di tipo string) 
    in valori di tipo intonil (che rappresentano un intero o nessun valore). Tale funzione applicata ad un nome 
    ritorna il valore intero ad esso associato oppure Nil. Usando questa convenzione, l’ambiente vuoto (in cui 
    nessun nome è associato a valori) può essere definito come:
*)

    val ambientevuoto = fn _:string => Nil;

(*
    Basandosi su queste definizioni, si definisca una funzione "lega" con tipo ambiente -> string -> int -> ambiente. 
    che a partire da un ambiente (primo argomento) genera un nuovo ambiente (valore di ritorno) uguale al primo 
    argomento più un legame fra il nome e l’intero ricevuti come secondo e terzo argomento.

    IMPORTANTE: notare il tipo della funzione! (si noti che utilizza la tecnica del currying).

    A titolo di esempio:

    – ((lega ambientevuoto "a"1)"a") deve ritornare Int 1;
    – ((lega ambientevuoto "a"1)"boh") deve ritornare Nil;
    – ((lega (lega ambientevuoto "a"1)"boh"~1)"boh") deve ritornare Int ~1;
    – ((lega (lega ambientevuoto "a"1)"boh"~1)"mah") deve ritornare Nil.

    La funzione lega deve essere definita in un file .sml autocontenuto ma separato da qualsiasi codice di test si sia usato. 
    Non è necessario che contenga la definizione del tipo di dato intonil, di ambiente o del valore ambientevuoto. 
    Si consegni il file .sml contenente la definizione di lega utilizzando il form qui sotto riportato.

    SOLUZIONE:
*)

    val lega = fn e:ambiente => fn nome => fn valore => (fn n => if (n = nome) then (Int valore) else (e n)):ambiente;

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    ((lega ambientevuoto "a"1)"a");
    ((lega ambientevuoto "a"1)"boh");
    ((lega (lega ambientevuoto "a"1)"boh"~1)"boh");
    ((lega (lega ambientevuoto "a"1)"boh"~1)"mah");

(* NOTE: UGUALE ad esame 2017_09.sml e 2020_07.sml *)