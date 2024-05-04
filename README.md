# Matrix Multiplikation in Prolog 

## Aufgabe
Zwei n x n Matrizen sollen multipliziert werden.

## Erklärung der Prädikate

Zunäst wurde ein Prädikat implementiert, mit dem das Skalarprodukt von zwei gleichdimensionalen Vektoren gebildet werden kann. Die Vektoren werden als Listen übergeben. Das Prädikat `zeile_Matrix_Spalten_Sp/3` nutzt das Prädikat `skalarpodukt/3` um das Skalarprodukt der Zeile einer Matrix und den Spalten einer Matrix zu berechnen. Mit dem Prädikat `matrixmultiplikation/3` kann die Matrixmultiplikation durchgeführt werden. Dafür werden die Zeilen der ersten Matrix so lange durch Rekursion mit den Spalten der zweiten Matrix multipliziert, bis einmal durch alle Zeilen iteriert wurde. Die beiden Matrizen werden als Listen von Listen übergeben. Eine Liste innerhalb einer Liste repräsentiert dabei eine Zeile der jeweiligen Matrix.
