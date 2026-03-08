% Extra "facts" about objects that exist in the dataset but not the simulation
% This is required because the VirtualHome simulation does not include everything
% needed to complete every task in their database. As an example, although the
% task "Vacuum" exists in the database, there is not object "vacuum" in the
% simulation. Therefore we add state facts for those objects to
% demonstrate the s(CASP) harness' ability on randomly selected tasks from the
% database rather than on carefully selected tasks which are fully embodied in
% the simulation

% For the task: "Vacuum"
type(vacuum0, vacuum).
has_switch(vacuum0).
grabbable(vacuum0).
has_plug(vacuum0).
movable(vacuum0).
% For the task: "Change Sheets and Pillows
type(sheets01, sheets).
grabbable(sheets01).
movable(sheets01).
type(pillowcase011, pillowcase).
type(pillowcase012, pillowcase).
grabbable(pillowcase011).
grabbable(pillowcase012).

type(sheets02, sheets).
grabbable(sheets02).
movable(sheets02).
type(pillowcase021, pillowcase).
type(pillowcase022, pillowcase).
grabbable(pillowcase021).
grabbable(pillowcase022).

% For the task: "Wash Dirty Dishes"
dirty([plate195, wineglass199]).
dish(X) :- type(X, plate).
dish(X) :- type(X, wineglass).
dish(X) :- type(X, mug).
dish(X) :- type(X, dishbowl).
dirty_in_sink(Sink, List) :- dirty(Dishes), dirty_in_sink(Sink, Dishes, [], List).
dirty_in_sink(Sink, [], List, List).
dirty_in_sink(Sink, [Dish | T], PrevList, List) :- dish(Dish), dirty_in_sink(Sink, T, [[Dish, Sink] | PrevList], List).
dirty_in_sink(Sink, [_ | T], PrevList, List) :- dirty_in_sink(Sink, T, PrevList, List).

% For the task "Feed Me"
needs_cooking(X) :- food(X), not eatable(X), not dish(X).
eatable(X) :- fruit(X).
eatable(X) :- vegetable(X).
fruit(X) :- type(X, bananas).
vegetable(X) :- type(X, bellpepper).
eatable(X) :- type(X, chips).
eatable(X) :- type(X, crackers).
can_cook(X) :- type(X, stove).
eatable(bananas316).
eatable(plate62).

% For the task "Breakfast"
can_cook(X) :- type(X, toaster).
breakfast(X) :- type(X, breadslice).
easy_cooking(Toaster, Bread) :- type(Toaster, toaster), type(Bread, breadslice).

% Unseen Data: Commented out so it doesn't clog up the knowledge base
% For the task "Tabletop Game"
type(tabletopgame3200, tabletopgame).
grabbable(tabletopgame3200).
movable(tabletopgame3200).

% For the task "Pick up spare change on dresser"
type(dresser3201, dresser).
surfaces(dresser3201).
movable(dresser3201).
type(change3202, change).
grabbable(change3202).

% For the task "Put shoes and coats"
type(shoe3203, shoe).
clothes(shoe3203).
grabbable(shoe3203).
movable(shoe3203).
type(shoe3204, shoe).
clothes(shoe3204).
grabbable(shoe3204).
movable(shoe3204).
type(coat3205, coat).
clothes(coat3205).
grabbable(coat3205).
movable(coat3205).

% For the task "Hair"
type(comb3206, comb).
grabbable(comb3206).
movable(comb3206).

% For the task "Cutting"
type(cuttingboard3207, cuttingboard).
grabbable(cuttingboard3207).
movable(cuttingboard3207).

% For the task "Put out flowers"
type(flowers3208, flowers).
grabbable(flowers3208).
movable(flowers3208).
type(vase3209, vase).
grabbable(vase3209).
movable(vase3209).
surface(vase3209).

% For the task "Put down bags"
type(bag3210, bag).
grabbable(bag3210).
movable(bag3210).
type(bag3211, bag).
grabbable(bag3211).
movable(bag3211).

% holds_character([bag3210, bag3211]).

% For the task "Curled hair"
type(curlingiron3212, curlingiron).
grabbable(curlingiron3212).
movable(curlingiron3212).
has_switch(curlingiron3212).

% For the task "Place centerpiece"
type(centerpiece3213, centerpiece).
grabbable(centerpiece3213).
movable(centerpiece3213).

% For the task "Practice Violin"
type(violin3214, violin).
grabbable(violin3214).
movable(violin3214).

