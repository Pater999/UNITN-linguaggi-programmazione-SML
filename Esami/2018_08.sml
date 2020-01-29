(*  
    ESAME agosto 2018

    % TESTO MANCANTE - NON RIESCO A RISALIRE AL TESTO DALLA SOLUZIONE %
    Probabilente è stato richiesto di implementare una funzione matematica ricorsivamente
*)

    fun prod(m, n) =
    if (n <= m) then m else n * prod(m, n-1);

    fun comb(n, k) =
    (prod(n-k+1, n)) div (prod(1, k));

(*  Come chiamare questa funzione - NON FA PARTE DELLA SOLUZIONE DELL'ESERCIZIO (utili per capire il funzionamento) *)

    comb(2,3);
    comb(10,2);
    comb(1,1);
