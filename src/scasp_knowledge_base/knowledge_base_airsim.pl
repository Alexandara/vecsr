curr_state(loc(X, Y, Z)) :- curr_x(X), curr_y(Y), curr_z(Z).

% We choose an action to take
% choose_action(action generated, current state, final state)
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).

suggest(takeoff, _, _) :- is_landed(true).
suggest(move(forward), _, _) :- collision_detected(false).
suggest(rotate(right), _, _) :- collision_detected(true).

legal_action(takeoff, _) :- is_landed(true).
legal_action(move(_), _) :- is_landed(false).
legal_action(rotate(_), _) :- is_landed(false).