% For the task "Wipe room down with lysol"
type(lysol3215, lysol).
grabbable(lysol3215).
movable(lysol3215).

% For the task "Replace toothpaste"
type(toothpaste1163, toothpaste).
closed(toothpaste1163).
grabbable(toothpaste1163).
pourable(toothpaste1163).
can_open(toothpaste1163).
movable(toothpaste1163).
cream(toothpaste1163).
new(toothpaste1163).

% For the task "Shampoo hair"
type(shampoo3216, shampoo).
grabbable(shampoo3216).
pourable(shampoo3216).
can_open(shampoo3216).
movable(shampoo3216).

% For the task "Drink Iced Coffee"
type(icedcoffee3217, icedcoffee).
drinkable(icedcoffee3217).
pourable(icedcoffee3217).

% For the task "Prepare letter for mailing"
type(envelope3218, envelope).
recipient(envelope3218).
grabbable(envelope3218).
movable(envelope3218).
type(mailbox3219, mailbox).
recipient(mailbox3219).

% Analogy objects
% writingutensil
type(writingutensil3220, writingutensil).
grabbable(writingutensil3220).
movable(writingutensil3220).
% disk
type(disk3223, disk).
grabbable(disk3223).
movable(disk3223).
% iron
type(iron3226, iron).
grabbable(iron3226).
movable(iron3226).
has_switch(iron3226).
electronics(iron3226).
has_plug(iron3226).
% keys
type(keys3230, keys).
grabbable(keys3230).
movable(keys3230).
% officemachine
type(officemachine3231, officemachine).
grabbable(officemachine3231).
movable(officemachine3231).
has_switch(officemachine3231).
electronics(officemachine3231).
has_plug(officemachine3231).
% wallet
type(wallet3232, wallet).
grabbable(wallet3232).
movable(wallet3232).
% sewingtools
type(sewingtools3235, sewingtools).
grabbable(sewingtools3235).
movable(sewingtools3235).
% toy
type(toy3245, toy).
grabbable(toy3245).
movable(toy3245).
% toy
type(toy3246, toy).
grabbable(toy3246).
movable(toy3246).
% toy
type(toy3247, toy).
grabbable(toy3247).
movable(toy3247).
% glasses
type(glasses3248, glasses).
grabbable(glasses3248).
movable(glasses3248).
% button
type(button3253, button).
grabbable(button3253).
movable(button3253).
% glue
type(glue3255, glue).
grabbable(glue3255).
movable(glue3255).
% stamp
type(stamp3256, stamp).
grabbable(stamp3256).
movable(stamp3256).
% cards
type(cards3219, cards).
grabbable(cards3219).
movable(cards3219).
% diskplayer
type(diskplayer3225, diskplayer).
grabbable(diskplayer3225).
movable(diskplayer3225).
has_switch(diskplayer3225).
electronics(diskplayer3225).
has_plug(diskplayer3225).
% lightbulb
type(lightbulb3243, lightbulb).
grabbable(lightbulb3243).
movable(lightbulb3243).
% lightbulb
type(lightbulb3244, lightbulb).
grabbable(lightbulb3244).
movable(lightbulb3244).
% hat
type(hat3252, hat).
grabbable(hat3252).
movable(hat3252).
hangable(hat3252).
clothes(hat3252).
% ovenmitts
type(ovenmitts3224, ovenmitts).
grabbable(ovenmitts3224).
movable(ovenmitts3224).
hangable(ovenmitts3224).
clothes(ovenmitts3224).
% animal
type(animal3226, animal).
grabbable(animal3226).
movable(animal3226).
characters(animal3226).
% dough
type(dough3227, dough).
grabbable(dough3227).
movable(dough3227).
food(dough3227).
eatable(dough3227).
% filter
type(filter3228, filter).
grabbable(filter3228).
movable(filter3228).
% coffee
type(coffee3229, coffee).
grabbable(coffee3229).
movable(coffee3229).
food(coffee3229).
drinkable(coffee3229).
pourable(coffee3229).
% teabag
type(teabag3233, teabag).
grabbable(teabag3233).
movable(teabag3233).
food(teabag3233).
drinkable(teabag3233).
pourable(teabag3233).
% egg
type(egg3234, egg).
grabbable(egg3234).
movable(egg3234).
food(egg3234).
eatable(egg3234).
% tablecloth
type(tablecloth3236, tablecloth).
grabbable(tablecloth3236).
movable(tablecloth3236).
% carrot
type(carrot3237, carrot).
grabbable(carrot3237).
movable(carrot3237).
food(carrot3237).
eatable(carrot3237).
% milk
type(milk3238, milk).
grabbable(milk3238).
movable(milk3238).
food(milk3238).
drinkable(milk3238).
pourable(milk3238).
% juice
type(juice3239, juice).
grabbable(juice3239).
movable(juice3239).
food(juice3239).
drinkable(juice3239).
pourable(juice3239).
% ice
type(ice3241, ice).
grabbable(ice3241).
movable(ice3241).
% peanutbutter
type(peanutbutter3249, peanutbutter).
grabbable(peanutbutter3249).
movable(peanutbutter3249).
food(peanutbutter3249).
eatable(peanutbutter3249).
% cheese
type(cheese3250, cheese).
grabbable(cheese3250).
movable(cheese3250).
food(cheese3250).
eatable(cheese3250).
% salt
type(salt3251, salt).
grabbable(salt3251).
movable(salt3251).
food(salt3251).
eatable(salt3251).
% dirt
type(dirt3258, dirt).
grabbable(dirt3258).
movable(dirt3258).
% othercharacter
type(othercharacter3259, othercharacter).
grabbable(othercharacter3259).
movable(othercharacter3259).
characters(othercharacter3259).
% othercharacter
type(othercharacter3260, othercharacter).
grabbable(othercharacter3260).
movable(othercharacter3260).
characters(othercharacter3260).
% othercharacter
type(othercharacter3261, othercharacter).
grabbable(othercharacter3261).
movable(othercharacter3261).
characters(othercharacter3261).
% cleaningliquid
type(cleaningliquid3221, cleaningliquid).
grabbable(cleaningliquid3221).
movable(cleaningliquid3221).
pourable(cleaningliquid3221).
% makeup
type(makeup3222, makeup).
grabbable(makeup3222).
movable(makeup3222).
% shower
type(shower3240, shower).
grabbable(shower3240).
movable(shower3240).
has_switch(shower3240).
% mirror
type(mirror3242, mirror).
grabbable(mirror3242).
movable(mirror3242).
% dryer
type(dryer3254, dryer).
grabbable(dryer3254).
movable(dryer3254).
has_switch(dryer3254).
electronics(dryer3254).
has_plug(dryer3254).
% razor
type(razor3257, razor).
grabbable(razor3257).
movable(razor3257).
% Off lightswitch
type(lightswitch3258, lightswitch).
has_switch(lightswitch3258).
has_plug(lightswitch3258).
electronics(lightswitch3258).

