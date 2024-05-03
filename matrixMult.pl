/* Durch library(clpfd) kann das Praedikat transpose verwendet werden mit dem eine Matrix transponiert werden kann */
:- use_module(library(clpfd)).

/* Mit dem Praedikat skalarpodukt/3 wird die Summe der Produkte 
von zwei gleichdimensionalen Vektoren gebildet */
skalarprodukt([], [], 0).
skalarprodukt([A1|RestVektorA], [B1|RestVektorB], SP) :- 
    skalarprodukt(RestVektorA, RestVektorB, SP1), 
    SP is SP1 + A1 * B1.

/* Mit dem Praedikat zeile_Matrix_Spalten_Sp/3 wird jeweils 
das Skalarprodukt aus der Zeile einer Matrix 
und den Spalten einer Matrix gebildet */
zeile_Matrix_Spalten_Sp(_, [], []).  
zeile_Matrix_Spalten_Sp(Zeile, [Spalte|RestSpalten], [Sp|RestSp]) :-
    skalarprodukt(Zeile, Spalte, Sp), 
    zeile_Matrix_Spalten_Sp(Zeile, RestSpalten, RestSp). 

/* Mit dem Praedikat matrixmultiplikation/3 wird 
die eigentliche Matrix Multiplikation durchgefuhrt */
matrixmultiplikation([], _, []).
matrixmultiplikation([Zeile1|RestM1], M2, [ErgebnisZeile|RestErgebnis]) :-
    transpose(M2, M2T),
    zeile_Matrix_Spalten_Sp(Zeile1, M2T, ErgebnisZeile),
    matrixmultiplikation(RestM1, M2, RestErgebnis).