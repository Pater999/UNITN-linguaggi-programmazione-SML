(*
ESAME giugno 2015 
 
TESTO:
 
	Come noto, un numero naturale è esprimibile in base agli assiomi di Peano usando il seguente tipo di dato:
*)	
	datatype naturale = zero | successivo of naturale;
(*	   
	Usando tale tipo di dato, la somma fra numeri naturali è esprimibile come:
*)		
	val rec somma = fn zero => (fn n => n)
	                | successivo a => (fn n => successivo (somma a n));
(*					
	Scrivere una funzione Standard ML, chiamata prodotto, che ha tipo naturale -> naturale -> naturale, 
	che calcola il prodotto di due numeri naturali. Si noti che la funzione prodotto può usare la funzione somma nella sua implementazione.
	
SOLUZIONE:
*)				
	val rec prodotto = fn zero => (fn b => zero)
					   | successivo(a) => (fn b => (somma b (prodotto a b)));