% Inside and ontopof for added predicates
extra_inside([[vacuum0, bedroom74],
[sheets01, bedroom74], [pillowcase011, bedroom74], [pillowcase012, bedroom74], [sheets02, livingroom336], [pillowcase021, livingroom336], [pillowcase022, livingroom336],
[tabletopgame3200, livingroom336],
[dresser3201, bedroom74], [change3202, bedroom74],
[shoe3203, bedroom74], [shoe3204, bedroom74], [coat3205, bedroom74],
[comb3206, bathroom11],
[cuttingboard3207, kitchen207],
[vase3209, kitchen207], [flowers3208, kitchen207],
[bag3210, kitchen207], [bag3211, kitchen207],
[curlingiron3212, bathroom11],
[centerpiece3213, kitchen207],
[violin3214, bedroom74],
[lysol3215, bathroom11],
[toothpaste1163, bedroom74],
[shampoo3216, bathroom11],
[icedcoffee3217, mug196],
[envelope3218, bedroom74],
% Analogy
[writingutensil3220,bedroom74],
[disk3223,bedroom74],
[iron3226,bedroom74],
[keys3230,bedroom74],
[officemachine3231,bedroom74],
[wallet3232,bedroom74],
[sewingtools3235,bedroom74],
[toy3245,bedroom74],
[toy3246,bedroom74],
[toy3247,bedroom74],
[glasses3248,bedroom74],
[button3253,bedroom74],
[glue3255,bedroom74],
[stamp3256,bedroom74],
[cards3219,livingroom336],
[diskplayer3225,livingroom336],
[lightbulb3243,livingroom336],
[lightbulb3244,livingroom336],
[hat3252,livingroom336],
[ovenmitts3224,kitchen207],
[animal3226,kitchen207],
[dough3227,kitchen207],
[filter3228,kitchen207],
[coffee3229,kitchen207],
[teabag3233,kitchen207],
[egg3234,kitchen207],
[tablecloth3236,kitchen207],
[carrot3237,kitchen207],
[milk3238,kitchen207],
[juice3239,kitchen207],
[ice3241,kitchen207],
[peanutbutter3249,kitchen207],
[cheese3250,kitchen207],
[salt3251,kitchen207],
[dirt3258,kitchen207],
[othercharacter3259,kitchen207],
[cleaningliquid3221,bathroom11],
[makeup3222,bathroom11],
[shower3240,bathroom11],
[mirror3242,bathroom11],
[dryer3254,bathroom11],
[razor3257,bathroom11]
]).

