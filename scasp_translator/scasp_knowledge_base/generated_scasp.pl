% Current State
current_time(1).
type(livingroom100, livingroom).
containers(livingroom100).
type(character0, character).
type(remotecontrol1, remotecontrol).
off(remotecontrol1).
grabbable(remotecontrol1).
has_switch(remotecontrol1).
type(television2, television).
off(television2).
has_switch(television2).
type(clothesbasket3, clothesbasket).
grabbable(clothesbasket3).
containers(clothesbasket3).
type(clothes4, clothes).
grabbable(clothes4).
type(clothes5, clothes).
grabbable(clothes5).
inside_flipped(livingroom100, [character0, remotecontrol1, television2, clothesbasket3, clothes4, clothes5]).
inside(character0, [livingroom100]).
inside(remotecontrol1, [livingroom100]).
inside(television2, [livingroom100]).
inside(clothesbasket3, [livingroom100]).
inside(clothes4, [livingroom100]).
inside(clothes5, [livingroom100]).
% Rules
% Constraints
% One of many
-located_in(Object, Loc, _) :- location(Loc), located_in(Object, OtherLoc, _), Loc \= OtherLoc.
-held_by(Object, Person, _) :- person(Person), held_by(Object, OtherPerson, _), Person \= OtherPerson.
-inside(Object, Receptacle, _) :- inside(Object, OtherReceptacle, _), Receptacle \= OtherReceptacle.

% Transitive Properties
inherited_inside(Inner, Outer, _) :- inside(Inner, Outer, _).
inherited_inside(Inner, Outer, _) :- inside(Inner, X, _), inherited_inside(X, Outer, _).

inherited_ontopof(Inner, Outer, _) :- ontopof(Inner, Outer, _).
inherited_ontopof(Inner, Outer, _) :- ontopof(Inner, X, _), inherited_ontopof(X, Outer, _).

% One or the other
-open(X, _) :- closed(X, _).
-closed(X, _) :- open(X, _).
-on(X, _) :- off(X, _).
-off(X, _) :- on(X, _).
-sitting(X, _) :- not sitting(X, _).
-reachable(X, _) :- inside(X, Y, _), closed(Y, _).
reachable(X, _) :- not -reachable(X, _).

% Other
held_by(Person, Object, _) :- holds_rh(Person, Object, _).
held_by(Person, Object, _) :- holds_lh(Person, Object, _).

% You cannot take multiple actions at once
-take_action(Action) :- take_action(Action2), Action \= Action2.

% Tasks
possible_task(turn_on_tv).


take_action(walk_to_living_room) :- -sitting(character0, _),
                                possible_task(Task), -better_action(walk_to_living_room, Task).

take_action(walk_to_remote) :- -sitting(character0, _), inside(character0, LR, _), reachable(Remote, _),
                                type(Remote, remotecontrol, _), type(LR, livingroom, _),
                                possible_task(Task), -better_action(walk_to_remote, Task).

take_action(grab_remote) :- grabbable(Remote, _), reachable(Remote, _), close(character0, Remote, _),
                                -holds_rh(_, _), type(Remote, remotecontrol, _),
                                possible_task(Task), -better_action(walk_to_remote, Task).

take_action(grab_remote) :- grabbable(Remote, _), reachable(Remote, _), close(character0, Remote, _),
                                -holds_lh(_, _), type(Remote, remotecontrol, _),
                                possible_task(Task), -better_action(walk_to_remote, Task).

take_action(turn_on_remote) :- has_switch(Remote, _), held_by(character0, Remote, _), off(Remote, _),
                                type(Remote, remotecontrol, _),
                                possible_task(Task), -better_action(turn_on_remote, Task).


-better_action(walk_to_living_room, turn_on_tv) :- not take_action(walk_to_remote), not take_action(grab_remote),
                                                not take_action(turn_on_remote).
-better_action(walk_to_remote, turn_on_tv) :- not take_action(grab_remote), not take_action(turn_on_remote).
-better_action(grab_remote, turn_on_tv) :- not take_action(turn_on_remote).
-better_action(turn_on_remote, turn_on_tv).