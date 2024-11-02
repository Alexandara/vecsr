% Constraints
% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

not_member(_, []).
not_member(X, [Y | T]) :- X \= Y, not_member(X, T).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

% testing examples:
% state_subset([close([]), holds([]), sat_on([])], [close([]), holds([]), sat_on([])]).
% state_subset([close([]), holds([remotecontrol1]), sat_on([])], [close([remotecontrol1]), holds([television2, remotecontrol1]), sat_on([])]).
% state_subset([close([remotecontrol1]), holds([remotecontrol1]), sat_on([])], [close([remotecontrol1]), holds([television2, remotecontrol1]), sat_on([])]).
state_subset([close(CloseFinal), holds(HoldsFinal), sat_on(SatFinal), on_top_of(OtoFinal), inside(InsideFinal)],
             [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside)]) :-
                    subset(CloseFinal, Close), subset(HoldsFinal, Holds), subset(SatFinal, Sat),
                    subset(OtoFinal, Oto), subset(InsideFinal, Inside).

rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

% Planning
close_state(close(Close)) :- close_character(Close).
close_state(close([])).

held_state(holds(Held)) :- holds_character(Held).
held_state(holds([])).

sitting_state(sat_on(Sat)) :- sitting_character(Sat).
sitting_state(sat_on([])).

ontopof_state(on_top_of(OnTopOf)) :- ontopof(OnTopOf).
ontopof_state(on_top_of([])).

inside_state(inside(Inside)) :- inside(Inside).
inside_state(inside([])).

% Get the initial state in regards to what items are close and held
% Current state: [close(Close), holds(Held), sat_on(Sat)]
initial_state([Close, Held, Sat, OnTopOf, Inside]) :-
    close_state(Close), held_state(Held), sitting_state(Sat), ontopof_state(OnTopOf), inside_state(Inside).

% We want to go from the current state to the final state
transform(FinalState, Plan) :- initial_state(State1), transform(State1, FinalState, [State1], Plan).
transform(State1, FinalState,_,[]) :- state_subset(FinalState, State1).
transform(State1, State2, Visited, [Action|Actions]) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not_member(State, Visited),
    transform(State, State2, [State|Visited], Actions).

% We choose an action to take
% choose_action(action generated, current state, final state)
% Example test query:
% choose_action(Action, [close([remotecontrol1]), holds([]), sat_on([])], [close([]), holds([remotecontrol1]), sat_on([])]).
% choose_action(Action, [close([]), holds([]), sat_on([])], [close([]), holds([remotecontrol1]), sat_on([])]).
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(walk(X), _, [close(Close), _, _, _, _]) :- member(X, Close).
suggest(grab(X), _, [_, holds(Held), _, _, _]) :- member(X, Held).
suggest(sit(X), _, [_, _, sat_on(Sat), _, _]) :- member(X, Sat).
suggest(standup, [_, _, sat_on([_]), _, _], _).
suggest(walk(X), _, [close(Close), holds(Held), _, _, _]) :- member(X, Held), not_member(X, Close).
suggest(walk(X), _, [close(Close), _, sat_on(Sat), _, _]) :- member(X, Sat), not_member(X, Close).

% Check if an action is legal given the state
% Example test query:
% legal_action(walk(remotecontrol1), [close([]), holds([]), sat_on([])]).
% legal_action(grab(remotecontrol1), [close([remotecontrol1]), holds([]), sat_on([])]).
% legal_action(walk(remotecontrol1), [close([]), holds([]), sat_on([couch245])]).
legal_action(walk(X), [close(Close), _, sat_on([]), _, _]) :- type(X, Y), Y \= character, not_member(X, Close).
legal_action(grab(X), [close(Close), holds(Held), _, _, _]) :- type(X, Y), Y \= character, member(X, Close), not_member(X, Held).
legal_action(sit(X), [close(Close), holds(Held), sat_on([]), _, _]) :- sittable(X), member(X, Close), not_member(X, Held).
legal_action(standup, [_, _, sat_on([_]), _, _]).

% Update state
% If we walk to something, anything we are not holding is no longer close
% Example test queries:
% update(grab(remotecontrol1), [close([remotecontrol1]), holds([]), sat_on([])], State).
% update(walk(remotecontrol1), [close([]), holds([]), sat_on([])], State).
% update(walk(television2), [close([remotecontrol1]), holds([]), sat_on([])], State).
% update(walk(television2), [close([remotecontrol1]), holds([remotecontrol1]), sat_on([])], State).
update(walk(X), [close(Close), holds(Held), sat_on(Sat), _, _], [close(Closen), holds(Held), sat_on(Sat), _, _]) :-
    update_walking(X, [Close, Held], [], Closen).
update(grab(X), [close(Close), holds(Held), sat_on(Sat), _, _], [close(Close), holds([X | Held]), sat_on(Sat), _, _]).
update(sit(X), [close(Close), holds(Held), sat_on(Sat), _, _], [close(Close), holds(Held), sat_on([X | Sat]), _, _]).
update(standup, [close(Close), holds(Held), sat_on([X]), _, _], [close(Close), holds(Held), sat_on([]), _, _]).

% Example test queries:
% update_walking(remotecontrol1, [[],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[remotecontrol1]], [], Closen).
update_walking(X, [[], _], State1, [X | State1]).
update_walking(X, [[Y | T], Held], State, State1) :- X \= Y, not_member(Y, Held),
                                                                update_walking(X, [T, Held], State, State1).
update_walking(X, [[Y | T], _], State, State1) :- update_walking(X, [T, Held], [Y | State], State1).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol),
    transform([close([]), holds([Remote]), sat_on([]), on_top_of([]), inside([])], P).
complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt),
    transform([close([]), holds([Remote, Clothes]), sat_on([]), on_top_of([]), inside([])], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa),
    transform([close([]), holds([Cell]), sat_on([Sofa]), on_top_of([]), inside([])], P).


% TODO:
% 1) Implement standuping DONE
% 2) Implement putting
% 3) Implement turning things on and off
% 4) State is tracked in the loop