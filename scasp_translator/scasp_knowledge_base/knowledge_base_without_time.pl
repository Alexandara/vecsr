% Constraints
% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

not_member(_, []).
not_member(X, [Y | T]) :- X \= Y, not_member(X, T).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

remove(X, List, NewList) :- remove(X, List, [], NewList).
remove(_, [], NewList, NewList).
remove(X, [X | T], List, NewList) :- remove(X, T, List, NewList).
remove(X, [Y | T], List, NewList) :- X \= Y, remove(X, T, [Y | List], NewList).

-rooms(X) :- not rooms(X).

% testing examples:
% state_subset([close([]), holds([]), sat_on([])], [close([]), holds([]), sat_on([])]).
% state_subset([close([]), holds([remotecontrol1]), sat_on([])], [close([remotecontrol1]), holds([television2, remotecontrol1]), sat_on([])]).
% state_subset([close([remotecontrol1]), holds([remotecontrol1]), sat_on([])], [close([remotecontrol1]), holds([television2, remotecontrol1]), sat_on([])]).
state_subset([close(CloseFinal), holds(HoldsFinal), sat_on(SatFinal), on_top_of(OtoFinal), inside(InsideFinal), on(OnFinal), laid_on(LaidFinal)],
             [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid)]) :-
                    subset(CloseFinal, Close), subset(HoldsFinal, Holds), subset(SatFinal, Sat),
                    subset(OtoFinal, Oto), subset(InsideFinal, Inside), subset(OnFinal, On),
                    subset(LaidFinal, Laid).

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

on_state(on(On)) :- on_list(On).
on_state(on([])).

% Get the initial state in regards to what items are close and held
% Current state: [close(Close), holds(Held), sat_on(Sat)]
initial_state([Close, Held, Sat, OnTopOf, Inside, On, laid_on([])]) :-
    close_state(Close), held_state(Held), sitting_state(Sat), ontopof_state(OnTopOf), inside_state(Inside), on_state(On).

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
% choose_action(Action, [close([]), holds([]), sat_on([]), on_top_of([]), inside([])], [close([]), holds([]), sat_on([]), on_top_of([[remotecontrol453, coffeetable372]]), inside([])]).
% choose_action(Action, [close([remotecontrol453]), holds([]), sat_on([]), on_top_of([]), inside([])], [close([]), holds([]), sat_on([]), on_top_of([[remotecontrol453, coffeetable372]]), inside([])]).
% choose_action(Action,[close([remotecontrol453]),holds([remotecontrol453]),sat_on([]),on_top_of([]),inside([])],[close([]),holds([]),sat_on([]),on_top_of([[remotecontrol453,coffeetable372]]),inside([])]).
% choose_action(Action,[close([remotecontrol453,coffeetable372]),holds([remotecontrol453]),sat_on([]),on_top_of([]),inside([])],[close([]),holds([]),sat_on([]),on_top_of([[remotecontrol453,coffeetable372]]),inside([])]).
% choose_action(X, [close([]), holds([]), sat_on([]), on_top_of([]), inside([[bed111, bedroom74], [folder454, livingroom336]]), on([]), laid_on([])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([bed111])]).
% choose_action(X, [close([]), holds([]), sat_on([]), on_top_of([]), inside([[character1, bedroom74], [bed111, bedroom74], [folder454, livingroom336]]), on([]), laid_on([])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([bed111])]).
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
% Example test queries:
% suggest(X, [close([]), holds([]), sat_on([]), on_top_of([]), inside([])], [close([]), holds([]), sat_on([]), on_top_of([[remotecontrol453, coffeetable372]]), inside([])]).
% suggest(Action, [close([remotecontrol453]), holds([]), sat_on([]), on_top_of([]), inside([])], [close([]), holds([]), sat_on([]), on_top_of([[remotecontrol453, coffeetable372]]), inside([])]).
% suggest(X, [close([]), holds([]), sat_on([]), on_top_of([]), inside([[remotecontrol453, livingroom336], [folder454, livingroom336]]), on([])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([remotecontrol453])]).
% suggest(X, [close([]), holds([]), sat_on([]), on_top_of([]), inside([[character1, bedroom74], [bed111, bedroom74], [folder454, livingroom336]]), on([]), laid_on([])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([bed111])]).
suggest(switchon(X), _, [_, _, _, _, _, on(On), _]) :- member(X, On).
suggest(put(X, Y), [_, _, _, _, _, _, _], [_, _, _, on_top_of(Oto), _, _, _]) :- member([X,Y], Oto).
suggest(walk(X), _, [close(Close), _, _, _, _, _, _]) :- member(X, Close).
suggest(walk(X), _, [_, _, _, on_top_of(Oto), _, _, _]) :- member([X, _], Oto).
suggest(walk(Y), [_, holds(Held), _, _, _, _, _], [_, _, _, on_top_of(Oto), _, _, _]) :- member([X,Y], Oto), member(X, Held).
suggest(walk(X), _, [_, _, _, _, _, on(On), _]) :- member(X, On).
suggest(grab(X), [close(Close), _, _, _, _, _, _], [_, _, _, on_top_of(Oto), _, _, _]) :- member([X, _], Oto), member(X, Close).
suggest(grab(X), _, [_, holds(Held), _, _, _, _, _]) :- member(X, Held).
suggest(sit(X), _, [_, _, sat_on(Sat), _, _, _, _]) :- member(X, Sat).
suggest(lie(X), _, [_, _, _, _, _, _, laid_on(Lie)]) :- member(X, Lie).
suggest(standup, [_, _, sat_on([_]), _, _, _, _], _).
suggest(standup, [_, _, _, _, _, _, laid_on([_])], _).
suggest(walk(X), _, [close(Close), holds(Held), _, _, _, _, _]) :- member(X, Held), not_member(X, Close).
suggest(walk(X), _, [close(Close), _, sat_on(Sat), _, _, _, _]) :- member(X, Sat), not_member(X, Close).
suggest(walk(X), _, [close(Close), _, _, _, _, _, laid_on(Laid)]) :- member(X, Laid), not_member(X, Close).
suggest(walk(Room), State1, State2) :- item_of_interest(State1, State2, Item), state_inside(State1, Item, Room).

