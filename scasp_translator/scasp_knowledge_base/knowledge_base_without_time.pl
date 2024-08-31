% Constraints
% Transitive Properties
inherited_inside(Inner, Outer) :- inside(Inner, Outer).
inherited_inside(Inner, Outer) :- inside(Inner, X), inherited_inside(X, Outer).

inherited_ontopof(Inner, Outer) :- ontopof(Inner, Outer).
inherited_ontopof(Inner, Outer) :- ontopof(Inner, X), inherited_ontopof(X, Outer).

% One or the other
-open(X) :- closed(X).
-closed(X) :- open(X).
-on(X) :- off(X).
-off(X) :- on(X).
reachable(X) :- not inside(X, _).
reachable(X) :- inside(X, Y), not closed(Y).

% Other
held_by(Person, [Object1, Object2]) :- holds_rh(Person, [Object1]), holds_lh(Person, [Object2]).
held_by(Person, Object) :- holds_rh(Person, Object).
held_by(Person, Object) :- holds_lh(Person, Object).
held_by(Person, []).

% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

% Planning
close_state(Close) :- close(character0, Close).
close_state([]).

held_state(Held) :- held_by(character0, Held).
held_state([]).

% TODO: This doesn't work. It just defaults to the base case.
on_top_array([ontop(X,Y) | OtherItems]) :- ontopof(X, Y), not member(ontop(X, Y), OtherItems), on_top_array(OtherItems).
on_top_array([]).
% Get the initial state in regards to what items are close and held
% In the form: [close(item), held(item), ...]
initial_state(List) :- close_state(Close), held_state(Held), initial_state(Close, Held, [], List).
initial_state([], [], List, List).
initial_state([], [X | Y], List, [held(X) | W]) :- initial_state([], Y, List, W).
initial_state([X | Y], Held, List, [close(X) | W]) :- initial_state(Y, Held, List, W).

% We want to go from the current state to the final state
transform(FinalState, Plan) :- initial_state(State1), transform(State1, FinalState, [State1], Plan).
transform(State1, FinalState,_,[]) :- subset(FinalState, State1).
transform(State1, State2, Visited, [Action|Actions]) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not member(State, Visited),
    transform(State, State2, [State|Visited], Actions).

% We choose an action to take
choose_action(Action, State1, State2) :- suggest(Action, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(grab(X), State) :- member(held(X), State).
suggest(walk(X), State) :- member(close(X), State).
suggest(sit(X), State) :- member(sat_on(X), State).

% Check if an action is legal given the state
legal_action(walk(X), State) :- type(X, Y), Y \= character, not member(close(X), State).
legal_action(grab(X), State) :- type(X, Y), Y \= character, member(close(X), State), not member(held(X), State).
legal_action(sit(X), State) :- sittable(X), member(close(X), State), not member(held(X), State).

% Update state
% If we walk to something, anything we are not holding is no longer close
update(walk(X), State, [close(X) | State1]) :- update_walking(X, State, State, [], State1).
update(grab(X), State, [held(X) | State]).
update(sit(X), State, [sat_on(X) | State]).


update_walking(X, _, [], State1, State1).
update_walking(X, StateConst, [close(Y) | T], State, State1) :- X \= Y, not member(held(Y), StateConst),
                                                                update_walking(X, StateConst, T, State, State1).
update_walking(X, StateConst, [Y | T], State, [Y | State1]) :- update_walking(X, StateConst, T, State, State1).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol), transform([held(Remote)], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa), transform([held(Cell), sat_on(Sofa)], P).