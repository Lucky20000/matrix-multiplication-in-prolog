# Matrix Multiplication in Prolog

## Task
Two n x n matrices are to be multiplied.

## Explanation of the Predicates

First, a predicate was implemented to calculate the dot product of two vectors with the same dimension. The vectors are passed as lists. The predicate `zeile_Matrix_Spalten_Sp/3` uses the predicate `skalarprodukt/3` to compute the dot product of a row from one matrix and the columns of another matrix. The predicate `matrixmultiplikation/3` performs the matrix multiplication. To do this, the rows of the first matrix are recursively multiplied with the columns of the second matrix until all rows have been processed. The two matrices are passed as lists of lists. Each inner list represents a row of the respective matrix.