% Test Queries
% state_inside([close([]), holds([]), sat_on([]), on_top_of([]), inside([[remotecontrol453, livingroom336], [folder454, livingroom336]]), on([])], remotecontrol453, Room).
state_inside([_, _, _, _, inside(Inside), _, _], Item, Room) :- member([Item, Room], Inside).

% Test Queries
% item_of_interest([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([remotecontrol453])], Item).
item_of_interest([close(CloseI), _, _, _, _, _, _],
                [close(CloseF), _, _, _, _, _, _],
                Item) :- member(Item, CloseF), not_member(Item, CloseI).
item_of_interest([_, holds(HeldI), _, _, _, _, _],
                [_, holds(HeldF), _, _, _, _, _],
                Item) :- member(Item, HeldF), not_member(Item, HeldI).
item_of_interest([_, _, sat_on(SatI), _, _, _, _],
                [_, _, sat_on(SatF), _, _, _, _],
                Item) :- member(Item, SatF), not_member(Item, SatI).
item_of_interest([_, _, _, on_top_of(OtoI), _, _, _],
                [_, _, _, on_top_of(OtoF), _, _, _],
                Item) :- member([Item, _], OtoF), not_member([Item, _], OtoI).
item_of_interest([_, holds(HeldI), _, on_top_of(OtoI), _, _, _],
                [_, _, _, on_top_of(OtoF), _, _, _],
                Item) :- member([HeldItem, Item], OtoF), not_member(HeldItem, HeldI), not_member([HeldItem, Item], OtoI).
item_of_interest([_, _, _, _, _, on(OnI), _],
                [_, _, _, _, _, on(OnF), _],
                Item) :- member(Item, OnF), not_member(Item, OnI).
item_of_interest([_, _, _, _, _, _, laid_on(LaidI)],
                [_, _, _, _, _, _, laid_on(LaidF)],
                Item) :- member(Item, LaidF), not_member(Item, LaidI).

% Check if an action is legal given the state
% Example test query:
% legal_action(walk(remotecontrol1), [close([]), holds([]), sat_on([])]).
% legal_action(grab(remotecontrol1), [close([remotecontrol1]), holds([]), sat_on([])]).
% legal_action(walk(remotecontrol1), [close([]), holds([]), sat_on([couch245])]).
% legal_action(switchon(remotecontrol453), [close([remotecontrol453]), holds([]), sat_on([]), on_top_of([]), inside([]), on([])]).
% legal_action(walk(bedroom74), [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([])]).
% legal_action(walk(bedroom74), [close([]), holds([]), sat_on([]), on_top_of([]), inside([[character1, kitchen207]]), on([])]).
% legal_action(walk(livingroom336), [close([]), holds([]), sat_on([]), on_top_of([]), inside([[remotecontrol453, livingroom336], [folder454, livingroom336]]), on([])]).
legal_action(walk(X), [_, _, sat_on([]), _, inside(Inside), _, _]) :- rooms(X), not_member([character1, X], Inside).
legal_action(walk(X), [close(Close), _, sat_on([]), _, inside(Inside), _, _]) :- type(X, Y), -rooms(X), Y \= character,
    member([X, Room], Inside), member([character1, Room], Inside), not_member(X, Close).
legal_action(grab(X), [close(Close), holds(Held), _, _, inside(Inside), _, _]) :- type(X, Y), Y \= character,
    member(X, Close), not_member(X, Held).
