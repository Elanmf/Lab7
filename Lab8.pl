% ARTI 303 - Lab 08: Lists

% Task 1: Remove every occurrence of X, keeping the other elements in order.
deleteElement(_, [], []).
deleteElement(X, [Head|Tail], Result) :-
    (   Head == X
    ->  deleteElement(X, Tail, Result)
    ;   Result = [Head|Rest],
        deleteElement(X, Tail, Rest)
    ).

% ?- deleteElement(1, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% List = [2,4,3,4,3,4,2].
% ?- deleteElement(3, [1,2,1,4,3,4,1,1,1,3,4,2,1,1,1], List).
% List = [1,2,1,4,4,1,1,1,4,2,1,1,1].
% ?- deleteElement(2, [1,2,3], List).
% List = [1,3].

% Task 2: Keep each head until the empty tail is reached, then insert X.
% Adding at the end visits every element. Adding at the front takes one step.
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Rest]) :-
    add_at_the_end(X, Tail, Rest).

% ?- add_at_the_end(5, [1,2,3,4], List).
% List = [1,2,3,4,5].
% ?- add_at_the_end(d, [a,b,c], List).
% List = [a,b,c,d].