extra_ontopof([[vacuum, floor75],
[sheets01, bed111], [pillowcase011, bed111], [pillowcase012, bed111], [sheets02, coffeetable372], [pillowcase021, coffeetable372], [pillowcase022, coffeetable372],
[tabletopgame3200, bookshelf371],
[change3202, dresser3201], [dresser3201, floor75],
[shoe3203, floor75], [shoe3204, floor75], [coat3205, closetdrawer122],
[comb3206, bathroomcounter50],
[cuttingboard3207, kitchencounter238],
[vase3209, kitchencounter238], [flowers3208, kitchencounter238],
[curlingiron3212, bathroomcounter50],
[centerpiece3213, kitchencounter238],
[violin3214, coffeetable113],
[lysol3215, bathroomcounter50],
[toothpaste1163, coffeetable113],
[curtains187, window92],
[shampoo3216, bathroomcounter50],
[envelope3218, desk110],
% Analogy
[writingutensil3220,desk110],
[disk3223,desk110],
[iron3226,desk110],
[keys3230,desk110],
[officemachine3231,desk110],
[wallet3232,desk110],
[sewingtools3235,desk110],
[toy3245,desk110],
[toy3246,desk110],
[toy3247,desk110],
[glasses3248,desk110],
[button3253,desk110],
[glue3255,desk110],
[stamp3256,desk110],
[cards3219,coffeetable372],
[diskplayer3225,coffeetable372],
[lightbulb3243,coffeetable372],
[lightbulb3244,coffeetable372],
[hat3252,coffeetable372],
[ovenmitts3224,kitchencounter238],
[animal3226,kitchencounter238],
[dough3227,kitchencounter238],
[filter3228,kitchencounter238],
[coffee3229,kitchencounter238],
[teabag3233,kitchencounter238],
[egg3234,kitchencounter238],
[tablecloth3236,kitchencounter238],
[carrot3237,kitchencounter238],
[milk3238,kitchencounter238],
[juice3239,kitchencounter238],
[ice3241,kitchencounter238],
[peanutbutter3249,kitchencounter238],
[cheese3250,kitchencounter238],
[salt3251,kitchencounter238],
[dirt3258,kitchencounter238],
[othercharacter3259,kitchencounter238],
[cleaningliquid3221,bathroomcounter50],
[makeup3222,bathroomcounter50],
[shower3240,bathroomcounter50],
[mirror3242,bathroomcounter50],
[dryer3254,bathroomcounter50],
[razor3257,bathroomcounter50]
]).

% Constraints
% Abducibles
movable(X) :- grabbable(X), not -movable(X).

% Helper functions
member(X,[X|_]).
member(X,[Y|T]) :- member(X,T).

not_member(_, []).
not_member(X, [Y | T]) :- X \= Y, not_member(X, T).

list_empty([]).
-list_empty([_|_]).

hands_full([_,_]).
not_hands_full([]).
not_hands_full([_]).

subset([], _).
subset([X | T], List) :- member(X, List), subset(T, List).

remove(X, List, NewList) :- remove(X, List, [], NewList).
remove(_, [], NewList, NewList).
remove(X, [X | T], List, NewList) :- remove(X, T, List, NewList).
remove(X, [Y | T], List, NewList) :- X \= Y, remove(X, T, [Y | List], NewList).

append([ ], Y, Y).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).

rev(L, R) :- trev(L, [], R). % O(n) time
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

inside_same_room(Item1, Item2) :- Item1 \= Item2, rooms(Room), inside(Inside), member([Item1, Room], Inside),
    member([Item2, Room], Inside).
inside_same_room(Item1, Item2) :- Item1 \= Item2, rooms(Room), inside(Inside1), extra_inside(Inside2),
    append(Inside1, Inside2, Inside), member([Item1, Room], Inside), member([Item2, Room], Inside).
-rooms(X) :- not rooms(X).

