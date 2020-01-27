# UNITN-linguaggi-programmazione-SML
Repository contentente alcuni esami con soluzione proposti durante lo sbarramento dell'esame di Linguaggi di programmazione modulo 2 (prof. Kuper).

## Consigli per prepararsi al meglio:
* Iniziate leggendo il pdf ML for dummies
* Guardatevi questi [video tutorial](https://www.youtube.com/playlist?list=PL-eVNDa9MNJczU4ZjhJDT8rIcCa12DyAx) (in inglese ma ben fatti - bastano i primi 10/11)
* Cercate di capire le soluzioni degli esami passati e poi provate a fare gli esami da soli. Gli esami di kuper sono, fino a questo momento, più semplici rispetto quelli di Abeni degli anni scorsi.

### Piccola guida PolyML
**INSTALLAZIONE SU WINDOWS**
* Scaricate ed eseguite PolyML5.8-64bit.msi da [qui](https://github.com/polyml/polyml/releases).
* Una volta installato vi basterà aprirlo e si aprirà il terminale di polyML.

**INSTALLAZIONE SU LINUX**
* Aprite il terminale e digitate ```sudo apt-get update ``` e poi ``` sudo apt-get install polyml  ```
* Una volta installato digitate ``` poly ``` e vi si aprirà il terminale di polyML.

*Consiglio di utilizzare Linux che è più comodo rispetto a Windows ed è quello utilizzato durante l'esame.*<br>


**COMANDI UTILI**
* Per aprire un file all'interno della console di POLY basta scrivere  ``` use "nomefile.sml"; ```
* Per visualizzare tutte le funzioni di una libreria utilizzate il comando  ``` open <nome_libreria>; ``` (es. ``` open TextIO; ```)
* Per copiare ed incollare testo sul terminale di poly dovete installare rlwrap utilizzando il comando ``` sudo apt install rlwrap ``` e poi avviare poly con il comando ``` rlwrap poly ```. Sarete così in grado di copiare testo e accedere alla storia dei comandi utilizzando la freccia in alto.

**LIBRERIE IMPORTANTI**

Qui sotto la [lista delle librerie](https://www.itu.dk/~sestoft/mosmllib/index.html) più importanti con relativa documentazione (qualsiasi libreria è utilizzabile durante l'esame):
* [List](https://www.itu.dk/~sestoft/mosmllib/List.html) 
* [TextIO](https://www.itu.dk/~sestoft/mosmllib/TextIO.html)
* [Int](https://www.itu.dk/~sestoft/mosmllib/Int.html)
* [String](https://www.itu.dk/~sestoft/mosmllib/String.html)
* [Char](https://www.itu.dk/~sestoft/mosmllib/Char.html)
* [Math](https://www.itu.dk/~sestoft/mosmllib/Math.html)
