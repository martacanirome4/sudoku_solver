# Solucionador de Sudoku 6x6 en Prolog

Este repositorio contiene un programa Prolog que puede resolver Sudokus 6x6. Sudoku es un rompecabezas numérico en el que debes llenar una cuadrícula con números del 1 al 6, asegurándote de que cada fila, cada columna y cada una de las seis subcuadrículas de 2x3 contengan todos los números del 1 al 6.

## Cómo funciona el solucionador

El programa Prolog de este repositorio emplea un conjunto de reglas y predicados para garantizar que cada fila, columna y subcuadrícula contenga números diferentes. Así es como funciona:

- Regla **`diferente/6`**: Esta regla asegura que seis variables A, B, C, D, E y F tengan valores diferentes. Impone la restricción de que cada fila, columna o subcuadrícula debe contener números únicos.

- **`printsudoku/6` Predicado**: Este predicado se utiliza para imprimir los valores de las seis variables seguidas, separados por espacios.

- **`resolver/36` Predicado**: El núcleo del algoritmo de resolución de Sudoku. Hace cumplir las reglas del Sudoku asegurándose de que cada fila, columna y subcuadrícula contenga números diferentes. Se necesitan 36 variables que representan los valores en la cuadrícula del Sudoku de 6x6.

- **`sudoku/36` Predicado**: El punto de entrada para resolver el Sudoku 6x6. Puedes llamar a este predicado con tus valores iniciales y resolverá el rompecabezas.

- **`num/1` Facts**: Estos datos definen los números válidos (1 a 6) que se pueden usar en la cuadrícula de Sudoku.

## Cómo utilizar

1. Abra un entorno Prolog como SWI-Prolog.

2. Cree un nuevo archivo Prolog o utilice el editor integrado.

3. Copie y pegue el código proporcionado en su archivo Prolog.

4. Reemplace los guiones bajos en el predicado `sudoku` con los valores iniciales de su Sudoku 6x6. Defina valores conocidos y deje las celdas desconocidas como guiones bajos.

5. Guarde el archivo Prolog con una extensión `.pl`, por ejemplo, `sudoku_solver.pl`.

6. En la terminal Prolog, consulte el archivo usando el predicado `consult/1`:

    ```prolog
    consult('sudoku_solver.pl').