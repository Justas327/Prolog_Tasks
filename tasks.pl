% Task 5 solver
search(Item, [Item|_]).

search(Item, [_|Tail]) :-
    search(Item, Tail).

unique([], []).

unique([Item|Tail], Output) :-
    search(Item, Tail),
    unique(Tail, Output).

unique([Item|Tail], [Item|Output]) :-
    unique(Tail, Output).

task5_solve(List, Output) :-
    unique(List, Output),
    !.

% Task 6 solver
count([], Count) :-
    Count is 0.
     

count([Item|Tail], Count) :-
    number(Item),
    count(Tail, Count2),
    Count is Count2+1.

count([_|Tail], Count) :-
    count(Tail, Count).
    

task6_solve(List, Count) :-
    count(List, Count),
    format('Found ~w numbers', [Count]),
    !.

