% Previous States
current_time(22).
current_time(21).
current_time(21).
curr_x(90).
curr_y(25).
curr_z(-9).
curr_linear_velocity_x(-0.7).
curr_linear_acceleration_x(0.4).
curr_angular_velocity_x(0.0).
curr_angular_acceleration_x(0.0).
curr_linear_velocity_y(-0.0).
curr_linear_acceleration_y(-0.0).
curr_angular_velocity_y(-0.1).
curr_angular_acceleration_y(0.2).
curr_linear_velocity_z(-0.0).
curr_linear_acceleration_z(-0.0).
curr_angular_velocity_z(0.0).
curr_angular_acceleration_z(-0.0).
curr_orientation_x(0).
curr_orientation_y(0).
curr_orientation_z(0).
is_landed(false).
collision_detected(false).
forward_collision_detected(false).
facing_direction(posx).
last_move(move, forward).


?- choose_action(X, loc(90,25,-9), loc(200,0,-10)).