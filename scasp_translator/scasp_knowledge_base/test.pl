rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Blocks World Problem %%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
block(a).
block(b).
block(c).
block(d).
block(e).

place(p).
place(q).
place(r).

transform(State1, State2, Plan) :- transform(State1, State2, [State1], Plan).
transform(State, State,_,[]).
transform(State1, State2, Visited, [Action|Actions]) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not member(State, Visited),
    transform(State, State2, [State|Visited], Actions).

legal_action(to_place(Block,Y,Place),State) :-
    on(Block,Y,State), clear(Block,State),
    place(Place), clear(Place,State).
legal_action(to_block(Block1,Y,Block2), State) :- 
    on(Block1,Y,State), clear(Block1,State), block(Block2),
    Block1 \= Block2, clear(Block2,State).
    
clear(X,State) :- not member(on(_,X),State).

on(X,Y,State) :- member(on(X,Y), State).

update(to_block(X,Y,Z), State, State1) :- substitute(on(X,Y), on(X,Z), State, State1).
update(to_place(X,Y,Z),State,State1) :- substitute(on(X,Y), on(X,Z), State, State1).

substitute(X, Y, L1, L2) :- substitute(X, Y, L1, [], L2).
substitute(_, _, [], L2, L2r) :- rev(L2,L2r).
substitute(X, Y, [H|T], A, L2) :- H = X, substitute(X, Y, T, [Y|A], L2).
substitute(X, Y, [H|T], A, L2) :- substitute(X,Y,T,[H|A],L2).

choose_action(Action, State1, State2) :- 
    suggest(Action, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(to_place(X,_,Z) ,State) :- member(on(X,Z), State), place(Z).
suggest(to_block(X,_,Z) ,State) :- member(on(X,Z) ,State), block(Z).

