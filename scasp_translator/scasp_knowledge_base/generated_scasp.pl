% Current State
current_time(1).
type(livingroom100, livingroom, 1).
type(character0, character, 1).
type(remotecontrol1, remotecontrol, 1).
off(remotecontrol1, 1).
grabbable(remotecontrol1, 1).
has_switch(remotecontrol1, 1).
type(television2, television, 1).
off(television2, 1).
has_switch(television2, 1).
type(clothesbasket3, clothesbasket, 1).
grabbable(clothesbasket3, 1).
type(clothes4, clothes, 1).
grabbable(clothes4, 1).
type(clothes5, clothes, 1).
grabbable(clothes5, 1).
inside(character0, livingroom100, 1).
inside(remotecontrol1, livingroom100, 1).
inside(television2, livingroom100, 1).
inside(clothesbasket3, livingroom100, 1).
inside(clothes4, livingroom100, 1).
inside(clothes5, livingroom100, 1).
% Rules
% Constraints
% One of many
-located_in(Object, Loc, T) :- location(Loc), located_in(Object, OtherLoc, T), Loc \= OtherLoc.
-held_by(Object, Person, T) :- person(Person), held_by(Object, OtherPerson, T), Person \= OtherPerson.
-inside(Object, Receptacle, T) :- inside(Object, OtherReceptacle, T), Receptacle \= OtherReceptacle.

% Transitive Properties
inherited_inside(Inner, Outer, T) :- inside(Inner, Outer, T).
inherited_inside(Inner, Outer, T) :- inside(Inner, X, T), inherited_inside(X, Outer, T).

inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, Outer, T).
inherited_ontopof(Inner, Outer, T) :- ontopof(Inner, X, T), inherited_ontopof(X, Outer, T).

% One or the other
-open(X, T) :- closed(X, T).
-closed(X, T) :- open(X, T).
-on(X, T) :- off(X, T).
-off(X, T) :- on(X, T).
-sitting(X, T) :- not sitting(X, T).
-reachable(X, T) :- inside(X, Y, T), closed(Y, T).
reachable(X, T) :- not -reachable(X, T).

% Other
held_by(Person, Object, T) :- holds_rh(Person, Object, T).
held_by(Person, Object, T) :- holds_lh(Person, Object, T).

% You cannot take multiple actions at once
%-take_action(Action) :- take_action(Action2), Action \= Action2.

% Tasks
possible_task(turn_on_tv).


take_action(walk_to_living_room) :- current_time(T), -sitting(character0, T),
                                possible_task(Task).

take_action(walk_to_remote) :- current_time(T), -sitting(character0, T), inside(character0, LR, T), reachable(Remote, T),
                                type(Remote, remotecontrol, T), type(LR, livingroom, T),
                                possible_task(Task), not better_action(walk_to_remote, Task).

take_action(grab_remote) :- current_time(T), grabbable(Remote, T), reachable(Remote, T), close(character0, Remote, T),
                                -holds_rh(_, T), type(Remote, remotecontrol, T),
                                possible_task(Task), not better_action(walk_to_remote, Task).

take_action(grab_remote) :- current_time(T), grabbable(Remote, T), reachable(Remote, T), close(character0, Remote, T),
                                -holds_lh(_, T), type(Remote, remotecontrol, T),
                                possible_task(Task), not better_action(walk_to_remote, Task).

take_action(turn_on_remote) :- current_time(T), has_switch(Remote, T), held_by(character0, Remote, T), off(Remote, T),
                                type(Remote, remotecontrol, T),
                                possible_task(Task), not better_action(turn_on_remote, Task).


% You cannot take multiple actions at once
-take_action(Action) :- take_action(Action2), Action \= Action2.

% Tasks
possible_task(turn_on_tv).

take_action(turn_on_remote) :- current_time(T), has_switch(Remote, T), held_by(character0, Remote, T), off(Remote, T),
                                type(Remote, remotecontrol, T),
                                possible_task(Task).

take_action(grab_remote) :- current_time(T), grabbable(Remote, T), reachable(Remote, T), close(character0, Remote, T),
                                -holds_lh(_, T), type(Remote, remotecontrol, T),
                                possible_task(Task).

take_action(grab_remote) :- current_time(T), grabbable(Remote, T), reachable(Remote, T), close(character0, Remote, T),
                                -holds_rh(_, T), type(Remote, remotecontrol, T),
                                possible_task(Task).

take_action(walk_to_remote) :- current_time(T), -sitting(character0, T), inside(character0, LR, T), reachable(Remote, T),
                                type(Remote, remotecontrol, T), type(LR, livingroom, T),
                                possible_task(Task).

take_action(walk_to_living_room) :- current_time(T), -sitting(character0, T),
                                possible_task(Task).


%-take_action(X) :- not take_action(X).
%
%better_action(walk_to_living_room, turn_on_tv) :- take_action(walk_to_remote).
%better_action(walk_to_living_room, turn_on_tv) :- take_action(grab_remote).
%better_action(walk_to_living_room, turn_on_tv) :- take_action(turn_on_remote).
%
%better_action(walk_to_remote, turn_on_tv) :- take_action(grab_remote).
%better_action(walk_to_remote, turn_on_tv) :- take_action(turn_on_remote).
%
%better_action(grab_remote, turn_on_tv) :- take_action(turn_on_remote).
%
%better_action(turn_on_remote, turn_on_tv).