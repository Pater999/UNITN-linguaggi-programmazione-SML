(*
    ESAME giugno 2024

    L'esercizio consiste nell'implementare la funzione sum_binary di tipo int list * int list -> int list che implementa l'operazione di somma binaria.
    Nel programma non è permesso l'utilizzo di operatori aritmetici (+) ma si possono usare gate come andalso oppure orelse. Si possono utilizzare funzioni di supporto.
    Alcune chiamate di esempio:
    
    sum_binary([],[]);
    val it = []: int list;
    
    sum_binary([1,0],[1]);
    val it = [1, 1]: int list;
    
    sum_binary([1,0,0,1],[1,1,0]);
    val it = [1, 1, 1, 1]: int list;
    
    sum_binary([1],[1,1]);
    val it = [1, 0, 0]: int list;
    
    sum_binary([1,1,0,0,1,1],[1,0,1,0]);
    val it = [1, 1, 1, 1, 0, 1]: int list;
    
    sum_binary([1,0,0,1,1],[1,1,1,0,1]);
    val it = [1, 1, 0, 0, 0, 0]: int list;
*)

(*usato per fare la somma senza operatore +*)

fun orgate (0,0) = 0 | orgate (_,_) = 1;

(*i pattern match iniziali sono tutti i casi limite*)

fun appo (nil,nil,true) = [1]
 |  appo (nil,nil,false) = [0] 
 |  appo (nil,L,true) = appo([0],L,true) 
 |  appo (L,nil,true) = appo(L,[0],true)
 |  appo (nil,L,false) = L 
 |  appo (L,nil,false) = L
 |  appo (L,nil,_) = L 
(* essenzialmente se la somma genera un riporto attiva il bit di carry, poi si fa la somma effettivamente considerando il riporto se presente.  Se non c'è riporto usa la funz orgate *)
 |  appo (L1,L2,carry) = if (hd(L1) = 1 andalso hd(L2) = 1) 
                          then (if carry = true 
                              then 1::appo(tl(L1),tl(L2),true) 
                              else 0::appo(tl(L1),tl(L2),true) ) 
                          else (if carry = true 
                                  then if ((hd(L1) = 1 andalso hd(L2) = 0) orelse (hd(L1) = 0 andalso hd(L2) = 1)) 
                                      then 0::appo(tl(L1),tl(L2),true)
                                      else  1::appo(tl(L1),tl(L2),false) 
                                  else orgate(hd(L1),hd(L2))::appo(tl(L1),tl(L2),false));

(*chiama la funzione vera e propria rovesciando la lista per fare i calcoli nell'ordine "giusto" e poi gliela restituisce per girarla di nuovo. 
false è il valore iniziale del riporto.*)

fun sum_binary (nil,L) = L | sum_binary(L,nil) = L | sum_binary (L1,L2) =
let
  val R1 = List.rev(L1);
  val R2 = List.rev(L2);
in
  List.rev(appo(R1,R2,false))
end;

(* alcune chiamate d'esempio *)

sum_binary([],[]);
sum_binary([1,0],[1]);
sum_binary([1,0,0,1],[1,1,0]);
sum_binary([1],[1,1]);
sum_binary([1,1,0,0,1,1],[1,0,1,0]);
sum_binary([1,0,0,1,1],[1,1,1,0,1]);