legal_action(sit(X), [close(Close), holds(Held), sat_on([]), _, inside(Inside), _, _]) :- sittable(X),
    member(X, Close), not_member(X, Held).
legal_action(lie(X), [close(Close), holds(Held), _, _, inside(Inside), _, laid_on([])]) :- lieable(X),
    member(X, Close), not_member(X, Held).
legal_action(standup, [_, _, sat_on([_]), _, _, _, _]).
legal_action(standup, [_, _, _, _, _, _, laid_on([_])]).
legal_action(put(X,Y), [close(Close), holds(Held), _, on_top_of(Oto), inside(Inside), _, _]) :-
    member(Y, Close), member(X, Held), not_member([X,Y], Oto).
legal_action(switchon(X), [close(Close), _, _, _, inside(Inside), on(On), _]) :-
    member(X, Close), not_member(X, On), has_switch(X).

% Update state
% If we walk to something, anything we are not holding is no longer close
% Example test queries:
% update(grab(remotecontrol1), [close([remotecontrol1]), holds([]), sat_on([])], State).
% update(walk(remotecontrol1), [close([]), holds([]), sat_on([])], State).
% update(walk(television2), [close([remotecontrol453]), holds([]), sat_on([]), on_top_of([]), inside([]), on([])], State).
% update(walk(television2), [close([remotecontrol453]), holds([remotecontrol453]), sat_on([]), on_top_of([]), inside([]), on([])], State).
% update(walk(bedroom74), [close([remotecontrol453]), holds([]), sat_on([]), on_top_of([]), inside([]), on([])], State).
% update(walk(bedroom74), [close([bedroom74]),holds([]),sat_on([]),on_top_of([]),inside([[character1,bedroom74]]),on([])], State).
update(walk(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
                [close(Closen), holds(Held), sat_on(Sat), on_top_of(Oto), inside(Inf), on(On), laid_on(Laid)]) :-
    update_walking(X, [Close, Held], [], Closen),
    update_room(X, In, [], Inf).
update(grab(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
                [close(Close), holds([X | Held]), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)]).
update(sit(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
               [close(Close), holds(Held), sat_on([X | Sat]), on_top_of(Oto), inside(In), on(On), laid_on(Laid)]).
update(lie(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
               [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X | Laid])]).
update(standup, [close(Close), holds(Held), sat_on([X]), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
                [close(Close), holds(Held), sat_on([]), on_top_of(Oto), inside(In), on(On), laid_on(Laid)]).
update(standup, [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X])],
                [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([])]).
update(put(X,Y), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
                 [close(Close), holds(Heldn), sat_on(Sat), on_top_of([[X,Y] | Oto]), inside(In), on(On), laid_on(Laid)]) :-
    remove(X, Held, Heldn).
update(switchon(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid)],
                    [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on([X | On]), laid_on(Laid)]).

% Example test queries:
% update_walking(remotecontrol1, [[],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[]], [], Closen).
% update_walking(television2, [[remotecontrol1],[remotecontrol1]], [], Closen).
update_walking(X, [[], _], State1, [X | State1]).
update_walking(X, [[Y | T], Held], State, State1) :- X \= Y, not_member(Y, Held),
                                                                update_walking(X, [T, Held], State, State1).
update_walking(X, [[Y | T], Held], State, State1) :- update_walking(X, [T, Held], [Y | State], State1).

% Example test queries:
% update_room(plum445, [], [], In).
% update_room(bedroom74, [[character1, kitchen207], [plum445, kitchen207]], [], In).
update_room(X, In, [], In) :- -rooms(X).
update_room(X, [], In1, [[character1, X] | In1]).
update_room(X, [[character1, Room] | T], State, State1) :- X \= Room, update_room(X, T, State, State1).
update_room(X, [[Item, Whatever] | T], State, State1) :- update_room(X, T, [[Item, Whatever] | State], State1).

% Tasks
complete_task(grab_remote, P) :- type(Remote, remotecontrol),
    transform([close([]), holds([Remote]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([])], P).
complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt),
    transform([close([]), holds([Remote, Clothes]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([])], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa),
    transform([close([]), holds([Cell]), sat_on([Sofa]), on_top_of([]), inside([]), on([]), laid_on([])], P).
complete_task(set_remote_on_coffee_table, P) :- type(Remote, remotecontrol), type(Ct, coffeetable),
    transform([close([]), holds([]), sat_on([]), on_top_of([[Remote, Ct]]), inside([]), on([]), laid_on([])], P).
complete_task(turn_on_tv, P) :- type(Tv, tv),
    transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([Tv]), laid_on([])], P).

% Actual VirtualHome Tasks
complete_task(go_to_sleep, P) :- type(Bed, bed),
    transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([Bed])], P).
complete_task(browse_internet, P) :- type(Computer, computer), type(Chair, chair), close(Close), member([Computer, Chair], Close),
    transform([close([Computer]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([]), laid_on([])], P).