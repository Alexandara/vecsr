type(bed111, bed).
sittable(bed111).
lieable(bed111).
inside([[bed111, bedroom74]]).
ontopof([[bed111, floor76], [pillow189, bed111]]).
rooms(bedroom74).

member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

not_member(_, []).
not_member(X, [Y | T]) :- X \= Y, not_member(X, T).

choose_action(Action, State1, State2) :-
    suggest(Action, State1, State2),
    legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).

suggest(lie(X), _, [_, _, laid_on(Laid)]) :-
    member(X, Laid).
suggest(walk(X), _, [close(Close), _, laid_on(Laid)]) :-
    member(X, Laid), not_member(X, Close).
suggest(walk(Room), State1, State2) :-
    item_of_interest(State1, State2, Item),
    state_inside(State1, Item, Room).

item_of_interest(_, _, bed111).
state_inside(_, bed111, bedroom74).

legal_action(lie(X), [close(Close), inside(Inside), laid_on([])]) :-
    lieable(X),
    member(X, Close).
legal_action(walk(X), [_, inside(Inside), _]) :-
    rooms(X), not_member([character1, X], Inside).
legal_action(walk(X), [close(Close), inside(Inside), _]) :-
    type(X, Y), -rooms(X), Y \= character,
    member([X, Room], Inside), member([character1, Room], Inside),
    not_member(X, Close).

?- choose_action(X, [close([]), inside([]), laid_on([])],
                    [close([]), inside([]), laid_on([bed111])]).