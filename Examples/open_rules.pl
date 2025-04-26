% For demonstration of how to add new functionality to VECSR, this file contains
% the subset of rules that would need to be added to the knowledge base or modified
% to cover the concept of "opening"

% Planning
open_state(open(Open)) :- open_list(Open).
open_state(open([]))

% Get the initial state
initial_state([Close, Held, Sat, OnTopOf, Inside, On, laid_on([]), used([]), eaten([]), open(Open)]) :-
    close_state(Close), held_state(Held), sitting_state(Sat), ontopof_state(OnTopOf), inside_state(Inside), on_state(On),
    open_state(Open).

% Check for final state accomplished
state_subset([close(CloseFinal), holds(HoldsFinal), sat_on(SatFinal), on_top_of(OtoFinal), inside(InsideFinal), on(OnFinal), laid_on(LaidFinal), used(UsedFinal), eaten(EatenFinal),
              open(OpenFinal)],
             [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten),
              open(Open)]) :-
                    subset(CloseFinal, Close), subset(HoldsFinal, Holds), subset(SatFinal, Sat),
                    subset(OtoFinal, Oto), subset(InsideFinal, Inside), subset(OnFinal, On),
                    subset(LaidFinal, Laid), subset(UsedFinal, Used), subset(EatenFinal, Eaten),
                    subset(OpenFinal, Open).

% Suggested actions in priority order
% If the final state expressly asks for something to be open, open it
suggest(open(X), [_, _, _, _, _, _, _, _, _, open(OpenI)], [_, _, _, _, _, _, _, _, _, open(OpenF)]) :-
    member(X, OpenF), not_member(X, OpenI).
% If something we need is inside of something else, open it
suggest(open(X), [C, H, S, Oto, I, O, LO, U, E, open(Open)], StateF) :-
    item_of_interest([C, H, S, Oto, I, O, LO, U, E, open(Open)], StateF, Item),
    state_inside([C, H, S, Oto, I, O, LO, U, E, open(Open)], Item, X),
    -rooms(X), not_member(X, Open).

% Check if an action is legal given the state
% VirtualHome action prerequisites: http://virtual-home.org/documentation/master/kb/actions.html
% For Open:
% - obj1 property is opennable and state is closed.
% - character is close to obj1
% - obj1 is reachable (not inside some closed container)
% - No edge character holds_rh any object or no edge character holds_lh any_object. Character has at least one free hand.
legal_action(grab(X), [close(Close), holds([]), _, _, inside(Inside), _, _, _, _, open(Open)]) :- openable(X),
    member(X, Close), not_member(X, Open), not_member([X, _], Inside).
legal_action(grab(X), [close(Close), holds([_]), _, _, inside(Inside), _, _, _, _, open(Open)]) :- openable(X),
    member(X, Close), not_member(X, Open), not_member([X, _], Inside).
legal_action(grab(X), [close(Close), holds([]), _, _, inside(Inside), _, _, _, _, open(Open)]) :- openable(X),
    member(X, Close), not_member(X, Open), member([X, Y], Inside), member(Y, Open).
legal_action(grab(X), [close(Close), holds([_]), _, _, inside(Inside), _, _, _, _, open(Open)]) :- openable(X),
    member(X, Close), not_member(X, Open), member([X, Y], Inside), member(Y, Open).

% Update state
update(open(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten),
                 open(OpenI)],
               [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten),
                 open([X | OpenIo])]).





