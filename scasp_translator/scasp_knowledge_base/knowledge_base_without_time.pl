% Constraints
% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

% Planning
close_state(Close) :- close_character(Close).
close_state([]).

held_state(Held) :- holds_character(Held).
held_state([]).

% Get the initial state in regards to what items are close and held
% In the form: [close(item), holds(item), ...]
initial_state(List) :- close_state(Close), held_state(Held), initial_state(Close, Held, [], List).
initial_state([], [], List, List).
initial_state([], [X | Y], List, [X | W]) :- initial_state([], Y, List, W).
initial_state([X | Y], Held, List, [X | W]) :- initial_state(Y, Held, List, W).

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
suggest(walk(X), State) :- member(close(X), State).
suggest(grab(X), State) :- member(holds(X), State).
suggest(sit(X), State) :- member(sat_on(X), State).
suggest(walk(X), State) :- member(holds(X), State), not member(close(X), State).
suggest(walk(X), State) :- member(sat_on(X), State), not member(close(X), State).

% Check if an action is legal given the state
legal_action(walk(X), State) :- type(X, Y), Y \= character, not member(close(X), State).
legal_action(grab(X), State) :- type(X, Y), Y \= character, member(close(X), State), not member(holds(X), State).
legal_action(sit(X), State) :- sittable(X), member(close(X), State), not member(holds(X), State).

% Update state
% If we walk to something, anything we are not holding is no longer close
update(walk(X), State, [close(X) | State1]) :- update_walking(X, State, State, [], State1).
update(grab(X), State, [holds(X) | State]).
update(sit(X), State, [sat_on(X) | State]).


update_walking(X, _, [], State1, State1).
update_walking(X, StateConst, [close(Y) | T], State, State1) :- X \= Y, not member(holds(Y), StateConst),
                                                                update_walking(X, StateConst, T, State, State1).
update_walking(X, StateConst, [Y | T], State, [Y | State1]) :- update_walking(X, StateConst, T, State, State1).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol), transform([holds(Remote)], P).
complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt),
                                             transform([holds(Remote), holds(Clothes)], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa),
                                        transform([close(Cell), holds(Cell), sat_on(Sofa)], P).