% Test queries
% ontopof_inherited(X, computer176, [[computer176, desk110], [desk110, floor81]]).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemOntop, ItemBelow], OntopofList).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemOntop, ItemInBetween], OntopofList),
    ontopof_inherited(ItemBelow, ItemInBetween, OntopofList).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemInBetween, ItemBelow], OntopofList),
    ontopof_inherited(ItemInBetween, ItemOntop, OntopofList).

% Planning
close_state(close([character1 | Close])) :- close_character(Close).
close_state(close([])).

held_state(holds(Held)) :- holds_character(Held).
held_state(holds([])).

sitting_state(sat_on(Sat)) :- sitting_character(Sat).
sitting_state(sat_on([])).

ontopof_state(on_top_of(OnTopOf)) :- ontopof(OnTopOf1), extra_ontopof(OnTopOf2), append(OnTopOf1, OnTopOf2, OnTopOf).
ontopof_state(on_top_of(OnTopOf)) :- ontopof(OnTopOf).
ontopof_state(on_top_of(OnTopOf)) :- extra_ontopof(OnTopOf).
ontopof_state(on_top_of([])).

inside_state(inside(Inside)) :- inside(Inside1), extra_inside(Inside2), append(Inside1, Inside2, Inside).
inside_state(inside(Inside)) :- inside(Inside).
inside_state(inside(Inside)) :- extra_inside(Inside).
inside_state(inside([])).

on_state(on(On)) :- on_list(On).
on_state(on([])).

% Get the initial state
% STATEX
initial_state([Close, Held, Sat, OnTopOf, Inside, On, laid_on([]), used([]), eaten([]) | _]) :-
    close_state(Close), held_state(Held), sitting_state(Sat), ontopof_state(OnTopOf), inside_state(Inside), on_state(On).

% Check for final state accomplished
% STATEX
% state_subset([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([plate62])], [close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([plate62])]).
state_subset([close(CloseFinal), holds(HoldsFinal), sat_on(SatFinal), on_top_of(OtoFinal), inside(InsideFinal), on(OnFinal), laid_on(LaidFinal), used(UsedFinal), eaten(EatenFinal) | _],
             [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _]) :-
                    subset(CloseFinal, Close), subset(HoldsFinal, Holds), subset(SatFinal, Sat),
                    subset(OtoFinal, Oto), subset(InsideFinal, Inside), subset(OnFinal, On),
                    subset(LaidFinal, Laid), subset(UsedFinal, Used), subset(EatenFinal, Eaten).

% We want to go from the current state to the final state
transform(FinalState, Plan) :- initial_state(State1), perturb(FinalState, PerturbedFinalState),
                               transform(State1, PerturbedFinalState, [State1], PerturbedPlan, 0),
%                               -list_empty(PerturbedPlan),
                               unperturb_actions(FinalState, PerturbedPlan, Plan).
transform(State1, PerturbedFinalState,_,[], _) :- state_subset(PerturbedFinalState, State1).
transform(_, _, _, _, 30).
transform(State1, State2, Visited, [Action|Actions], StepCount) :-
    choose_action(Action, State1, State2),
    update(Action, State1, State),
    not_member(State, Visited),
    SC #= StepCount+1,
    transform(State, State2, [State|Visited], Actions, SC).

% We choose an action to take
% choose_action(action generated, current state, final state)
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
% Dangerous: Allows illegal actions to be added to plan
%dangerxchoose_action(Action, State1, State2) :- suggest(Action, State1, State2).
choose_action(Action, State1, _) :- legal_action(Action, State1).

% Insert new suggestions here
%new_suggestrx

% Suggested actions in priority order
% STATEX
suggest(open(X), [close(Close), _, _, _, _, _, _, _, _, opened(OpenedI) | _],
                 [_, _, _, _, _, _, _, _, _, opened(OpenedF) | _])
                        :- member(X, OpenedF), not_member(X, OpenedI), member(X, Close).
suggest(grab(X), [close(Close), holds(Holds), _, on_top_of(OtoI), _, _, _, _, _ | _],
                 [_, _, _, on_top_of(OtoN), _, _, _, _, _ | _])
                        :- member([X, Y], OtoN), not_member([X, Y], OtoI), member(X, Close), not_member(X, Holds).
suggest(put(X,Y), [close(Close), holds(Held), _, on_top_of(OtoI), _, _, _, _, _ | _],
                  [_, _, _, on_top_of(OtoN), _, _, _, _, _ | _])
                        :- member([X, Y], OtoN), not_member([X, Y], OtoI), member(Y, Close), member(X, Held).
