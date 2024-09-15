% Constraints
% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

not_member(_, []).
not_member(X, [Y | T]) :- X \= Y, not_member(X, T).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

% Planning
close_state(close(Close)) :- close_character(Close).
close_state(close([])).

held_state(holds(Held)) :- holds_character(Held).
held_state(holds([])).

% Get the initial state in regards to what items are close and held
% In the form: [close(item), holds(item), ...]
initial_state([Close, Held, sat_on([])]) :- close_state(Close), held_state(Held).

% We want to go from the current state to the final state
transform(FinalState, Plan) :- initial_state(State1), transform(State1, FinalState, [State1], Plan).
transform(State1, FinalState,_,[]) :- subset(FinalState, State1).
transform(State1, State2, Visited, [Action|Actions]) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not_member(State, Visited),
    transform(State, State2, [State|Visited], Actions).

% We choose an action to take
choose_action(Action, State1, State2) :- suggest(Action, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(walk(X), [close(Close), holds(Held), sat_on(Sat)]) :- member(X, Close).
suggest(grab(X), [close(Close), holds(Held), sat_on(Sat)]) :- member(X, Held).
suggest(sit(X), [close(Close), holds(Held), sat_on(Sat)]) :- member(X, Sat).
suggest(walk(X), [close(Close), holds(Held), sat_on(Sat)]) :- member(X, Held), not_member(X, Close).
suggest(walk(X), [close(Close), holds(Held), sat_on(Sat)]) :- member(X, Sat), not_member(X, Close).

% Check if an action is legal given the state
legal_action(walk(X), [close(Close), holds(Held), sat_on(Sat)]) :- type(X, Y), Y \= character, not_member(X, Close).
legal_action(grab(X), [close(Close), holds(Held), sat_on(Sat)]) :- type(X, Y), Y \= character, member(X, Close), not_member(X, Held).
legal_action(sit(X), [close(Close), holds(Held), sat_on(Sat)]) :- sittable(X), member(X, Close), not_member(X, Held).

% Update state
% If we walk to something, anything we are not holding is no longer close
update(walk(X), [close(Close), holds(Held), sat_on(Sat)], [close(Closen), holds(Held), sat_on(Sat)]) :- update_walking(X, [Close, Held], [], Closen).
update(grab(X), [close(Close), holds(Held), sat_on(Sat)], [close(Close), holds([X | Held]), sat_on(Sat)]).
update(sit(X), [close(Close), holds(Held), sat_on(Sat)], [close(Close), holds(Held), sat_on([X | Sat])]).

update_walking(X, [[], _], State1, State1).
update_walking(X, [[Y | T], Held], State, State1) :- X \= Y, not_member(Y, Held),
                                                                update_walking(X, T, State, State1).
update_walking(X, [[Y | T], _], State, [Y | State1]) :- update_walking(X, T, State, [Y | State1]).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol), transform([_, holds([Remote | _]), _], P).
%complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt),
%                                             transform([holds(Remote), holds(Clothes)], P).
%complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa),
%                                        transform([holds(Cell), sat_on(Sofa)], P).