## UNITN programmazione funzionale - SML

![Stars](https://img.shields.io/github/stars/pater999/UNITN-linguaggi-programmazione-SML.svg) ![Release](https://img.shields.io/github/release/pater999/UNITN-linguaggi-programmazione-SML.svg) ![Downloads](https://img.shields.io/github/downloads/pater999/UNITN-linguaggi-programmazione-SML/total.svg) ![Pull Requests](https://img.shields.io/github/issues-pr-closed/pater999/UNITN-linguaggi-programmazione-SML.svg) ![Forks](https://img.shields.io/github/forks/pater999/UNITN-linguaggi-programmazione-SML.svg) ![Made with markdown](https://img.shields.io/badge/Made%20with-Markdown-1f425f.svg) ![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg)

Repository contenente alcuni esami con soluzione proposti durante lo sbarramento dell'esame di Programmazione Funzionale (Ex. Linguaggi di programmazione modulo 2) tenuto dai prof Kuper e Di Francescomarino all'Università di Trento.

## Consigli per prepararsi al meglio

- Iniziate leggendo il [PDF ML for dummies](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/blob/master/ML%20for%20Dummies.pdf)
- Guardatevi questi [video tutorial](https://www.youtube.com/playlist?list=PL-eVNDa9MNJczU4ZjhJDT8rIcCa12DyAx) (in inglese ma ben fatti - bastano i primi 10/11)
- Provate a fare gli esercizi che trovate nella [cartella Esercizi](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/tree/master/Esercizi).
- Provate a fare gli esami passati che trovate nella [cartella Esami](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/tree/master/Esami) o raccolti in [questo file](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/blob/master/Esami/Esami.md). 
  Gli esami di Kuper sono (_fino a questo momento_) più **semplici** rispetto quelli degli anni precedenti e si <u>**ripetono spesso**</u>.
- _FACOLTATIVO:_ leggetevi velocemente le slide del corso.
- Tutte le risorse presenti in questa repository sono scaricabili a [questo link](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/releases).

### Piccola guida PolyML

**INSTALLAZIONE SU WINDOWS**

- Scaricate ed eseguite PolyML5.8-64bit.msi da [qui](https://github.com/polyml/polyml/releases).
- Una volta installato vi basterà aprirlo e si aprirà il terminale di polyML.

**INSTALLAZIONE SU LINUX**

- Aprite il terminale e digitate `sudo apt-get update` e poi `sudo apt-get install polyml`
- Una volta installato digitate `poly` e vi si aprirà il terminale di polyML.

_Consiglio di utilizzare Linux che è più comodo rispetto a Windows ed è quello utilizzato durante l'esame._<br>

**COMANDI UTILI**

- Per aprire un file all'interno della console di POLY basta scrivere `use "nomefile.sml";`
- Per visualizzare tutte le funzioni di una libreria utilizzate il comando `open <nome_libreria>;` (es. `open TextIO;`)
- Per copiare ed incollare testo sul terminale di poly dovete installare rlwrap utilizzando il comando `sudo apt install rlwrap` e poi avviare poly con il comando `rlwrap poly`. Sarete così in grado di copiare testo e accedere alla storia dei comandi utilizzando la freccia in alto.

**LIBRERIE IMPORTANTI**

Qui sotto la [lista delle librerie](https://www.itu.dk/~sestoft/mosmllib/index.html) più importanti con relativa documentazione (qualsiasi libreria è utilizzabile durante l'esame):

- [List](https://www.itu.dk/~sestoft/mosmllib/List.html)
- [TextIO](https://www.itu.dk/~sestoft/mosmllib/TextIO.html)
- [Int](https://www.itu.dk/~sestoft/mosmllib/Int.html)
- [String](https://www.itu.dk/~sestoft/mosmllib/String.html)
- [Char](https://www.itu.dk/~sestoft/mosmllib/Char.html)
- [Math](https://www.itu.dk/~sestoft/mosmllib/Math.html)

### Data aggiornamento
Questa repository è aggiornata all'esame di **febbraio 2024**.
## Parte teorica - 2° Parte dell'esame

Trovate una repository utile per preparare la parte teorica a [questo link](https://github.com/Pater999/UNITN-lingprog-simulatore-mod2). Essa comprende un simulatore web con le domande prese dagli esami passati (che spesso si sono rivelate **uguali o simili** negli esami recenti).

## Nuovi esami

Gli esami **non** vengono più pubblicati dal professore. L'unico modo per mantenere questa repository aggiornata è ricordarsi il testo e pubblicarlo qui. Aprendo un [issue](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/issues), una [pull request](https://github.com/Pater999/UNITN-linguaggi-programmazione-SML/pulls) oppure contattandomi su [telegram](https://t.me/pater999) scrivendomi il testo dell'esame svolto. Facendo ciò sarete sicuramente utili agli studenti degli anni successivi. A tal proposito ringrazio **<u>tutti</u>** quelli che hanno contribuito a mantenere questa repository aggiornata!