suggest(walk(X), [_, _, _, _, _, on(OnI), _, _, _ | _],
                 [_, _, _, _, _, on(OnF), _, _, _ | _])
                        :- not_member(X,OnI), member(X, OnF).
suggest(switchon(X), [_, _, _, _, _, on(OnI), _, _, _ | _],
                    [_, _, _, _, _, on(OnF), _, _, _ | _])
                        :- member(X, OnF), not_member(X, OnI).
suggest(walk(Y), [_, holds(Held), _, _, _, _, _, _, _ | _],
                 [_, _, _, on_top_of(Oto), _, _, _, _, _ | _])
                        :- member([X,Y], Oto), member(X, Held).
suggest(put(X, Y), _,
                  [_, _, _, on_top_of(Oto), _, _, _, _, _ | _])
                        :- member([X,Y], Oto).
suggest(put(X, Y), [close(CloseI), holds(Held), _, on_top_of(Oto), _, _, _, _, _ | _],
                   [close(CloseF), _, sat_on(Sat), _, _, _, _, _, _ | _])
                        :- type(Y, floor), member(X, Sat), member(X, Held), member(Z, CloseI), member(Z, CloseF),
                        ontopof_inherited(Y, Z, Oto).
suggest(walk(X), [_, holds(Held), _, on_top_of(OtoI), _, _, _, _, _ | _],
                 [_, _, _, on_top_of(OtoF), _, _, _, _, _ | _])
                        :- not_hands_full(Held), member([X, Y], OtoF), not_member([X, Y], OtoI), Held \= [_, _].
suggest(grab(X), _,
                [_, holds(Held), _, _, _, _, _, _, _ | _])
                        :- member(X, Held).
suggest(lie(X), _,
               [_, _, _, _, _, _, laid_on(Lie), _, _ | _])
                        :- member(X, Lie).
suggest(walk(X), [_, holds(HeldI), _, _, _, _, _, _, _ | _],
                 [close(Close), holds(HeldF), _, _, _, _, _, _, _ | _])
                        :- not_hands_full(HeldI), member(X, HeldF), not_member(X, Close).
suggest(walk(X), _,
                [close(Close), _, _, _, _, _, laid_on(Laid), _, _ | _])
                        :- member(X, Laid), not_member(X, Close).
suggest(walk(X), _,
                [close(Close), _, sat_on(Sat), _, _, _, _, _, _ | _])
                        :- member(X, Sat), not_member(X, Close).
suggest(grab(X), [close(CloseI), _, _, _, _, _, _, _, _ | _],
                 [close(CloseF), _, sat_on(Sat), _, _, _, _, _, _ | _])
                        :- not_member(Y, CloseI), member(Y, CloseF), member(X, Sat), -list_empty(CloseF).
suggest(walk(X), [_, _, _, _, _, _, _, used(UseI), _ | _],
                 [_, _, _, _, _, _, _, used(UseF), _ | _])
                        :- member(X, UseF), not_member(X, UseI).
suggest(use(X), _,
                [_, _, _, _, _, _, _, used(Use), _ | _])
                        :- member(X, Use).
suggest(walk(X), [_, holds(Held), _, _, _, _, _, _, _ | _],
                 [close(Close), _, sat_on(Sat), _, _, _, _, _, _ | _])
                        :- member(X, Close), sittable(Y), X\=Y, member(Y, Sat), member(Y, Held).
suggest(sit(X), _,
               [_, _, sat_on(Sat), _, _, _, _, _, _ | _])
                        :- member(X, Sat).
