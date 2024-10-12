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
% Current state: [close(Close), holds(Held), sat_on(Sat)]
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
% Example test query:
% choose_action(Action, [close([remotecontrol1]), holds([]), sat_on([])], [close([]), holds([remotecontrol1]), sat_on([])]).
choose_action(Action, State1, State2) :- suggest(Action, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(walk(X), [close(Close), _, _]) :- member(X, Close).
suggest(grab(X), [_, holds(Held), _]) :- member(X, Held).
suggest(sit(X), [_, _, sat_on(Sat)]) :- member(X, Sat).
suggest(walk(X), [close(Close), holds(Held), _]) :- member(X, Held), not_member(X, Close).
suggest(walk(X), [close(Close), _, sat_on(Sat)]) :- member(X, Sat), not_member(X, Close).

% Check if an action is legal given the state
% Example test query:
% legal_action(walk(remotecontrol1), [close([]), holds([]), sat_on([])]).
legal_action(walk(X), [close(Close), _, _]) :- type(X, Y), Y \= character, not_member(X, Close).
legal_action(grab(X), [close(Close), holds(Held), _]) :- type(X, Y), Y \= character, member(X, Close), not_member(X, Held).
legal_action(sit(X), [close(Close), holds(Held), _]) :- sittable(X), member(X, Close), not_member(X, Held).

% Update state
% If we walk to something, anything we are not holding is no longer close
% Example test queries:
% update(grab(remotecontrol1), [close([remotecontrol1]), holds([]), sat_on([])], State).
% update(walk(remotecontrol1), [close([]), holds([]), sat_on([])], State).
% update(walk(television2), [close([remotecontrol1]), holds([]), sat_on([])], State).
update(walk(X), [close(Close), holds(Held), sat_on(Sat)], [close(Closen), holds(Held), sat_on(Sat)]) :- update_walking(X, [Close, Held], [], Closen).
update(grab(X), [close(Close), holds(Held), sat_on(Sat)], [close(Close), holds([X | Held]), sat_on(Sat)]).
update(sit(X), [close(Close), holds(Held), sat_on(Sat)], [close(Close), holds(Held), sat_on([X | Sat])]).

% Example test queries:
% update_walking(remotecontrol1, [[],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[remotecontrol1]], [], Closen).
update_walking(X, [[], _], State1, [X | State1]).
update_walking(X, [[Y | T], Held], State, State1) :- X \= Y, not_member(Y, Held),
                                                                update_walking(X, [T, Held], State, State1).
update_walking(X, [[Y | T], _], State, State1) :- update_walking(X, [T, Held], [Y | State], State1).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol), member(Remote, Holds), transform([_, holds(Holds), _], P).
%complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt),
%                                             transform([holds(Remote), holds(Clothes)], P).
%complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa),
%                                        transform([holds(Cell), sat_on(Sofa)], P).