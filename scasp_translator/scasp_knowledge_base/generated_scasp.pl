type(livingroom100, livingroom).
type(character0, character).
type(remotecontrol1, remotecontrol).
type(television2, television).
type(clothesbasket3, clothesbasket).
type(clothes4, clothes).
type(clothes5, clothes).
held_by(Person, Object) :- holds_rh(Person, Object).
held_by(Person, Object) :- holds_lh(Person, Object).
held_by(Person, []).
member(X, [X|_]).
member(X, [Y|T]) :- member(X, T).
subset([], _).
subset([X|T], List) :- member(X, List), subset(T, List).
close_state(Close) :- close(character0, Close).
close_state([]).
held_state(Held) :- held_by(character0, Held).
held_state([]).
initial_state(List) :- close_state(Close), held_state(Held), initial_state(Close, Held, [], List).
initial_state([], [], List, List).
initial_state([], [X|Y], List, [held(X)|W]) :- initial_state([], Y, List, W).
initial_state([X|Y], Held, List, [close(X)|W]) :- initial_state(Y, Held, List, W).
transform(FinalState, Plan) :- initial_state(State1), transform(State1, FinalState, [State1], Plan).
transform(State1, FinalState, _, []) :- subset(FinalState, State1).
transform(State1, State2, Visited, [Action|Actions]) :- choose_action(Action, State1, State2), update(Action, State1, State), not member(State, Visited), transform(State, State2, [State|Visited], Actions).
choose_action(Action, State1, State2) :- suggest(Action, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(grab(X), State) :- member(held(X), State).
suggest(walk(X), State) :- member(close(X), State).
suggest(sit(X), State) :- member(sat_on(X), State).
legal_action(walk(X), State) :- type(X, Y), Y\=character, not member(close(X), State).
legal_action(grab(X), State) :- type(X, Y), Y\=character, member(close(X), State), not member(held(X), State).
legal_action(sit(X), State) :- sittable(X), member(close(X), State), not member(held(X), State).
update(walk(X), State, [close(X)|State1]) :- update_walking(X, State, State, [], State1).
update(grab(X), State, [held(X)|State]).
update(sit(X), State, [sat_on(X)|State]).
update_walking(X, _, [], State1, State1).
update_walking(X, StateConst, [close(Y)|T], State, State1) :- X\=Y, not member(held(Y), StateConst), update_walking(X, StateConst, T, State, State1).
update_walking(X, StateConst, [Y|T], State, [Y|State1]) :- update_walking(X, StateConst, T, State, State1).
complete_task(grab_remote, P) :- type(Remote, remotecontrol), transform([held(Remote)], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa), transform([held(Cell), sat_on(Sofa)], P).

?- complete_task(grab_remote, P).