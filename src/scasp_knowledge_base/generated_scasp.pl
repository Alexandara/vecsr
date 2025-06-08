% Current State
current_time(1).
has_collided(False).
curr_gps_altitude(133).
curr_longitude(-122.14016).
curr_latitude(-122.14).
curr_angular_acceleration_x(-0.0).
curr_angular_acceleration_y(0.0).
curr_angular_acceleration_z(-0.0).
curr_angular_velocity_x(0.0).
curr_angular_velocity_y(-0.0).
curr_angular_velocity_z(0.0).
curr_linear_acceleration_x(0.0).
curr_linear_acceleration_y(-0.0).
curr_linear_acceleration_z(-0.0).
curr_linear_velocity_x(0.0).
curr_linear_velocity_y(0.0).
curr_linear_velocity_z(0.0).
curr_orientation_x(0).
curr_orientation_y(0).
curr_orientation_z(1).
curr_x(11).
curr_y(0).
curr_z(-11).
is_landed(false).
collision_detected(false).
% Rules
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


?- choose_action(X, loc(11,0,-11), loc(40,0,-10)).