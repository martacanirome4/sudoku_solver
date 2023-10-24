% RULES

% Determine that each zone is different
diferente(A, B, C, D, E, F) :-
    num(A),       % A must be a valid number
    num(B),       % B must be a valid number
    num(C),       % C must be a valid number
    num(D),       % D must be a valid number
    num(E),       % E must be a valid number
    num(F),       % F must be a valid number
    A \= B,       % A and B must be different
    A \= C,       % A and C must be different
    A \= D,       % A and D must be different
    A \= E,       % A and E must be different
    A \= F,       % A and F must be different
    B \= C,       % B and C must be different
    B \= D,       % B and D must be different
    B \= E,       % B and E must be different
    B \= F,       % B and F must be different
    C \= D,       % C and D must be different
    C \= E,       % C and E must be different
    C \= F,       % C and F must be different
    D \= E,       % D and E must be different
    D \= F,       % D and F must be different
    E \= F.       % E and F must be different

% Print the values in a row
printsudoku(A, B, C, D, E, F) :-
    write(' '),
    write(A), write('  '),
    write(B), write('  '),
    write(C), write('  '),
    write(D), write('  '),
    write(E), write('  '),
    write(F), write('  '),
    nl.  % Move to the next line

% Resolve the 6x6 Sudoku puzzle ensuring all numbers are different
resolver(
    R1C1, R1C2, R1C3, R1C4, R1C5, R1C6,
    R2C1, R2C2, R2C3, R2C4, R2C5, R2C6,
    R3C1, R3C2, R3C3, R3C4, R3C5, R3C6,
    R4C1, R4C2, R4C3, R4C4, R4C5, R4C6,
    R5C1, R5C2, R5C3, R5C4, R5C5, R5C6,
    R6C1, R6C2, R6C3, R6C4, R6C5, R6C6) :-

    /* ROWS */
    diferente(
        R1C1, R1C2, R1C3, R1C4, R1C5, R1C6), % First row
    diferente(
        R2C1, R2C2, R2C3, R2C4, R2C5, R2C6), % Second row
    diferente(
        R3C1, R3C2, R3C3, R3C4, R3C5, R3C6), % Third row
    diferente(
        R4C1, R4C2, R4C3, R4C4, R4C5, R4C6), % Fourth row
    diferente(
        R5C1, R5C2, R5C3, R5C4, R5C5, R5C6), % Fifth row
    diferente(
        R6C1, R6C2, R6C3, R6C4, R6C5, R6C6), % Sixth row

    /* COLUMNS */
    diferente(
        R1C1, R2C1, R3C1, R4C1, R5C1, R6C1), % First column
    diferente(
        R1C2, R2C2, R3C2, R4C2, R5C2, R6C2), % Second column
    diferente(
        R1C3, R2C3, R3C3, R4C3, R5C3, R6C3), % Third column
    diferente(
        R1C4, R2C4, R3C4, R4C4, R5C4, R6C4), % Fourth column
    diferente(
        R1C5, R2C5, R3C5, R4C5, R5C5, R6C5), % Fifth column
    diferente(
        R1C6, R2C6, R3C6, R4C6, R5C6, R6C6), % Sixth column

    /* BLOCKS (Left to Right, Top to Bottom) */
    diferente(
        R1C1, R1C2, R1C3, R2C1, R2C2, R2C3), % Block 1
    diferente(
        R1C4, R1C5, R1C6, R2C4, R2C5, R2C6), % Block 2
    diferente(
        R3C1, R3C2, R3C3, R4C1, R4C2, R4C3), % Block 3
    diferente(
        R3C4, R3C5, R3C6, R4C4, R4C5, R4C6), % Block 4
    diferente(
        R5C1, R5C2, R5C3, R6C1, R6C2, R6C3), % Block 5
    diferente(
        R5C4, R5C5, R5C6, R6C4, R6C5, R6C6). % Block 6

% Predicate to solve the 6x6 Sudoku puzzle
sudoku(
    R1C1, R1C2, R1C3, R1C4, R1C5, R1C6,
    R2C1, R2C2, R2C3, R2C4, R2C5, R2C6,
    R3C1, R3C2, R3C3, R3C4, R3C5, R3C6,
    R4C1, R4C2, R4C3, R4C4, R4C5, R4C6,
    R5C1, R5C2, R5C3, R5C4, R5C5, R5C6,
    R6C1, R6C2, R6C3, R6C4, R6C5, R6C6) :-

    resolver(
        R1C1, R1C2, R1C3, R1C4, R1C5, R1C6,
        R2C1, R2C2, R2C3, R2C4, R2C5, R2C6,
        R3C1, R3C2, R3C3, R3C4, R3C5, R3C6,
        R4C1, R4C2, R4C3, R4C4, R4C5, R4C6,
        R5C1, R5C2, R5C3, R5C4, R5C5, R5C6,
        R6C1, R6C2, R6C3, R6C4, R6C5, R6C6),

    % Print the solved Sudoku grid
    printsudoku(
        R1C1, R1C2, R1C3, R1C4, R1C5, R1C6),
    printsudoku(
        R2C1, R2C2, R2C3, R2C4, R2C5, R2C6),
    printsudoku(
        R3C1, R3C2, R3C3, R3C4, R3C5, R3C6),
    printsudoku(
        R4C1, R4C2, R4C3, R4C4, R4C5, R4C6),
    printsudoku(
        R5C1, R5C2, R5C3, R5C4, R5C5, R5C6),
    printsudoku(
        R6C1, R6C2, R6C3, R6C4, R6C5, R6C6).

% FACTS
% Define the valid numbers for the 6x6 Sudoku puzzle
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
