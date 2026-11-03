% Lab 7 - Shopping List


shopping :-
    menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    nl,
    writeln('** SHOPPING LIST **'),
    writeln('d. Display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. Exit.'),
    writeln('Enter your choice:'),
    read(Choice),
    (   Choice == d
    ->  display_items(Basket),
        menu(Basket)
    ;   Choice == a
    ->  writeln('Enter the item you want to add:'),
        read(Item),
        (   Item == end_of_file
        ->  true
        ;   writeln('The item has been added.'),
            menu([Item|Basket])
        )
    ;   Choice == e
    ->  writeln('Goodbye.')
    ;   Choice == end_of_file
    ->  true
    ;   writeln('Please enter d., a., or e.'),
        menu(Basket)
    ).

display_items([]).
display_items([Item|Rest]) :-
    writeln(Item),
    display_items(Rest).
