% Helper functions
betweenList(L,R,[]):-
    L>=R.
betweenList(L,R,[L|Rest]):-
    L<R,
    LL is L+1,
    betweenList(LL,R,Rest).

between(L, X, R) :-
    betweenList(L, R, [L| List]),
    member(X, List).

% Current State
curr_state(loc(X, Y, Z)) :- curr_x(X), curr_y(Y), curr_z(Z).
x_direction_needed(loc(Cx, _, _), loc(Fx, _, _), posx) :- Fx > Cx.
x_direction_needed(loc(Cx, _, _), loc(Fx, _, _), negx) :- Fx < Cx.
y_direction_needed(loc(_, Cy, _), loc(_, Fy, _), posy) :- Fy > Cy.
y_direction_needed(loc(_, Cy, _), loc(_, Fy, _), negy) :- Fy < Cy.

arrived_x(loc(_, Cy, _), loc(_, Fy, _)) :- Upperfx is Fx + 5, Lowerfx is Fx - 5, between(Lowerfx, Cx, Upperfx).
arrived_y(loc(_, Cy, _), loc(_, Fy, _)) :- Upperfy is Fy + 5, Lowerfy is Fy - 5, between(Lowerfy, Cy, Upperfy).

% We choose an action to take
% choose_action(action generated, current state, final state)
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).

suggest(takeoff, _, _) :- is_landed(true).
suggest(move(forward), S1, S2) :- collision_detected(false), facing_direction(Dir), x_direction_needed(S1, S2, Dir).
suggest(rotate(right), S1, S2) :- collision_detected(true), facing_direction(Dir), x_direction_needed(S1, S2, Dir), last_move(takeoff).
suggest(rotate(right), S1, S2) :- collision_detected(true), facing_direction(Dir), x_direction_needed(S1, S2, Dir), last_move(move, _).
suggest(rotate(right), S1, S2) :- collision_detected(true), facing_direction(Dir), x_direction_needed(S1, S2, Dir), last_move(rotate, left).
suggest(move(forward), _, _) :- collision_detected(false), last_move(rotate, _).
suggest(rotate(left), S1, S2) :- facing_direction(Dir), x_direction_needed(S1, S2, Dir2), Dir \= Dir2, last_move(move, _).

legal_action(takeoff, _) :- is_landed(true).
legal_action(move(forward), _) :- is_landed(false), collision_detected(false).
legal_action(rotate(_), _) :- is_landed(false).
