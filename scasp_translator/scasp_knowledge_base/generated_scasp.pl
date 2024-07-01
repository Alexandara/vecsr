% Current State
current_time(1).
type(livingroom100, livingroom).
containers(livingroom100).
type(character0, character).
type(remotecontrol1, remotecontrol).
off(remotecontrol1, 1).
grabbable(remotecontrol1).
has_switch(remotecontrol1).
type(television2, television).
off(television2, 1).
has_switch(television2).
type(clothesbasket3, clothesbasket).
grabbable(clothesbasket3).
containers(clothesbasket3).
type(clothes4, clothes).
grabbable(clothes4).
type(clothes5, clothes).
grabbable(clothes5).
inside_flipped(livingroom100, [character0, remotecontrol1, television2, clothesbasket3, clothes4, clothes5], 1).
inside(character0, [livingroom100], 1).
inside(remotecontrol1, [livingroom100], 1).
inside(television2, [livingroom100], 1).
inside(clothesbasket3, [livingroom100], 1).
inside(clothes4, [livingroom100], 1).
inside(clothes5, [livingroom100], 1).
% Rules
% Utilities
list_length(Xs,L) :- list_length(Xs, 0, L) .
list_length([], L, L).
list_length([_|Xs], T, L) :- T1 .=. T+1, list_length(Xs,T1,L).

% Constraints
% Transitive Properties
inherited_inside(Inner, Outer, T) :- inside(Inner, Outer, T).
inherited_inside(Inner, Outer, T) :- inside(Inner, X, T), inherited_inside(X, Outer, T).

inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, Outer, T).
inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, X, T), inherited_ontopof(X, Outer, T).

% One or the other
open(X, T) :- not closed(X, T).
closed(X, T) :- not open(X, T).
on(X, T) :- not off(X, T).
off(X, T) :- not on(X, T).
reachable(X, T) :- containers(Y, T), not inside(X, Y, T).
reachable(X, T) :- inside(X, Y, T), not closed(Y, T).

% Get a list of all items held by the person
held_by(Person, [R, L], T) :- holds_rh(Person, [R], T), holds_lh(Person, [L], T).
held_by(Person, [R], T) :- holds_rh(Person, [R], T).
held_by(Person, [L], T) :- holds_lh(Person, [L], T).
held_by(Person, [], T) :- not holds_rh(Person, _, T), not holds_lh(Person, _, T).

held_by(Person, X, T) :- holds_rh(Person, [X], T).
held_by(Person, X, T) :- holds_lh(Person, [X], T).

open_hand(Person, T) :- not holds_rh(Person, _, T).
open_hand(Person, T) :- not holds_lh(Person, _, T).

% Get if an item is close to another item
isclose(X, Y, T) :- close(X, Y, T).
isclose(X, Y, T) :- close_flipped(X, Y, T).
isclose(X, Y, T) :- close(X, CloseItems, T), isclose(Y, CloseItems).
isclose(X, Y, T) :- close(Y, CloseItems, T), isclose(X, CloseItems).
isclose(X, Y, T) :- close_flipped(X, CloseItems, T), isclose(Y, CloseItems).
isclose(X, Y, T) :- close_flipped(Y, CloseItems, T), isclose(X, CloseItems).
isclose(Y, [Y | _]).
isclose(Y, [_ | Tail]) :- isclose(Y, Tail).

% Assume future states based on the present state
sitting(X, T1) :- current_time(T), sitting(X, T), T .<. T1.
reachable(X, T1) :- current_time(T), reachable(X, T), T .<. T1.
held_by(character0, X, T1) :- current_time(T), held_by(character0, X, T), T .<. T1.

% Find Actions
holds(0,State,[]) :-
    init_holds_item(State).
holds(Time1, FinalState, [Action|As]) :-
    Time1 .>. 0,
    Time1 .=. Time + 1,
    allowed_action(Action, PrevState, Time1),
    transition(Action, PrevState, FinalState),
    holds(Time, PrevState, As).

% Base states?
init_holds_item(state(character0, Close, Held)) :- current_time(T),
                                                  isclose(character0, Close, T), held_by(character0, Held, T).
init_holds_item(state(character0, [], Held)) :- current_time(T), held_by(character0, Held, T).
init_holds_item(state(character0, Close, [])) :- current_time(T), isclose(character0, Close, T).
init_holds_item(state(character0, [], [])).

% State transitions
transition([walk, X], state(character0, Close, Held), state(character0, [X | Close], Held)).
transition([grab, X], state(character0, Close, Held), state(character0, Close, [X | Held])).

% Prohibited action conditions
% These don't work, but I'm not sure why
%prohibited([grab, X], _, T) :- not grabbable(X).
%prohibited([grab, X], state(character0, Close, _), T) :- not member(X, Close).
%prohibited([grab, X], state(character0, _, Held), T) :- list_length(Held, 2).

% Allowed Actions
allowed_action([grab, X], state(character0, Close, Held), T) :- grabbable(X), member(X, Close), not list_length(Held, 2).

% Current working query
% ?- holds(T, state(character0, [clothes4], [clothes4]), List).