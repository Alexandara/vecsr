% Current State
current_time(1).
has_collided(False).
curr_gps_altitude(121).
curr_longitude(-122.14016).
curr_latitude(-122.14).
curr_angular_acceleration_x(0.0).
curr_angular_acceleration_y(0.0).
curr_angular_acceleration_z(0.0).
curr_angular_velocity_x(0.0).
curr_angular_velocity_y(0.0).
curr_angular_velocity_z(0.0).
curr_linear_acceleration_x(0.0).
curr_linear_acceleration_y(0.0).
curr_linear_acceleration_z(0.0).
curr_linear_velocity_x(0.0).
curr_linear_velocity_y(0.0).
curr_linear_velocity_z(0.0).
curr_orientation_x(0).
curr_orientation_y(0).
curr_orientation_z(0).
curr_x(0).
curr_y(0).
curr_z(1).
is_landed(false).
% Rules
initial_state(loc(X, Y, Z)) :- curr_x(X), curr_y(Y), curr_z(Z).

?- initial_state(P).