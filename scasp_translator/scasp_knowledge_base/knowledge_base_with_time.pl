% Constraints
% Transitive Properties
inherited_inside(Inner, Outer, T) :- inside(Inner, Outer, T).
inherited_inside(Inner, Outer, T) :- inside(Inner, X, T), inherited_inside(X, Outer, T).

inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, Outer, T).
inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, X, T), inherited_ontopof(X, Outer, T).

isclose(X, Y, T) :- close(Y, X, T).
isclose(X, Y, T) :- close(X, Y, T).

% One or the other
open(X, T) :- not closed(X, T).
closed(X, T) :- not open(X, T).
on(X, T) :- not off(X, T).
off(X, T) :- not on(X, T).
-sitting(X, T) :- not sitting(X, T).
reachable(X, T) :- containers(Y, T), not inside(X, Y, T). % If we can ground this by saying what type of item
reachable(X, T) :- inside(X, Y, T), not closed(Y, T).

% Other
held_by(Person, Object, T) :- holds_rh(Person, Object, T).
held_by(Person, Object, T) :- holds_lh(Person, Object, T).

open_hand(Person, T) :- not holds_rh(Person, _, T).
open_hand(Person, T) :- not holds_lh(Person, _, T).

% Take actions
take_action(walk, X, T) :- not sitting(character0, T), reachable(X, T), not held_by(character0, X, T).
take_action(grab, X, T) :- grabbable(X, T), isclose(character0, X, T),
                        reachable(X, T), open_hand(character0, T).

isclose(character0, X, T1) :- take_action(walk, X, T), T1 .=. T+1.
held_by(character0, X, T1) :- take_action(grab, X, T), T1 .=. T+1.

% Task
task(grab_remote, T) :- held_by(character0, R, T), type(R, remotecontrol, _).
task(walk_to_remote, T) :- isclose(character0, R, T), type(R, remotecontrol, _).
