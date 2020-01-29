(*  
    ESAME settembre 2017
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

    Esempio:
        – ((lega ambientevuoto "a"1)"a") deve ritornare Int 1;
        – ((lega ambientevuoto "a"1)"boh") deve ritornare Nil;
        – ((lega (lega ambientevuoto "a"1)"boh"~1)"boh") deve ritornare Int ~1;
        – ((lega (lega ambientevuoto "a"1)"boh"~1)"mah") deve ritornare Nil.

    SOLUZIONE:
*)

    val lega = fn e:ambiente => fn nome => fn valore => (fn n => if (n = nome) then (Int valore) else (e n)):ambiente;

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    ((lega ambientevuoto "a"1)"a");
    ((lega ambientevuoto "a"1)"boh");
    ((lega (lega ambientevuoto "a"1)"boh"~1)"boh");
    ((lega (lega ambientevuoto "a"1)"boh"~1)"mah");