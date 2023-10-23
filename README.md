# Proyecto Sudoku Solver README

Este proyecto implementa un solucionador de Sudoku en Prolog utilizando un enfoque basado en restricciones. El README proporciona una descripción general del proyecto, los pasos involucrados y los resultados de cada paso.

## Descripción del proyecto

El objetivo de este proyecto es crear un programa Prolog que pueda resolver Sudokus haciendo cumplir las reglas del Sudoku mediante programación lógica de restricciones. Sudoku es un rompecabezas de colocación de números basado en la lógica en el que se debe llenar una cuadrícula de 9x9 con dígitos del 1 al 9, asegurando que ningún dígito se repita en ninguna fila, columna o subcuadrícula de 3x3.

## Pasos y resultados

### 1. Representación de cuadrícula

**Resultado:** Representamos el Sudoku como una cuadrícula de 9x9, en la que cada celda contiene un dígito del 1 al 9 o una celda vacía (representada por una variable).

**Justificación:** La estructura de cuadrícula es fundamental para modelar el Sudoku. Cada celda debe tener un valor y las celdas vacías se representan como variables que se completarán durante el proceso de resolución.

### 2. Propagación de restricciones

**Resultado:** Usamos las capacidades de propagación de restricciones de Prolog para hacer cumplir las reglas del Sudoku, como garantizar que cada dígito aparezca solo una vez en filas, columnas y subcuadrículas.

**Justificación:** La propagación de restricciones es una técnica fundamental para resolver Sudokus. Automáticamente impone restricciones y elimina posibilidades no válidas, lo que hace que el proceso de resolución sea más eficiente.

### 3. Aplicación de reglas

**Resultado:** Aplicamos las reglas del Sudoku, incluida la garantía de que cada fila y columna contenga valores distintos y que cada subcuadrícula de 3x3 contenga dígitos únicos.

**Justificación:** Las reglas del Sudoku son cruciales para resolver el rompecabezas. Estas reglas son el núcleo de la lógica del rompecabezas y deben aplicarse rigurosamente para encontrar una solución válida.

### 4. Estrategia de búsqueda

**Resultado:** Combinamos la propagación de restricciones con una estrategia de búsqueda para completar los valores de las celdas vacías y al mismo tiempo garantizar que se cumplan las restricciones.

**Justificación:** Una combinación de propagación de restricciones y búsqueda es un enfoque eficaz para resolver Sudokus. La propagación de restricciones reduce el espacio de búsqueda y la estrategia de búsqueda explora posibilidades válidas para encontrar una solución.

### 5. Solución única

**Resultado:** El solucionador tiene como objetivo encontrar una única solución válida que cumpla con todas las reglas del Sudoku.

**Justificación:** Un Sudoku válido debe tener una solución única. El objetivo del solucionador es encontrar esta solución única siguiendo las reglas.

## Cómo utilizar

1. Clona este repositorio.
2. Cargue el archivo Prolog que contiene el solucionador de Sudoku en su entorno Prolog.
3. Defina un Sudoku como una cuadrícula de 9x9 con dígitos y variables. Utilice variables (por ejemplo, `X`) para representar celdas vacías.
4. Invoca el predicado `solve_sudoku/1` con tu Sudoku para encontrar una solución.

## Ejemplo de uso

```prolog
?- solve_sudoku([[5, 3, X, X, 7, X, X, X, X],
                  [6, X, X, 1, 9, 5, X, X, X],
                  [X, 9, 8, X, X, X, X, 6, X],
                  [8, X, X, X, 6, X, X, X, 3],
                  [4, X, X, 8, X, 3, X, X, 1],
                  [7, X, X, X, 2, X, X, X, 6],
                  [X, 6, X, X, X, X, 2, 8, X],
                  [X, X, X, 4, 1, 9, X, X, 5],
                  [X, X, X, X, 8, X, X, 7, 9]]).
