# Solucionador de Sudoku con Prolog

## Descripción general

Este programa 'Sudoku Solver' es un programa simple que te permite resolver un puzzle Sudoku de dimensiones 4x4 utilizando Prolog. Sudoku es un popular juego de rompecabezas numérico donde el objetivo es llenar una cuadrícula de 4x4 con números del 1 al 4 de tal manera que cada fila, cada columna y cada subcuadrícula de 2x2 contenga todos los números del 1 al 4 sin repetición.

El solucionador utiliza un enfoque lógico para determinar la solución válida para un Sudoku determinado.

## Cómo funciona

Prolog Sudoku Solver funciona definiendo y aplicando restricciones para el Sudoku:

- Define una cuadrícula de Sudoku 4x4 válida con distintas filas, columnas y subcuadrículas (regiones) de 2x2.
- Utiliza permutación para generar combinaciones de filas válidas.
- Transpone la cuadrícula para garantizar las restricciones de las columnas.
- Define regiones y garantiza que contengan valores distintos.
- Utiliza retroceso y etiquetado para encontrar la solución.

## Cómo probarlo

1. Carga el programa Prolog en su entorno Prolog usando el predicado `consult`:

    ```prolog
    ?- consult('sudoku_solver.pl').

2. Crea un Sudoku definiendo una cuadrícula de 4x4. Utilice números enteros del 1 al 4 para representar valores conocidos y utilice un guión bajo _ para representar celdas vacías.

sudoku([ [_, _, 2, _],
         [_, 4, _, _],
         [1, _, _, _],
         [_, _, _, 3] ]).

4. El solucionador enviará el Sudoku resuelto a la consola.

## Ejemplo

Supongamos que se tiene el siguiente Sudoku 4x4 incompleto:

sudoku([ [_, _, 2, _],
         [_, 4, _, _],
         [1, _, _, _],
         [_, _, _, 3] ]).

Se puede solucionar siguiendo los pasos anteriores. El solucionador producirá el siguiente resultado:

[3, 1, 2, 4]
[2, 4, 3, 1]
[1, 3, 4, 2]
[4, 2, 1, 3]

Esto representa el Sudoku resuelto.

## Licencia

Copyright 2023 Marta Canino Romero

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