suggest(walk(Room), [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                    State2)
                        :- item_of_interest([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _], State2, Item),
                        state_inside([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _], Item, Room),
                        not_member([character1, Room], Inside).
suggest(walk(X), _,
                [close(Close), _, _, _, _, _, _, _, _ | _])
                        :- member(X, Close).
suggest(eat(X), _,
                [_, _, _, _, _, _, _, _, eaten(Eaten) | _])
                        :- member(X, Eaten).
suggest(walk(X), [_, _, _, _, _, _, _, _, eaten(EatenI) | _],
                 [_, _, _, _, _, _, _, _, eaten(EatenF) | _])
                        :- member(X, EatenF), not_member(X, EatenI).
suggest(standup, [_, _, sat_on([_]), _, _, _, _, _, _ | _],
                  _).
suggest(standup, [_, _, _, _, _, _, laid_on([_]), _, _ | _],
                  _).

% Test Queries
state_inside([_, _, _, _, inside(Inside), _, _, _, _ | _], Item, Room) :- member([Item, Room], Inside).

% Test Queries
item_of_interest([_, holds(HeldI), _, _, _, _, _, _, _ | _],
                [_, holds(HeldF), _, _, _, _, _, _, _ | _],
                Item) :- member(Item, HeldF), not_member(Item, HeldI).
item_of_interest([_, _, sat_on(SatI), _, _, _, _, _, _ | _],
                [_, _, sat_on(SatF), _, _, _, _, _, _ | _],
                Item) :- member(Item, SatF), not_member(Item, SatI).
item_of_interest([_, _, _, on_top_of(OtoI), _, _, _, _, _ | _],
                [_, _, _, on_top_of(OtoF), _, _, _, _, _ | _],
                Item) :- member([Item, _], OtoF), not_member([Item, _], OtoI).
item_of_interest([_, holds(HeldI), _, on_top_of(OtoI), _, _, _, _, _ | _],
                [_, _, _, on_top_of(OtoF), _, _, _, _, _ | _],
                Item) :- member([HeldItem, Item], OtoF), not_member(HeldItem, HeldI), not_member([HeldItem, Item], OtoI).
item_of_interest([_, _, _, _, _, on(OnI), _, _, _ | _],
                [_, _, _, _, _, on(OnF), _, _, _ | _],
                Item) :- member(Item, OnF), not_member(Item, OnI).
item_of_interest([_, _, _, _, _, _, laid_on(LaidI), _, _ | _],
                [_, _, _, _, _, _, laid_on(LaidF), _, _ | _],
                Item) :- member(Item, LaidF), not_member(Item, LaidI).
item_of_interest([_, _, _, _, _, _, _, used(UsedI), _ | _],
                [_, _, _, _, _, _, _, used(UsedF), _ | _],
                Item) :- member(Item, UsedF), not_member(Item, UsedI).
item_of_interest([_, _, _, _, _, _, _, _, eaten(EatenI) | _],
                [_, _, _, _, _, _, _, _, eaten(EatenF) | _],
                Item) :- member(Item, EatenF), not_member(Item, EatenI).
item_of_interest([close(CloseI), _, _, _, _, _, _, _, _ | _],
                [close(CloseF), _, _, _, _, _, _, _, _ | _],
                Item) :- member(Item, CloseF), not_member(Item, CloseI).

% Check if an action is legal given the state
% STATEX
legal_action(walk(X), [_, _, sat_on([]), _, inside(Inside), _, _, _, _ | _])
                :- rooms(X), not_member([character1, X], Inside).
legal_action(walk(X), [close(Close), _, sat_on([]), _, inside(Inside), _, _, _, _ | _])
                :- type(X, Y), -rooms(X), Y \= character, member([X, Room], Inside), member([character1, Room], Inside),
                not_member(X, Close).
legal_action(grab(X), [close(Close), holds([]), _, _, inside(Inside), _, _, _, _ | _])
                :- type(X, Y), Y \= character, member(X, Close).
legal_action(grab(X), [close(Close), holds([HeldItem]), _, _, inside(Inside), _, _, _, _ | _])
                :- type(X, Y), Y \= character, member(X, Close), X \= HeldItem.
legal_action(sit(X), [close(Close), holds(Held), sat_on([]), _, inside(Inside), _, _, _, _ | _])
                :- sittable(X), member(X, Close), not_member(X, Held).
legal_action(lie(X), [close(Close), holds(Held), _, _, inside(Inside), _, laid_on([]), _, _ | _])
                :- lieable(X), member(X, Close), not_member(X, Held).
legal_action(standup, [_, _, sat_on([_]), _, _, _, _, _, _ | _]).
legal_action(standup, [_, _, _, _, _, _, laid_on([_]), _, _ | _]).
legal_action(put(X,Y), [close(Close), holds(Held), _, on_top_of(Oto), inside(Inside), _, _, _, _ | _])
                :- member(Y, Close), member(X, Held), not_member([X,Y], Oto).
legal_action(put(X,Y), [close(Close), holds(Held), _, on_top_of(Oto), inside(Inside), _, _, _, _ | _])
                :- type(Y, floor), ontopof_inherited(Y, Z, Oto), member(Z, Close), member(X, Held), not_member([X,Y], Oto).
legal_action(switchon(X), [close(Close), _, _, _, inside(Inside), on(On), _, _, _ | _])
                :- member(X, Close), not_member(X, On), has_switch(X).
% We assume that something can only be used once for simplicity
legal_action(use(X), [close(Close), _, _, _, _, _, _, used(Used), _ | _])
                :- member(X, Close), not_member(X, Used).
% Strict definition of eat
legal_action(eat(X), [close(Close), _, _, _, _, _, _, _, eaten(Eaten) | _])
                :- member(X, Close), not_member(X, Eaten), not grabbable(X), eatable(X).
legal_action(eat(X), [_, holds(Held), _, _, _, _, _, _, eaten(Eaten) | _])
                :- member(X, Held), not_member(X, Eaten), eatable(X).
legal_action(eat(X), [close(Close), _, _, on_top_of(Oto), _, on(On), _, _, eaten(Eaten) | _])
                :- member(X, Close), not_member(X, Eaten), can_cook(Heat), ontopof_inherited(Heat, X, Oto), member(Heat, On).
% Loose definition of eat
legal_action(eat(X), [close(Close), _, _, _, _, _, _, _, eaten(Eaten) | _])
                :- member(X, Close), not_member(X, Eaten), eatable(X).
legal_action(X, State) :- similar_action(X, Y), legal_action(Y, State).
legal_action(X, State) :- similar_action(Y, X), legal_action(Y, State).

% Insert new legal actions here:
%new_legal_actionrx

% Update state
% If we walk to something, anything we are not holding is no longer close
% STATEX
% Strict walk: Any items that aren't held are no longer close
%update(walk(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
%                [close(Closen), holds(Held), sat_on(Sat), on_top_of(Oto), inside(Inf), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _]) :-
%    update_walking(X, [Close, Held, Oto], [], Closen),
%    update_room(X, In, [], Inf).
% Loose walk: once an item is close, it remains close
update(walk(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                [close([X | Close]), holds(Held), sat_on(Sat), on_top_of(Oto), inside(Inf), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _]) :-
    update_room(X, In, [], Inf).
update(grab(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                [close(Close), holds([X | Held]), sat_on(Sat), on_top_of(OtoN), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _])
                    :- update_grabbing(X, Oto, [], OtoN).
update(sit(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
               [close(Close), holds(Held), sat_on([X | Sat]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _]).
update(lie(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
               [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X | Laid]), used(Used), eaten(Eaten) | _]).
update(standup, [close(Close), holds(Held), sat_on([X]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                [close(Close), holds(Held), sat_on([]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _]).
update(standup, [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X]), used(Used), eaten(Eaten) | _],
                [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([]), used(Used), eaten(Eaten) | _]).
update(put(X,Y), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                 [close(Close), holds(Heldn), sat_on(Sat), on_top_of([[X,Y] | Oto]), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _])
                    :- remove(X, Held, Heldn).
update(switchon(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
                    [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on([X | On]), laid_on(Laid), used(Used), eaten(Eaten) | _]).
update(use(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
               [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used([X | Used]), eaten(Eaten) | _]).
update(eat(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten) | _],
               [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten([X | Eaten]) | _]).
%update(eat(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
%               [close(CloseN), holds(HeldN), sat_on(Sat), on_top_of(OtoN), inside(InN), on(On), laid_on(Laid), used(Used), eaten([X | Eaten])]) :-
%    remove(X, Close, CloseN), remove(X, Held, HeldN), remove([X,_], Oto, OtoN), remove([X, _], In, InN).
update(_, X, X).


% Example test queries:
update_walking(X, [[], _, _], State1, [X | State1]).
update_walking(X, [[Y | T], Held, Oto], State, State1) :- X \= Y, not_member(Y, Held), not_member([X, Y], Oto), not_member([Y, X], Oto),
                                                                update_walking(X, [T, Held, Oto], State, State1).
update_walking(X, [[Y | T], Held, Oto], State, State1) :- update_walking(X, [T, Held, Oto], [Y | State], State1).

% Example test queries:
% update_room(plum445, [], [], In).
% update_room(bedroom74, [[character1, kitchen207], [plum445, kitchen207]], [], In).
update_room(X, In, [], In) :- -rooms(X).
update_room(X, [], In1, [[character1, X] | In1]).
update_room(X, [[character1, Room] | T], State, State1) :- X \= Room, update_room(X, T, State, State1).
update_room(X, [[Item, Whatever] | T], State, State1) :- update_room(X, T, [[Item, Whatever] | State], State1).

update_grabbing(X, [], On, On).
update_grabbing(X, [[Y, Surface] | T], On, OnN) :- X \= Y, update_grabbing(X, T, [[Y, Surface] | On], OnN).
update_grabbing(X, [[X, Surface] | T], On, OnN) :- update_grabbing(X, T, On, OnN).

