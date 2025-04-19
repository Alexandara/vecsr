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

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

-rooms(X) :- not rooms(X).

state_subset([close(CloseFinal), inside(InsideFinal), laid_on(LaidFinal)],
             [close(Close), inside(Inside), laid_on(Laid)]) :-
                    subset(CloseFinal, Close),
                    subset(InsideFinal, Inside),
                    subset(LaidFinal, Laid).

% Get the initial state of the world from the dynamically generated VirtualHome state
% Initial State in example: [close([]),inside([[bed111,bedroom74]]),laid_on([])]
close_state(close(Close)) :- close_character(Close).
close_state(close([])).

inside_state(inside(Inside)) :- inside(Inside).
inside_state(inside([])).

initial_state([Close, Inside, laid_on([])]) :-
    close_state(Close), inside_state(Inside).

transform(FinalState, Plan) :- initial_state(State1), transform(State1, FinalState, [State1], Plan).
transform(State1, FinalState,_,[]) :- state_subset(FinalState, State1).
transform(State1, State2, Visited, [Action|Actions]) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not_member(State, Visited),
    transform(State, State2, [State|Visited], Actions).

% choose_action(Action,[close([]),inside([[bed111,bedroom74]]),laid_on([])],[close([]),inside([]),laid_on([bed111])]).
% walk(bedroom74)
% update(walk(bedroom74), [close([]),inside([[bed111,bedroom74]]),laid_on([])], State).
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

update(walk(X), [close(Close), inside(In), laid_on(Laid)],
                [close(Closen), inside(Inf), laid_on(Laid)]) :-
    update_walking(X, [Close], [], Closen),
    update_room(X, In, [], Inf).
update(lie(X), [close(Close), inside(In), laid_on(Laid)],
               [close(Close), inside(In), laid_on([X | Laid])]).
update_walking(X, [[]], State1, [X | State1]).
update_walking(X, [[Y | T]], State, State1) :- X \= Y, update_walking(X, [T], State, State1).
update_walking(X, [[Y | T]], State, State1) :- update_walking(X, [T], [Y | State], State1).

update_room(X, In, [], In) :- -rooms(X).
update_room(X, [], In1, [[character1, X] | In1]).
update_room(X, [[character1, Room] | T], State, State1) :- X \= Room, update_room(X, T, State, State1).
update_room(X, [[Item, Whatever] | T], State, State1) :- update_room(X, T, [[Item, Whatever] | State], State1).

complete_task(go_to_sleep, P) :- type(Bed, bed),
    transform([close([]), inside([]), laid_on([Bed])], P).

?- complete_task(go_to_sleep, P).