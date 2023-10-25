valid_sudoku(Board) :-
    valid_rows(Board),
    transpose(Board, Columns),
    valid_rows(Columns),
    valid_regions(Board).

valid_rows([]).
valid_rows([Row | Rest]) :-
    permutation([1, 2, 3, 4], Row),
    valid_rows(Rest).

valid_regions(Board) :-
    valid_region(Board, 0, 0),
    valid_region(Board, 0, 2),
    valid_region(Board, 2, 0),
    valid_region(Board, 2, 2).

valid_region(Board, RowStart, ColStart) :-
    Region = [A, B, C, D],
    Row1 is RowStart,
    Row2 is RowStart + 1,
    Col1 is ColStart,
    Col2 is ColStart + 1,
    nth0(Row1, Board, R1),
    nth0(Row2, Board, R2),
    nth0(Col1, R1, A),
    nth0(Col2, R1, B),
    nth0(Col1, R2, C),
    nth0(Col2, R2, D),
    permutation([1, 2, 3, 4], Region).

sudoku(Board) :-
    valid_sudoku(Board),
    print_board(Board).

print_board([]).
print_board([Row | Rest]) :-
    write(Row), nl,
    print_board(Rest).
