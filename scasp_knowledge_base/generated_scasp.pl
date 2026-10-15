type(character1, character).
inside([[character1, kitchen207]]).
close_character([garbagecan105, wallpictureframe180, kitchentable231, bench233, kitchencabinet236, kitchencabinet237, kitchencounter238, kitchencounterdrawer239, kitchencounterdrawer240, kitchencounterdrawer244, kitchencounterdrawer245, kitchencounterdrawer246, sink247, rug253, rug254, wallpictureframe255, wallpictureframe256, wallpictureframe257, lightswitch262, powersocket263, wallphone264, clock266, washingsponge267, book269, waterglass271, cutleryknife272, cutleryfork273, plate274, plate279, cutleryfork280, cutleryknife281, waterglass282, waterglass283, cutleryknife284, plate286, fridge306, toaster309, breadslice310, breadslice311, microwave314, plate315, pie320, bellpepper321, bellpepper322, bellpepper323, bellpepper324, bellpepper325, bellpepper326, dishbowl327, salmon328]).
rooms(bathroom11).
rooms(bedroom74).
rooms(kitchen207).
rooms(livingroom336).
type(vacuum0, vacuum).
has_switch(vacuum0).
grabbable(vacuum0).
type(sheets01, sheets).
grabbable(sheets01).
type(pillowcase011, pillowcase).
type(pillowcase012, pillowcase).
grabbable(pillowcase011).
grabbable(pillowcase012).
type(sheets02, sheets).
grabbable(sheets02).
type(pillowcase021, pillowcase).
type(pillowcase022, pillowcase).
grabbable(pillowcase021).
grabbable(pillowcase022).
dirty([plate195, wineglass199]).
dish(X) :- type(X, plate).
dish(X) :- type(X, wineglass).
dish(X) :- type(X, mug).
dish(X) :- type(X, dishbowl).
dirty_in_sink(Sink, List) :- dirty(Dishes), dirty_in_sink(Sink, Dishes, [], List).
dirty_in_sink(Sink, [], List, List).
dirty_in_sink(Sink, [Dish|T], PrevList, List) :- dish(Dish), dirty_in_sink(Sink, T, [[Dish, Sink]|PrevList], List).
dirty_in_sink(Sink, [_|T], PrevList, List) :- dirty_in_sink(Sink, T, PrevList, List).
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
can_cook(X) :- type(X, toaster).
breakfast(X) :- type(X, breadslice).
easy_cooking(Toaster, Bread) :- type(Toaster, toaster), type(Bread, breadslice).
type(tabletopgame3200, tabletopgame).
grabbable(tabletopgame3200).
type(dresser3201, dresser).
type(change3202, change).
grabbable(change3202).
type(shoe3203, shoe).
clothes(shoe3203).
grabbable(shoe3203).
type(shoe3204, shoe).
clothes(shoe3204).
grabbable(shoe3204).
type(coat3205, coat).
clothes(coat3205).
grabbable(coat3205).
type(comb3206, comb).
grabbable(comb3206).
type(cuttingboard3207, cuttingboard).
grabbable(cuttingboard3207).
type(flowers3208, flowers).
grabbable(flowers3208).
type(vase3209, vase).
grabbable(vase3209).
type(bag3210, bag).
grabbable(bag3210).
type(bag3211, bag).
grabbable(bag3211).
type(curlingiron3212, curlingiron).
grabbable(curlingiron3212).
has_switch(curlingiron3212).
type(centerpiece3213, centerpiece).
grabbable(centerpiece3213).
type(violin3214, violin).
grabbable(violin3214).
type(lysol3215, lysol).
grabbable(lysol3215).
type(toothpaste1163, toothpaste).
grabbable(toothpaste1163).
new(toothpaste1163).
type(shampoo3216, shampoo).
grabbable(shampoo3216).
type(icedcoffee3217, icedcoffee).
drinkable(icedcoffee3217).
type(envelope3218, envelope).
grabbable(envelope3218).
type(mailbox3219, mailbox).
type(writingutensil3220, writingutensil).
grabbable(writingutensil3220).
type(disk3223, disk).
grabbable(disk3223).
type(iron3226, iron).
grabbable(iron3226).
has_switch(iron3226).
type(keys3230, keys).
grabbable(keys3230).
type(officemachine3231, officemachine).
grabbable(officemachine3231).
has_switch(officemachine3231).
type(wallet3232, wallet).
grabbable(wallet3232).
type(sewingtools3235, sewingtools).
grabbable(sewingtools3235).
type(toy3245, toy).
grabbable(toy3245).
type(toy3246, toy).
grabbable(toy3246).
type(toy3247, toy).
grabbable(toy3247).
type(glasses3248, glasses).
grabbable(glasses3248).
type(button3253, button).
grabbable(button3253).
type(glue3255, glue).
grabbable(glue3255).
type(stamp3256, stamp).
grabbable(stamp3256).
type(cards3219, cards).
grabbable(cards3219).
type(diskplayer3225, diskplayer).
grabbable(diskplayer3225).
has_switch(diskplayer3225).
type(lightbulb3243, lightbulb).
grabbable(lightbulb3243).
type(lightbulb3244, lightbulb).
grabbable(lightbulb3244).
type(hat3252, hat).
grabbable(hat3252).
clothes(hat3252).
type(ovenmitts3224, ovenmitts).
grabbable(ovenmitts3224).
clothes(ovenmitts3224).
type(animal3226, animal).
grabbable(animal3226).
type(dough3227, dough).
grabbable(dough3227).
food(dough3227).
eatable(dough3227).
type(filter3228, filter).
grabbable(filter3228).
type(coffee3229, coffee).
grabbable(coffee3229).
food(coffee3229).
drinkable(coffee3229).
type(teabag3233, teabag).
grabbable(teabag3233).
food(teabag3233).
drinkable(teabag3233).
type(egg3234, egg).
grabbable(egg3234).
food(egg3234).
eatable(egg3234).
type(tablecloth3236, tablecloth).
grabbable(tablecloth3236).
type(carrot3237, carrot).
grabbable(carrot3237).
food(carrot3237).
eatable(carrot3237).
type(milk3238, milk).
grabbable(milk3238).
food(milk3238).
drinkable(milk3238).
type(juice3239, juice).
grabbable(juice3239).
food(juice3239).
drinkable(juice3239).
type(ice3241, ice).
grabbable(ice3241).
type(peanutbutter3249, peanutbutter).
grabbable(peanutbutter3249).
food(peanutbutter3249).
eatable(peanutbutter3249).
type(cheese3250, cheese).
grabbable(cheese3250).
food(cheese3250).
eatable(cheese3250).
type(salt3251, salt).
grabbable(salt3251).
food(salt3251).
eatable(salt3251).
type(dirt3258, dirt).
grabbable(dirt3258).
type(othercharacter3259, othercharacter).
grabbable(othercharacter3259).
type(othercharacter3260, othercharacter).
grabbable(othercharacter3260).
type(othercharacter3261, othercharacter).
grabbable(othercharacter3261).
type(cleaningliquid3221, cleaningliquid).
grabbable(cleaningliquid3221).
type(makeup3222, makeup).
grabbable(makeup3222).
type(shower3240, shower).
grabbable(shower3240).
has_switch(shower3240).
type(mirror3242, mirror).
grabbable(mirror3242).
type(dryer3254, dryer).
grabbable(dryer3254).
has_switch(dryer3254).
type(razor3257, razor).
grabbable(razor3257).
type(lightswitch3258, lightswitch).
has_switch(lightswitch3258).
type(coin3258, coin).
grabbable(coin3258).
type(tape3259, tape).
grabbable(tape3259).
type(lighter3260, lighter).
grabbable(lighter3260).
has_switch(lighter3260).
type(microphone3261, microphone).
grabbable(microphone3261).
has_switch(microphone3261).
type(wallpictureframe3262, wallpictureframe).
grabbable(wallpictureframe3262).
type(toothbrush3263, toothbrush).
grabbable(toothbrush3263).
extra_inside([[vacuum0, bedroom74], [sheets01, bedroom74], [pillowcase011, bedroom74], [pillowcase012, bedroom74], [sheets02, livingroom336], [pillowcase021, livingroom336], [pillowcase022, livingroom336], [tabletopgame3200, livingroom336], [dresser3201, bedroom74], [change3202, bedroom74], [shoe3203, bedroom74], [shoe3204, bedroom74], [coat3205, bedroom74], [comb3206, bathroom11], [cuttingboard3207, kitchen207], [vase3209, kitchen207], [flowers3208, kitchen207], [bag3210, kitchen207], [bag3211, kitchen207], [curlingiron3212, bathroom11], [centerpiece3213, kitchen207], [violin3214, bedroom74], [lysol3215, bathroom11], [toothpaste1163, bedroom74], [shampoo3216, bathroom11], [icedcoffee3217, mug196], [envelope3218, bedroom74], [writingutensil3220, bedroom74], [disk3223, bedroom74], [iron3226, bedroom74], [keys3230, bedroom74], [officemachine3231, bedroom74], [wallet3232, bedroom74], [sewingtools3235, bedroom74], [toy3245, bedroom74], [toy3246, bedroom74], [toy3247, bedroom74], [glasses3248, bedroom74], [button3253, bedroom74], [glue3255, bedroom74], [stamp3256, bedroom74], [cards3219, livingroom336], [diskplayer3225, livingroom336], [lightbulb3243, livingroom336], [lightbulb3244, livingroom336], [hat3252, livingroom336], [ovenmitts3224, kitchen207], [animal3226, kitchen207], [dough3227, kitchen207], [filter3228, kitchen207], [coffee3229, kitchen207], [teabag3233, kitchen207], [egg3234, kitchen207], [tablecloth3236, kitchen207], [carrot3237, kitchen207], [milk3238, kitchen207], [juice3239, kitchen207], [ice3241, kitchen207], [peanutbutter3249, kitchen207], [cheese3250, kitchen207], [salt3251, kitchen207], [dirt3258, kitchen207], [othercharacter3259, kitchen207], [cleaningliquid3221, bathroom11], [makeup3222, bathroom11], [shower3240, bathroom11], [mirror3242, bathroom11], [dryer3254, bathroom11], [razor3257, bathroom11], [coin3258, livingroom336], [tape3259, livingroom336], [lighter3260, livingroom336], [microphone3261, livingroom336], [wallpictureframe3262, livingroom336], [toothbrush3263, bedroom74]]).
extra_ontopof([[vacuum, floor75], [sheets01, bed111], [pillowcase011, bed111], [pillowcase012, bed111], [sheets02, coffeetable372], [pillowcase021, coffeetable372], [pillowcase022, coffeetable372], [tabletopgame3200, bookshelf371], [change3202, dresser3201], [dresser3201, floor75], [shoe3203, floor75], [shoe3204, floor75], [coat3205, closetdrawer122], [comb3206, bathroomcounter50], [cuttingboard3207, kitchencounter238], [vase3209, kitchencounter238], [flowers3208, kitchencounter238], [curlingiron3212, bathroomcounter50], [centerpiece3213, kitchencounter238], [violin3214, coffeetable113], [lysol3215, bathroomcounter50], [toothpaste1163, coffeetable113], [curtains187, window92], [shampoo3216, bathroomcounter50], [envelope3218, desk110], [writingutensil3220, desk110], [disk3223, desk110], [iron3226, desk110], [keys3230, desk110], [officemachine3231, desk110], [wallet3232, desk110], [sewingtools3235, desk110], [toy3245, desk110], [toy3246, desk110], [toy3247, desk110], [glasses3248, desk110], [button3253, desk110], [glue3255, desk110], [stamp3256, desk110], [cards3219, coffeetable372], [diskplayer3225, coffeetable372], [lightbulb3243, coffeetable372], [lightbulb3244, coffeetable372], [hat3252, coffeetable372], [ovenmitts3224, kitchencounter238], [animal3226, kitchencounter238], [dough3227, kitchencounter238], [filter3228, kitchencounter238], [coffee3229, kitchencounter238], [teabag3233, kitchencounter238], [egg3234, kitchencounter238], [tablecloth3236, kitchencounter238], [carrot3237, kitchencounter238], [milk3238, kitchencounter238], [juice3239, kitchencounter238], [ice3241, kitchencounter238], [peanutbutter3249, kitchencounter238], [cheese3250, kitchencounter238], [salt3251, kitchencounter238], [dirt3258, kitchencounter238], [othercharacter3259, kitchencounter238], [cleaningliquid3221, bathroomcounter50], [makeup3222, bathroomcounter50], [shower3240, bathroomcounter50], [mirror3242, bathroomcounter50], [dryer3254, bathroomcounter50], [razor3257, bathroomcounter50], [coin3258, coffeetable372], [tape3259, coffeetable372], [lighter3260, coffeetable372], [microphone3261, coffeetable372], [wallpictureframe3262, coffeetable372], [toothpaste3263, coffeetable113]]).
member(X, [X|_]).
member(X, [Y|T]) :- member(X, T).
not_member(_, []).
not_member(X, [Y|T]) :- X\=Y, not_member(X, T).
-list_empty([_|_]).
not_hands_full([]).
not_hands_full([_]).
subset([], _).
subset([X|T], List) :- member(X, List), subset(T, List).
remove(X, List, NewList) :- remove(X, List, [], NewList).
remove(_, [], NewList, NewList).
remove(X, [X|T], List, NewList) :- remove(X, T, List, NewList).
remove(X, [Y|T], List, NewList) :- X\=Y, remove(X, T, [Y|List], NewList).
append([], Y, Y).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).
rev(L, R) :- trev(L, [], R).
trev([H|T], P, R) :- trev(T, [H|P], R).
inside_same_room(Item1, Item2) :- Item1\=Item2, rooms(Room), inside(Inside), member([Item1, Room], Inside), member([Item2, Room], Inside).
inside_same_room(Item1, Item2) :- Item1\=Item2, rooms(Room), inside(Inside1), extra_inside(Inside2), append(Inside1, Inside2, Inside), member([Item1, Room], Inside), member([Item2, Room], Inside).
-rooms(X) :- not rooms(X).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemOntop, ItemBelow], OntopofList).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemOntop, ItemInBetween], OntopofList), ontopof_inherited(ItemBelow, ItemInBetween, OntopofList).
ontopof_inherited(ItemBelow, ItemOntop, OntopofList) :- member([ItemInBetween, ItemBelow], OntopofList), ontopof_inherited(ItemInBetween, ItemOntop, OntopofList).
close_state(close([character1|Close])) :- close_character(Close).
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
initial_state([Close, Held, Sat, OnTopOf, Inside, On, laid_on([]), used([]), eaten([])|_]) :- close_state(Close), held_state(Held), sitting_state(Sat), ontopof_state(OnTopOf), inside_state(Inside), on_state(On).
state_subset([close(CloseFinal), holds(HoldsFinal), sat_on(SatFinal), on_top_of(OtoFinal), inside(InsideFinal), on(OnFinal), laid_on(LaidFinal), used(UsedFinal), eaten(EatenFinal)|_], [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]) :- subset(CloseFinal, Close), subset(HoldsFinal, Holds), subset(SatFinal, Sat), subset(OtoFinal, Oto), subset(InsideFinal, Inside), subset(OnFinal, On), subset(LaidFinal, Laid), subset(UsedFinal, Used), subset(EatenFinal, Eaten).
transform(FinalState, Plan) :- initial_state(State1), perturb(FinalState, PerturbedFinalState), transform(State1, PerturbedFinalState, [State1], PerturbedPlan, 0), unperturb_actions(FinalState, PerturbedPlan, Plan).
transform(State1, PerturbedFinalState, _, [], _) :- state_subset(PerturbedFinalState, State1).
transform(_, _, _, _, 30).
transform(State1, State2, Visited, [Action|Actions], StepCount) :- choose_action(Action, State1, State2), update(Action, State1, State), not_member(State, Visited), SC#=StepCount+1, transform(State, State2, [State|Visited], Actions, SC).
choose_action(Action, State1, State2) :- suggest(Action, State1, State2), legal_action(Action, State1).
choose_action(Action, State1, _) :- legal_action(Action, State1).
suggest(open(X), [close(Close), _, _, _, _, _, _, _, _, opened(OpenedI)|_], [_, _, _, _, _, _, _, _, _, opened(OpenedF)|_]) :- member(X, OpenedF), not_member(X, OpenedI), member(X, Close).
suggest(grab(X), [close(Close), holds(Holds), _, on_top_of(OtoI), _, _, _, _, _|_], [_, _, _, on_top_of(OtoN), _, _, _, _, _|_]) :- member([X, Y], OtoN), not_member([X, Y], OtoI), member(X, Close), not_member(X, Holds).
suggest(put(X, Y), [close(Close), holds(Held), _, on_top_of(OtoI), _, _, _, _, _|_], [_, _, _, on_top_of(OtoN), _, _, _, _, _|_]) :- member([X, Y], OtoN), not_member([X, Y], OtoI), member(Y, Close), member(X, Held).
suggest(walk(X), [_, _, _, _, _, on(OnI), _, _, _|_], [_, _, _, _, _, on(OnF), _, _, _|_]) :- not_member(X, OnI), member(X, OnF).
suggest(switchon(X), [_, _, _, _, _, on(OnI), _, _, _|_], [_, _, _, _, _, on(OnF), _, _, _|_]) :- member(X, OnF), not_member(X, OnI).
suggest(walk(Y), [_, holds(Held), _, _, _, _, _, _, _|_], [_, _, _, on_top_of(Oto), _, _, _, _, _|_]) :- member([X, Y], Oto), member(X, Held).
suggest(put(X, Y), _, [_, _, _, on_top_of(Oto), _, _, _, _, _|_]) :- member([X, Y], Oto).
suggest(put(X, Y), [close(CloseI), holds(Held), _, on_top_of(Oto), _, _, _, _, _|_], [close(CloseF), _, sat_on(Sat), _, _, _, _, _, _|_]) :- type(Y, floor), member(X, Sat), member(X, Held), member(Z, CloseI), member(Z, CloseF), ontopof_inherited(Y, Z, Oto).
suggest(walk(X), [_, holds(Held), _, on_top_of(OtoI), _, _, _, _, _|_], [_, _, _, on_top_of(OtoF), _, _, _, _, _|_]) :- not_hands_full(Held), member([X, Y], OtoF), not_member([X, Y], OtoI), Held\=[_, _].suggest(grab(X), _, [_, holds(Held), _, _, _, _, _, _, _|_]) :- member(X, Held).
suggest(lie(X), _, [_, _, _, _, _, _, laid_on(Lie), _, _|_]) :- member(X, Lie).
suggest(walk(X), [_, holds(HeldI), _, _, _, _, _, _, _|_], [close(Close), holds(HeldF), _, _, _, _, _, _, _|_]) :- not_hands_full(HeldI), member(X, HeldF), not_member(X, Close).
suggest(walk(X), _, [close(Close), _, _, _, _, _, laid_on(Laid), _, _|_]) :- member(X, Laid), not_member(X, Close).
suggest(walk(X), _, [close(Close), _, sat_on(Sat), _, _, _, _, _, _|_]) :- member(X, Sat), not_member(X, Close).
suggest(grab(X), [close(CloseI), _, _, _, _, _, _, _, _|_], [close(CloseF), _, sat_on(Sat), _, _, _, _, _, _|_]) :- not_member(Y, CloseI), member(Y, CloseF), member(X, Sat), -list_empty(CloseF).
suggest(walk(X), [_, _, _, _, _, _, _, used(UseI), _|_], [_, _, _, _, _, _, _, used(UseF), _|_]) :- member(X, UseF), not_member(X, UseI).
suggest(use(X), _, [_, _, _, _, _, _, _, used(Use), _|_]) :- member(X, Use).
suggest(walk(X), [_, holds(Held), _, _, _, _, _, _, _|_], [close(Close), _, sat_on(Sat), _, _, _, _, _, _|_]) :- member(X, Close), sittable(Y), X\=Y, member(Y, Sat), member(Y, Held).
suggest(sit(X), _, [_, _, sat_on(Sat), _, _, _, _, _, _|_]) :- member(X, Sat).
suggest(walk(Room), [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], State2) :- item_of_interest([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], State2, Item), state_inside([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], Item, Room), not_member([character1, Room], Inside).
suggest(walk(X), _, [close(Close), _, _, _, _, _, _, _, _|_]) :- member(X, Close).
suggest(eat(X), _, [_, _, _, _, _, _, _, _, eaten(Eaten)|_]) :- member(X, Eaten).
suggest(walk(X), [_, _, _, _, _, _, _, _, eaten(EatenI)|_], [_, _, _, _, _, _, _, _, eaten(EatenF)|_]) :- member(X, EatenF), not_member(X, EatenI).
suggest(standup, [_, _, sat_on([_]), _, _, _, _, _, _|_], _).
suggest(standup, [_, _, _, _, _, _, laid_on([_]), _, _|_], _).
state_inside([_, _, _, _, inside(Inside), _, _, _, _|_], Item, Room) :- member([Item, Room], Inside).
item_of_interest([_, holds(HeldI), _, _, _, _, _, _, _|_], [_, holds(HeldF), _, _, _, _, _, _, _|_], Item) :- member(Item, HeldF), not_member(Item, HeldI).
item_of_interest([_, _, sat_on(SatI), _, _, _, _, _, _|_], [_, _, sat_on(SatF), _, _, _, _, _, _|_], Item) :- member(Item, SatF), not_member(Item, SatI).
item_of_interest([_, _, _, on_top_of(OtoI), _, _, _, _, _|_], [_, _, _, on_top_of(OtoF), _, _, _, _, _|_], Item) :- member([Item, _], OtoF), not_member([Item, _], OtoI).
item_of_interest([_, holds(HeldI), _, on_top_of(OtoI), _, _, _, _, _|_], [_, _, _, on_top_of(OtoF), _, _, _, _, _|_], Item) :- member([HeldItem, Item], OtoF), not_member(HeldItem, HeldI), not_member([HeldItem, Item], OtoI).
item_of_interest([_, _, _, _, _, on(OnI), _, _, _|_], [_, _, _, _, _, on(OnF), _, _, _|_], Item) :- member(Item, OnF), not_member(Item, OnI).
item_of_interest([_, _, _, _, _, _, laid_on(LaidI), _, _|_], [_, _, _, _, _, _, laid_on(LaidF), _, _|_], Item) :- member(Item, LaidF), not_member(Item, LaidI).
item_of_interest([_, _, _, _, _, _, _, used(UsedI), _|_], [_, _, _, _, _, _, _, used(UsedF), _|_], Item) :- member(Item, UsedF), not_member(Item, UsedI).
item_of_interest([_, _, _, _, _, _, _, _, eaten(EatenI)|_], [_, _, _, _, _, _, _, _, eaten(EatenF)|_], Item) :- member(Item, EatenF), not_member(Item, EatenI).
item_of_interest([close(CloseI), _, _, _, _, _, _, _, _|_], [close(CloseF), _, _, _, _, _, _, _, _|_], Item) :- member(Item, CloseF), not_member(Item, CloseI).
legal_action(walk(X), [_, _, sat_on([]), _, inside(Inside), _, _, _, _|_]) :- rooms(X), not_member([character1, X], Inside).
legal_action(walk(X), [close(Close), _, sat_on([]), _, inside(Inside), _, _, _, _|_]) :- type(X, Y), -rooms(X), Y\=character, member([X, Room], Inside), member([character1, Room], Inside), not_member(X, Close).
legal_action(grab(X), [close(Close), holds([]), _, _, inside(Inside), _, _, _, _|_]) :- type(X, Y), Y\=character, member(X, Close).
legal_action(grab(X), [close(Close), holds([HeldItem]), _, _, inside(Inside), _, _, _, _|_]) :- type(X, Y), Y\=character, member(X, Close), X\=HeldItem.legal_action(sit(X), [close(Close), holds(Held), sat_on([]), _, inside(Inside), _, _, _, _|_]) :- sittable(X), member(X, Close), not_member(X, Held).
legal_action(lie(X), [close(Close), holds(Held), _, _, inside(Inside), _, laid_on([]), _, _|_]) :- lieable(X), member(X, Close), not_member(X, Held).
legal_action(standup, [_, _, sat_on([_]), _, _, _, _, _, _|_]).
legal_action(standup, [_, _, _, _, _, _, laid_on([_]), _, _|_]).
legal_action(put(X, Y), [close(Close), holds(Held), _, on_top_of(Oto), inside(Inside), _, _, _, _|_]) :- member(Y, Close), member(X, Held), not_member([X, Y], Oto).
legal_action(put(X, Y), [close(Close), holds(Held), _, on_top_of(Oto), inside(Inside), _, _, _, _|_]) :- type(Y, floor), ontopof_inherited(Y, Z, Oto), member(Z, Close), member(X, Held), not_member([X, Y], Oto).
legal_action(switchon(X), [close(Close), _, _, _, inside(Inside), on(On), _, _, _|_]) :- member(X, Close), not_member(X, On), has_switch(X).
legal_action(use(X), [close(Close), _, _, _, _, _, _, used(Used), _|_]) :- member(X, Close), not_member(X, Used).
legal_action(eat(X), [close(Close), _, _, _, _, _, _, _, eaten(Eaten)|_]) :- member(X, Close), not_member(X, Eaten), notgrabbable(X), eatable(X).
legal_action(eat(X), [_, holds(Held), _, _, _, _, _, _, eaten(Eaten)|_]) :- member(X, Held), not_member(X, Eaten), eatable(X).
legal_action(eat(X), [close(Close), _, _, on_top_of(Oto), _, on(On), _, _, eaten(Eaten)|_]) :- member(X, Close), not_member(X, Eaten), can_cook(Heat), ontopof_inherited(Heat, X, Oto), member(Heat, On).
legal_action(eat(X), [close(Close), _, _, _, _, _, _, _, eaten(Eaten)|_]) :- member(X, Close), not_member(X, Eaten), eatable(X).
legal_action(X, State) :- similar_action(X, Y), legal_action(Y, State).
legal_action(X, State) :- similar_action(Y, X), legal_action(Y, State).
update(walk(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close([X|Close]), holds(Held), sat_on(Sat), on_top_of(Oto), inside(Inf), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]) :- update_room(X, In, [], Inf).
update(grab(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds([X|Held]), sat_on(Sat), on_top_of(OtoN), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]) :- update_grabbing(X, Oto, [], OtoN).
update(sit(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on([X|Sat]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]).
update(lie(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X|Laid]), used(Used), eaten(Eaten)|_]).
update(standup, [close(Close), holds(Held), sat_on([X]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on([]), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]).
update(standup, [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([X]), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on([]), used(Used), eaten(Eaten)|_]).
update(put(X, Y), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Heldn), sat_on(Sat), on_top_of([[X, Y]|Oto]), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_]) :- remove(X, Held, Heldn).
update(switchon(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on([X|On]), laid_on(Laid), used(Used), eaten(Eaten)|_]).
update(use(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used([X|Used]), eaten(Eaten)|_]).
update(eat(X), [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten(Eaten)|_], [close(Close), holds(Held), sat_on(Sat), on_top_of(Oto), inside(In), on(On), laid_on(Laid), used(Used), eaten([X|Eaten])|_]).
update(_, X, X).
update_room(X, In, [], In) :- -rooms(X).
update_room(X, [], In1, [[character1, X]|In1]).
update_room(X, [[character1, Room]|T], State, State1) :- X\=Room, update_room(X, T, State, State1).
update_room(X, [[Item, Whatever]|T], State, State1) :- update_room(X, T, [[Item, Whatever]|State], State1).
update_grabbing(X, [], On, On).
update_grabbing(X, [[Y, Surface]|T], On, OnN) :- X\=Y, update_grabbing(X, T, [[Y, Surface]|On], OnN).
update_grabbing(X, [[X, Surface]|T], On, OnN) :- update_grabbing(X, T, On, OnN).
append([], Y, Y).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).
rev(L, R) :- trev(L, [], R).
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).
type(character1, character).
type(LIGHT1, light) :- type(LIGHT1, ceilinglamp).
type(LIGHT1, light) :- type(LIGHT1, walllamp).
type(LIGHT1, light) :- type(LIGHT1, tablelamp).
type(Lamp, lamp) :- type(Lamp, ceilinglamp).
type(Lamp, lamp) :- type(Lamp, walllamp).
type(Lamp, lamp) :- type(Lamp, tablelamp).
type(Television, television) :- type(Television, tv).
type(Couch, couch) :- type(Couch, sofa).
type(Couch, couch) :- type(Couch, chair).
type(Couch, couch) :- type(Couch, bed).
type(Feet, feet) :- type(Feet, character).
type(Feet, feetboth) :- type(Feet, character).
type(PRINTER, printer) :- type(PRINTER, officemachine).
type(CLOTHESUNDERWEAR, clothesunderwear) :- type(CLOTHESUNDERWEAR, clothespants).
type(COOKINGPOT, cookingpot) :- type(COOKINGPOT, fryingpan).
type(MAIL, mail) :- type(MAIL, paper).
type(SPONGE, sponge) :- type(SPONGE, washingsponge).
type(PRINTINGPAPER, printingpaper) :- type(PRINTINGPAPER, paper).
type(CARDS, cards) :- type(CARDS, cards).
type(FORK, fork) :- type(FORK, cutleryfork).
type(CLOTHESJACKET, clothesjacket) :- type(CLOTHESJACKET, clothesshirt).
type(DETERGENT, detergent) :- type(DETERGENT, barsoap).
type(ADDRESSBOOK, addressbook) :- type(ADDRESSBOOK, book).
type(INSTRUMENTVIOLIN, instrumentviolin) :- type(INSTRUMENTVIOLIN, violin).
type(IRONINGBOARD, ironingboard) :- type(IRONINGBOARD, coffeetable).
type(IRONINGBOARD, ironingboard) :- type(IRONINGBOARD, kitchentable).
type(CRAYON, crayon) :- type(CRAYON, writingutensil).
type(FAXMACHINE, faxmachine) :- type(FAXMACHINE, officemachine).
type(HOMEWORK, homework) :- type(HOMEWORK, paper).
type(SHOESHINEKIT, shoeshinekit) :- type(SHOESHINEKIT, cleaningliquid).
type(MOPBUCKET, mopbucket) :- type(MOPBUCKET, bathtub).
type(MECHANICALPENCIL, mechanicalpencil) :- type(MECHANICALPENCIL, writingutensil).
type(DECKOFCARDS, deckofcards) :- type(DECKOFCARDS, cards).
type(KETTLE, kettle) :- type(KETTLE, coffeepot).
type(FOUNDATION, foundation) :- type(FOUNDATION, makeup).
type(WATER, water) :- type(WATER, waterglass).
type(POT, pot) :- type(POT, fryingpan).
type(DIARY, diary) :- type(DIARY, book).
type(GROCERIES, groceries) :- food(GROCERIES).
type(CHILD, child) :- type(CHILD, othercharacter).
type(CD, cd) :- type(CD, disk).
type(PAPERTOWEL, papertowel) :- type(PAPERTOWEL, towel).
type(KNIFE, knife) :- type(KNIFE, cutleryknife).
type(SCRABBLE, scrabble) :- type(SCRABBLE, tabletopgame).
type(CDPLAYER, cdplayer) :- type(CDPLAYER, diskplayer).
type(FOODBREAD, foodbread) :- type(FOODBREAD, breadslice).
type(DOCUMENT, document) :- type(DOCUMENT, paper).
type(COFFEECUP, coffeecup) :- type(COFFEECUP, waterglass).
type(BOWL, bowl) :- type(BOWL, dishbowl).
type(MAN, man) :- type(MAN, othercharacter).
type(FOODSNACK, foodsnack) :- food(FOODSNACK).
type(TRAY, tray) :- type(TRAY, oventray).
type(SHOES, shoes) :- type(SHOES, shoe).
type(FOODRICE, foodrice) :- type(FOODRICE, breadslice).
type(DISHRACK, dishrack) :- type(DISHRACK, kitchencounter).
type(STEREO, stereo) :- type(STEREO, radio).
type(INSTRUMENTGUITAR, instrumentguitar) :- type(INSTRUMENTGUITAR, violin).
type(CUPBOARD, cupboard) :- type(CUPBOARD, kitchencabinet).
type(CUPBOARD, cupboard) :- type(CUPBOARD, cabinet).
type(CUPBOARD, cupboard) :- type(CUPBOARD, bathroomcabinet).
type(CLOTHESSKIRT, clothesskirt) :- type(CLOTHESSKIRT, clothespants).
type(CLOTHESDRESS, clothesdress) :- type(CLOTHESDRESS, clothesshirt).
type(DOG, dog) :- type(DOG, animal).
type(LAUNDRYDETERGENT, laundrydetergent) :- type(LAUNDRYDETERGENT, barsoap).
type(COFFEEFILTER, coffeefilter) :- type(COFFEEFILTER, filter).
type(GROUNDCOFFEE, groundcoffee) :- type(GROUNDCOFFEE, coffee).
type(CLEANINGBOTTLE, cleaningbottle) :- type(CLEANINGBOTTLE, cleaningliquid).
type(TEXTBOOK, textbook) :- type(TEXTBOOK, book).
type(DISHSOAP, dishsoap) :- type(DISHSOAP, dishwashingsoap).
type(FACIALCLEANSER, facialcleanser) :- type(FACIALCLEANSER, barsoap).
type(DRINKINGGLASS, drinkingglass) :- type(DRINKINGGLASS, waterglass).
type(NAPKIN, napkin) :- type(NAPKIN, towel).
type(CLEANINGSOLUTION, cleaningsolution) :- type(CLEANINGSOLUTION, cleaningliquid).
type(PICTURE, picture) :- type(PICTURE, wallpictureframe).
type(NOTEBOOK, not ebook) :- type(NOTEBOOK, book).
type(CURTAIN, curtain) :- type(CURTAIN, curtains).
type(TELEPHONE, telephone) :- type(TELEPHONE, cellphone).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, apple).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, bananas).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, lime).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, peach).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, plum).
type(SHREDDER, shredder) :- type(SHREDDER, officemachine).
type(CREDITCARD, creditcard) :- type(CREDITCARD, wallet).
type(CUTTINGBOARD, cuttingboard) :- type(CUTTINGBOARD, cuttingboard).
type(CUP, cup) :- type(CUP, waterglass).
type(NOTES, not es) :- type(NOTES, paper).
type(WINE, wine) :- type(WINE, wineglass).
type(FACESOAP, facesoap) :- type(FACESOAP, barsoap).
type(FOODSTEAK, foodsteak) :- type(FOODSTEAK, salmon).
has_switch(Lightswitch) :- type(Lightswitch, lightswitch).
type(SOAP, soap) :- type(SOAP, barsoap).
type(ARMSBOTH, armsboth) :- type(ARMSBOTH, character).
type(DVDPLAYER, dvdplayer) :- type(DVDPLAYER, diskplayer).
type(FOODVEGETABLE, foodvegetable) :- type(FOODVEGETABLE, bellpepper).
type(MOVIE, movie) :- type(MOVIE, disk).
type(VACUUMCLEANER, vacuumcleaner) :- type(VACUUMCLEANER, vacuum).
type(COFFEMAKER, coffemaker) :- type(COFFEMAKER, coffeemaker).
type(HAIRBRUSH, hairbrush) :- type(HAIRBRUSH, comb).
type(FOODEGG, foodegg) :- type(FOODEGG, egg).
type(NEEDLE, needle) :- type(NEEDLE, sewingtools).
type(TOILETPAPER, toiletpaper) :- type(TOILETPAPER, paper).
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, candybar).
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, chocolatesyrup).
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, whippedcream).
type(FOODTURKEY, foodturkey) :- type(FOODTURKEY, salmon).
type(AFTERSHAVE, aftershave) :- type(AFTERSHAVE, barsoap).
type(FOODCARROT, foodcarrot) :- type(FOODCARROT, carrot).
type(FILINGCABINET, filingcabinet) :- type(FILINGCABINET, cabinet).
type(MAT, mat) :- type(MAT, mousemat).
type(TOOTHBRUSHHOLDER, toothbrushholder) :- type(TOOTHBRUSHHOLDER, bathroomcounter).
type(CLOTHNAPKIN, clothnapkin) :- type(CLOTHNAPKIN, towel).
type(FOODDONUT, fooddonut) :- type(FOODDONUT, candybar).
type(SPOON, spoon) :- type(SPOON, cutleryfork).
type(FOODBANANA, foodbanana) :- type(FOODBANANA, bananas).
type(CAT, cat) :- type(CAT, animal).
type(VIDEOGAMECONSOLE, videogameconsole) :- type(VIDEOGAMECONSOLE, diskplayer).
type(CHEFKNIFE, chefknife) :- type(CHEFKNIFE, cutleryknife).
type(THREAD, thread) :- type(THREAD, sewingtools).
type(PEN, pen) :- type(PEN, writingutensil).
type(FLY, fly) :- type(FLY, animal).
type(CARPET, carpet) :- type(CARPET, rug).
type(FACE, face) :- type(FACE, character).
type(MAGAZINE, magazine) :- type(MAGAZINE, book).
type(WALLCLOCK, wallclock) :- type(WALLCLOCK, clock).
type(GLASS, glass) :- type(GLASS, waterglass).
type(BASKETFORCLOTHES, basketforclothes) :- type(BASKETFORCLOTHES, clothespile).
type(LASERPOINTER, laserpointer) :- type(LASERPOINTER, toy).
type(SPECTACLES, spectacles) :- type(SPECTACLES, glasses).
type(BOARDGAME, boardgame) :- type(BOARDGAME, tabletopgame).
type(BROOM, broom) :- type(BROOM, vacuum).
type(LEGSBOTH, legsboth) :- type(LEGSBOTH, character).
type(PENCIL, pencil) :- type(PENCIL, writingutensil).
type(BOOKMARK, bookmark) :- type(BOOKMARK, paper).
type(FOODPEANUTBUTTER, foodpeanutbutter) :- type(FOODPEANUTBUTTER, peanutbutter).
type(BLANKET, blanket) :- type(BLANKET, sheets).
type(DISHWASHER, dishwasher) :- type(DISHWASHER, washingmachine).
type(LAPTOP, laptop) :- type(LAPTOP, computer).
type(TEETH, teeth) :- type(TEETH, character).
type(FOODCHICKEN, foodchicken) :- type(FOODCHICKEN, salmon).
type(FREEZER, freezer) :- type(FREEZER, fridge).
type(PAINTING, painting) :- type(PAINTING, wallpictureframe).
type(DUSTPAN, dustpan) :- type(DUSTPAN, garbagecan).
type(MUSICSTAND, musicstand) :- type(MUSICSTAND, coffeetable).
type(DRAWING, drawing) :- type(DRAWING, paper).
type(NEWSPAPER, newspaper) :- type(NEWSPAPER, book).
type(NAILPOLISH, nailpolish) :- type(NAILPOLISH, makeup).
type(MOP, mop) :- type(MOP, vacuum).
type(FOODCEREAL, foodcereal) :- type(FOODCEREAL, cereal).
type(NOTEPAD, not epad) :- type(NOTEPAD, book).
type(FOODCHEESE, foodcheese) :- type(FOODCHEESE, cheese).
type(FOODSALT, foodsalt) :- type(FOODSALT, salt).
type(VIDEOGAMECONTROLLER, videogamecontroller) :- type(VIDEOGAMECONTROLLER, remotecontrol).
type(SAUCE, sauce) :- type(SAUCE, chocolatesyrup).
type(CLOTHESHAT, clotheshat) :- type(CLOTHESHAT, hat).
type(SCISSORS, scissors) :- type(SCISSORS, sewingtools).
type(DUSTER, duster) :- type(DUSTER, vacuum).
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, ceilinglamp).
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, walllamp).
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, tablelamp).
type(EYESBOTH, eyesboth) :- type(EYESBOTH, character).
type(BUTTON, button) :- type(BUTTON, button).
type(BLOWDRYER, blowdryer) :- type(BLOWDRYER, dryer).
type(RECEIPT, receipt) :- type(RECEIPT, paper).
type(TEA, tea) :- type(TEA, teabag).
type(RAG, rag) :- type(RAG, towel).
type(TRASHCAN, trashcan) :- type(TRASHCAN, garbagecan).
type(PURSE, purse) :- type(PURSE, bag).
type(FOODFOOD, foodfood) :- food(FOODFOOD).
type(HAIRDRYER, hairdryer) :- type(HAIRDRYER, dryer).
type(WOMAN, woman) :- type(WOMAN, othercharacter).
type(PHONE, phone) :- type(PHONE, cellphone).
type(BILLS, bills) :- type(BILLS, paper).
type(PLACEMAT, placemat) :- type(PLACEMAT, tablecloth).
type(TABL, tabl) :- type(TABL, kitchentable).
type(OVEN, oven) :- type(OVEN, stove).
type(HANDSBOTH, handsboth) :- type(HANDSBOTH, character).
type(BRUSH1, brush) :- type(BRUSH1, towel).
type(DISHSOAP1, dishsoap) :- type(DISHSOAP1, dishwashingliquid).
type(HAIR1, hair) :- type(HAIR1, character).
eatable(X) :- drinkable(X).
type(W, water) :- drinkable(W).
type(W, wineglass) :- drinkable(W).
type(W, waterglass) :- drinkable(W).
eatable(X) :- type(X, plate).
eatable(X) :- type(X, bowl).
type(FOODLEMON, foodlemon) :- type(FOODLEMON, lime).
type(FOODKIWI, foodkiwi) :- type(FOODKIWI, plum).
type(FOODKIWI, foodkiwi) :- type(FOODKIWI, bananas).
type(FOODKIWI, foodkiwi) :- type(FOODKIWI, apple).
type(FOODKIWI, foodkiwi) :- type(FOODKIWI, peach).
type(SHOERACK, shoerack) :- type(SHOERACK, rug).
type(CARD, card) :- type(CARD, cards).
type(FOODNOODLES, foodnoodles) :- food(FOODNOODLES).
type(FOODSUGAR, foodsugar) :- food(FOODSUGAR).
type(ALARMCLOCK, alarmclock) :- type(ALARMCLOCK, clock).
type(CHECK, check) :- type(CHECK, paper).
type(FOODPOTATO, foodpotato) :- type(FOODPOTATO, bellpepper).
type(FOODICECREAM, foodicecream) :- type(FOODICECREAM, whippedcream).
type(DRYPASTA, drypasta) :- food(DRYPASTA).
type(PIANOBENCH, pianobench) :- type(PIANOBENCH, chair).
type(PANTRY, pantry) :- type(PANTRY, cabinet).
type(INSTRUMENTPIANO, instrumentpiano) :- type(INSTRUMENTPIANO, violin).
type(COMFORTER, comforter) :- type(COMFORTER, sheets).
type(PAJAMAS, pajamas) :- clothes(PAJAMAS).
type(CONSOLE, console) :- type(CONSOLE, diskplayer).
type(FOODAPPLE, foodapple) :- type(FOODAPPLE, apple).
get_data(walk(X), X).
get_data(grab(X), X).
get_data(sit(X), X).
get_data(lie(X), X).
get_data(put(X, Y), X).
get_data(switchon(X), X).
get_data(use(X), X).
get_data(eat(X), X).
get_data(putin(X), X).
get_action(putin(_), X, putin(X)).
similar_action(putin(_), put(_, down)).
get_data(type(X), X).
get_action(type(_), X, type(X)).
similar_action(type(_), use(_)).
get_data(drop(X), X).
get_action(drop(_), X, drop(X)).
similar_action(drop(_), put(_, down)).
get_data(puton(X), X).
get_action(puton(_), X, puton(X)).
similar_action(puton(_), use(_)).
get_data(off(X), X).
get_action(off(_), X, off(X)).
similar_action(off(_), use(_)).
get_data(throw(X), X).
get_action(throw(_), X, throw(X)).
similar_action(throw(_), use(_)).
get_data(pour(X), X).
get_action(pour(_), X, pour(X)).
similar_action(pour(_), put(_, down)).
get_data(pour(X), X).
get_action(pour(_), X, pour(X)).
similar_action(pour(_), use(_)).
get_data(read(X), X).
get_action(read(_), X, read(X)).
similar_action(read(_), use(_)).
get_data(watch(X), X).
get_action(watch(_), X, watch(X)).
similar_action(watch(_), use(_)).
get_data(dust(X), X).
get_action(dust(_), X, dust(X)).
similar_action(dust(_), use(_)).
get_data(fold(X), X).
get_action(fold(_), X, fold(X)).
similar_action(fold(_), use(_)).
get_data(laugh(X), X).
get_action(laugh(_), X, laugh(X)).
similar_action(laugh(_), use(_)).
get_data(dial(X), X).
get_action(dial(_), X, dial(X)).
similar_action(dial(_), use(_)).
get_data(rinse(X), X).
get_action(rinse(_), X, rinse(X)).
similar_action(rinse(_), use(_)).
get_data(sweep(X), X).
get_action(sweep(_), X, sweep(X)).
similar_action(sweep(_), use(_)).
get_data(write(X), X).
get_action(write(_), X, write(X)).
similar_action(write(_), use(_)).
get_data(push(X), X).
get_action(push(_), X, push(X)).
similar_action(push(_), use(_)).
get_data(speak(X), X).
get_action(speak(_), X, speak(X)).
similar_action(speak(_), use(_)).
get_data(cover(X), X).
get_action(cover(_), X, cover(X)).
similar_action(cover(_), use(_)).
get_data(play(X), X).
get_action(play(_), X, play(X)).
similar_action(play(_), use(_)).
get_data(sleep(X), X).
get_action(sleep(_), X, sleep(X)).
similar_action(sleep(_), use(_)).
get_data(unfold(X), X).
get_action(unfold(_), X, unfold(X)).
similar_action(unfold(_), use(_)).
get_data(cut(X), X).
get_action(cut(_), X, cut(X)).
similar_action(cut(_), use(_)).
get_data(closed(X), X).
get_action(closed(_), X, closed(X)).
similar_action(closed(_), use(_)).
get_data(stretch(X), X).
get_action(stretch(_), X, stretch(X)).
similar_action(stretch(_), use(_)).
get_data(wash(X), X).
get_action(wash(_), X, wash(X)).
similar_action(wash(_), use(_)).
get_data(jump(X), X).
get_action(jump(_), X, jump(X)).
similar_action(jump(_), use(_)).
get_data(wipe(X), X).
get_action(wipe(_), X, wipe(X)).
similar_action(wipe(_), use(_)).
get_data(wakeup(X), X).
get_action(wakeup(_), X, wakeup(X)).
similar_action(wakeup(_), use(_)).
get_data(talk(X), X).
get_action(talk(_), X, talk(X)).
similar_action(talk(_), use(_)).
get_data(greet(X), X).
get_action(greet(_), X, greet(X)).
similar_action(greet(_), use(_)).
get_data(sew(X), X).
get_action(sew(_), X, sew(X)).
similar_action(sew(_), use(_)).
get_data(wrap(X), X).
get_action(wrap(_), X, wrap(X)).
similar_action(wrap(_), use(_)).
get_data(brush(X), X).
get_action(brush(_), X, brush(X)).
similar_action(brush(_), use(_)).
get_data(pull(X), X).
get_action(pull(_), X, pull(X)).
similar_action(pull(_), use(_)).
get_data(dance(X), X).
get_action(dance(_), X, dance(X)).
similar_action(dance(_), use(_)).
get_data(soak(X), X).
get_action(soak(_), X, soak(X)).
similar_action(soak(_), use(_)).
get_data(scrub(X), X).
get_action(scrub(_), X, scrub(X)).
similar_action(scrub(_), use(_)).
get_data(flush(X), X).
get_action(flush(_), X, flush(X)).
similar_action(flush(_), use(_)).
get_data(shake(X), X).
get_action(shake(_), X, shake(X)).
similar_action(shake(_), use(_)).
get_data(wait(X), X).
get_action(wait(_), X, wait(X)).
similar_action(wait(_), use(_)).
get_data(spread(X), X).
get_action(spread(_), X, spread(X)).
similar_action(spread(_), use(_)).
get_data(open(X), X).
get_action(open(_), X, open(X)).
similar_action(open(_), use(_)).
get_data(touch(X), X).
get_action(touch(_), X, touch(X)).
similar_action(touch(_), use(_)).
get_data(squeeze(X), X).
get_action(squeeze(_), X, squeeze(X)).
similar_action(squeeze(_), grab(_)).
get_data(uncover(X), X).
get_action(uncover(_), X, uncover(X)).
similar_action(uncover(_), use(_)).
get_data(leave(X), X).
get_action(leave(_), X, leave(X)).
similar_action(leave(_), walk(_)).
get_data(enter(X), X).
get_action(enter(_), X, enter(X)).
similar_action(enter(_), walk(_)).
get_data(run(X), X).
get_action(run(_), X, run(X)).
similar_action(run(_), walk(_)).
get_data(crawl(X), X).
get_action(crawl(_), X, crawl(X)).
similar_action(crawl(_), walk(_)).
get_data(plugin(X), X).
get_action(plugin(_), X, plugin(X)).
similar_action(plugin(_), switchon(_)).
get_data(plugin(X), X).
get_action(plugin(_), X, plugin(X)).
similar_action(plugin(_), use(_)).
get_data(climb(X), X).
get_action(climb(_), X, climb(X)).
similar_action(climb(_), sit(_)).
get_data(drink(X), X).
get_action(drink(_), X, drink(X)).
similar_action(drink(_), use(_)).
get_data(standup(X), X).
get_action(standup(_), X, standup(X)).
similar_action(standup(_), standup).
get_data(unwrap(X), X).
get_action(unwrap(_), X, unwrap(X)).
similar_action(unwrap(_), use(_)).
get_data(break(X), X).
get_action(break(_), X, break(X)).
similar_action(break(_), use(_)).
get_data(text(X), X).
get_action(text(_), X, text(X)).
similar_action(text(_), use(_)).
get_data(sing(X), X).
get_action(sing(_), X, sing(X)).
similar_action(sing(_), use(_)).
get_data(stir(X), X).
get_action(stir(_), X, stir(X)).
similar_action(stir(_), use(_)).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|[]], [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|T], PerturbedFinalState) :- perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, PerturbedFinalState).
perturb(State, [], FinalState).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)]) :- similar_action(Action, use(_)), get_data(Action, X), append(Used, X, UsedX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)]) :- similar_action(Action, eat(_)), get_data(Action, X), append(Eaten, X, EatenX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(EatenX)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(Close), holds(HoldsX), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]) :- similar_action(Action, grab(_)), get_data(Action, X), append(Holds, X, HoldsX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(Close), holds(HoldsX), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(CloseX), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]) :- similar_action(Action, walk(_)), get_data(Action, X), append(Close, X, CloseX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(CloseX), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(OnX), laid_on(Laid), used(Used), eaten(Eaten)]) :- similar_action(Action, switchon(_)), get_data(Action, X), append(On, X, OnX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(OnX), laid_on(Laid), used(Used), eaten(Eaten)]).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], [Action|T], [close(Close), holds(Holds), sat_on(SatX), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]) :- similar_action(Action, sit(_)), get_data(Action, X), append(Sat, X, SatX), perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)], T, [close(Close), holds(Holds), sat_on(SatX), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
perturb(State, [A|T], FinalState) :- perturb(State, T, FinalState).
unperturb_actions([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|[]], Plan, Plan).
unperturb_actions([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)|T], PerturbedPlan, Plan) :- unperturb_actions(T, PerturbedPlan, [], Plan).
unperturb_actions(_, [], Plan, RevPlan) :- rev(Plan, RevPlan).
unperturb_actions(UnusualActions, [Action1|T], Plan, FinalPlan) :- in_unusual(UnusualActions, Action1, Action), unperturb_actions(UnusualActions, T, [Action|Plan], FinalPlan).
in_unusual([], Action, Action).
in_unusual([FirstUnusual|T], Action1, Action) :- similar_action(FirstUnusual, Action1), get_data(Action1, X), get_action(FirstUnusual, X, Action).
in_unusual([FirstUnusual|T], Action1, Action) :- in_unusual(T, Action1, Action).
complete_task(grab_remote, P) :- type(Remote, remotecontrol), transform([close([]), holds([Remote]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(grab_remote_and_clothes, P) :- type(Remote, remotecontrol), type(Clothes, clothesshirt), transform([close([]), holds([Remote, Clothes]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(use_phone_on_couch, P) :- type(Cell, cellphone), type(Sofa, sofa), transform([close([]), holds([Cell]), sat_on([Sofa]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(set_remote_on_coffee_table, P) :- type(Remote, remotecontrol), type(Ct, coffeetable), transform([close([]), holds([]), sat_on([]), on_top_of([[Remote, Ct]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_on_tv, P) :- type(Tv, tv), transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([Tv]), laid_on([]), used([]), eaten([])], P).
complete_task(go_to_sleep, P) :- type(Bed, bed), transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([Bed]), used([]), eaten([])], P).
complete_task(browse_internet, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(wash_teeth, P) :- type(Toothbrush, toothbrush), type(Toothpaste, toothpaste), type(Faucet, faucet), transform([close([Faucet]), holds([Toothbrush, Toothpaste]), sat_on([]), on_top_of([]), inside([]), on([Faucet]), laid_on([]), used([Toothpaste, Toothbrush]), eaten([])], P).
complete_task(brush_teeth, P) :- type(Toothbrush, toothbrush), type(Toothpaste, toothpaste), type(Faucet, faucet), transform([close([Faucet]), holds([Toothbrush, Toothpaste]), sat_on([]), on_top_of([]), inside([]), on([Faucet]), laid_on([]), used([Toothpaste, Toothbrush]), eaten([])], P).
complete_task(vacuum, P) :- type(Vacuum, vacuum), transform([close([]), holds([Vacuum]), sat_on([]), on_top_of([]), inside([]), on([Vacuum]), laid_on([]), used([Vacuum]), eaten([])], P).
complete_task(change_sheets_and_pillow_cases, P) :- type(Bed, bed), type(Pillow1, pillow), type(Pillow2, pillow), Pillow1\=Pillow2, inside_same_room(Pillow1, Bed), inside_same_room(Pillow2, Bed), type(Pillowcase1, pillowcase), type(Pillowcase2, pillowcase), Pillowcase1\=Pillowcase2, inside_same_room(Pillowcase1, Pillow1), inside_same_room(Pillowcase2, Pillow2), type(Sheets, sheets), inside_same_room(Sheets, Bed), type(ReplacementPillowcase1, pillowcase), type(ReplacementPillowcase2, pillowcase), type(ReplacementSheets, sheets), ReplacementPillowcase1\=Pillowcase1, ReplacementPillowcase1\=Pillowcase2, ReplacementPillowcase2\=Pillowcase1, ReplacementPillowcase2\=Pillowcase2, ReplacementSheets\=Sheets, type(Clothespile, clothespile), transform([close([]), holds([]), sat_on([]), on_top_of([[Pillowcase1, Clothespile], [Pillowcase2, Clothespile], [Sheets, Clothespile], [ReplacementPillowcase1, Pillow1], [ReplacementPillowcase2, Pillow2], [ReplacementSheets, Bed]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(wash_dirty_dishes, P) :- type(Sink, sink), inside(Inside), member([Sink, Kitchen], Inside), dirty_in_sink(Sink, Dishes), type(Faucet, faucet), member([Faucet, Kitchen], Inside), transform([close([]), holds([]), sat_on([]), on_top_of(Dishes), inside([]), on([Faucet]), laid_on([]), used([Sink]), eaten([])], P).
complete_task(feed_me, P) :- needs_cooking(Food), vegetable(Veggie), type(Pan, fryingpan), type(Stove, stove), transform([close([]), holds([]), sat_on([]), on_top_of([[Food, Pan], [Veggie, Pan], [Pan, Stove]]), inside([]), on([Stove]), laid_on([]), used([]), eaten([Food])], P).
complete_task(breakfast, P) :- breakfast(Food), easy_cooking(Heatsource, Food), transform([close([]), holds([]), sat_on([]), on_top_of([[Food, Heatsource]]), inside([]), on([Heatsource]), laid_on([]), used([]), eaten([Food])], P).
complete_task(read, P) :- readable(Reading), sittable(Comfy), type(Comfy, sofa), type(Light, lightswitch), transform([close([]), holds([Reading]), sat_on([Comfy]), on_top_of([]), inside([]), on([Light]), laid_on([]), used([Reading]), eaten([])], P).
complete_task(watch_tv, P) :- sittable(Comfy), type(Comfy, sofa), type(Tv, tv), transform([close([]), holds([]), sat_on([Comfy]), on_top_of([]), inside([]), on([Tv]), laid_on([]), used([]), eaten([])], P).
complete_task(read_book, P) :- type(Book, book), readable(Book), sittable(Comfy), type(Comfy, sofa), type(Light, lightswitch), transform([close([]), holds([Book]), sat_on([Comfy]), on_top_of([]), inside([]), on([Light]), laid_on([]), used([Book]), eaten([])], P).
complete_task(relax_on_sofa, P) :- type(Comfy, sofa), transform([close([]), holds([]), sat_on([Comfy]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(listen_to_music, P) :- type(Radio, radio), transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([Radio]), laid_on([]), used([]), eaten([])], P).
complete_task(tabletop_game, P) :- type(Table, kitchentable), type(Game, tabletopgame), transform([close([]), holds([]), sat_on([]), on_top_of([[Game, Table]]), inside([]), on([]), laid_on([]), used([Game]), eaten([])], P).
complete_task(pee, P) :- type(Toilet, toilet), transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Toilet]), eaten([])], P).
complete_task(go_to_bathroom, P) :- type(Toilet, toilet), transform([close([]), holds([]), sat_on([Toilet]), on_top_of([]), inside([]), on([]), laid_on([]), used([Toilet]), eaten([])], P).
complete_task(have_snack, P) :- type(Change, change), type(Dresser, dresser), transform([close([]), holds([Change]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_shoes_and_coat, P) :- type(Shoe1, shoe), type(Shoe2, shoe), Shoe1\=Shoe2, type(Coat, coat), transform([close([]), holds([]), sat_on([]), on_top_of([[Shoe1, character1], [Shoe2, character1], [Coat, character1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hair, P) :- type(HairProduct, hairproduct), type(Comb, comb), transform([close([]), holds([Comb, HairProduct]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Comb, HairProduct]), eaten([])], P).
complete_task(put_out_flowers, P) :- type(Flowers, flowers), type(Vase, vase), type(Table, kitchentable), transform([close([]), holds([]), sat_on([]), on_top_of([[Vase, Table], [Flowers, Vase]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_down_bags, P) :- type(Bag1, bag), type(Bag2, bag), Bag1\=Bag2, type(Table, kitchentable), transform([close([]), holds([]), sat_on([]), on_top_of([[Bag1, Table], [Bag2, Table]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(dry_yourself_off, P) :- type(Towel, towel), transform([close([]), holds([Towel]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Towel]), eaten([])], P).
complete_task(curled_hair, P) :- type(HairProduct, hairproduct), type(CurlingIron, curlingiron), transform([close([]), holds([CurlingIron, HairProduct]), sat_on([]), on_top_of([]), inside([]), on([CurlingIron]), laid_on([]), used([CurlingIron, HairProduct]), eaten([])], P).
complete_task(place_centerpiece, P) :- type(Centerpiece, centerpiece), type(Table, kitchentable), transform([close([]), holds([]), sat_on([]), on_top_of([[Centerpiece, Table]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(facial, P) :- type(Facecream, facecream), transform([close([]), holds([Facecream]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Facecream]), eaten([])], P).
complete_task(practice_violin, P) :- type(Violin, violin), transform([close([]), holds([Violin]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Violin]), eaten([])], P).
complete_task(wipe_room_with_lysol, P) :- type(Lysol, lysol), type(Towel, towel), type(Counter, bathroomcounter), transform([close([Counter]), holds([Lysol, Towel]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([Lysol, Towel]), eaten([])], P).
complete_task(replace_toothpaste, P) :- type(Oldtoothpaste, toothpaste), type(Newtoothpaste, toothpaste), new(Newtoothpaste), Oldtoothpaste\=Newtoothpaste, type(Trash, garbagecan), type(Counter, bathroomcounter), transform([close([]), holds([]), sat_on([]), on_top_of([[Oldtoothpaste, Trash], [Newtoothpaste, Counter]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hang_up_jacket, P) :- type(Coat, coat), type(Hanger, hanger), transform([close([]), holds([]), sat_on([]), on_top_of([[Coat, Hanger]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(shampoo_hair, P) :- type(Shampoo, shampoo), type(Tub, bathtub), transform([close([]), holds([Shampoo]), sat_on([Tub]), on_top_of([]), inside([]), on([]), laid_on([]), used([Shampoo]), eaten([])], P).
complete_task(read_them_bedtime_story, P) :- readable(Book), type(Bed, bed), transform([close([]), holds([Book]), sat_on([Bed]), on_top_of([]), inside([]), on([]), laid_on([]), used([Book]), eaten([])], P).
complete_task(sit_quietly, P) :- type(Comfy, sofa), transform([close([]), holds([]), sat_on([Comfy]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(work, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(use_laptop, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(check_email, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(print_out_document, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(type_up_document, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(watch_youtube, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(do_homework, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(shop, P) :- type(Computer, computer), type(Chair, chair), type(Cpuscreen, cpuscreen), inside_same_room(Computer, Chair), transform([close([Cpuscreen]), holds([]), sat_on([Chair]), on_top_of([]), inside([]), on([Computer]), laid_on([]), used([]), eaten([])], P).
complete_task(change_curtains, P) :- type(OldCurtains, curtains), type(Window, window), extra_ontopof(Ontopof), member([OldCurtains, Window], Ontopof), type(NewCurtains, curtains), OldCurtains\=NewCurtains, type(Closet, closet), transform([close([]), holds([]), sat_on([]), on_top_of([[OldCurtains, Closet], [NewCurtains, Window]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(eat_family_meals, P) :- needs_cooking(Food), vegetable(Veggie), type(Pan, fryingpan), type(Stove, stove), transform([close([]), holds([]), sat_on([]), on_top_of([[Food, Pan], [Veggie, Pan], [Pan, Stove]]), inside([]), on([Stove]), laid_on([]), used([]), eaten([Food])], P).
complete_task(use_bathroom, P) :- type(Toilet, toilet), transform([close([]), holds([]), sat_on([Toilet]), on_top_of([]), inside([]), on([]), laid_on([]), used([Toilet]), eaten([])], P).
complete_task(do_dishes, P) :- type(Sink, sink), inside(Inside), member([Sink, Kitchen], Inside), dirty_in_sink(Sink, Dishes), type(Faucet, faucet), member([Faucet, Kitchen], Inside), transform([close([]), holds([]), sat_on([]), on_top_of(Dishes), inside([]), on([Faucet]), laid_on([]), used([Sink]), eaten([])], P).
complete_task(eat_family_meals, P) :- needs_cooking(Food), vegetable(Veggie), type(Pan, fryingpan), type(Stove, stove), transform([close([]), holds([]), sat_on([]), on_top_of([[Food, Pan], [Veggie, Pan], [Pan, Stove]]), inside([]), on([Stove]), laid_on([]), used([]), eaten([Food])], P).
complete_task(change_bedding, P) :- type(Bed, bed), type(Pillow1, pillow), type(Pillow2, pillow), Pillow1\=Pillow2, inside_same_room(Pillow1, Bed), inside_same_room(Pillow2, Bed), type(Pillowcase1, pillowcase), type(Pillowcase2, pillowcase), Pillowcase1\=Pillowcase2, inside_same_room(Pillowcase1, Pillow1), inside_same_room(Pillowcase2, Pillow2), type(Sheets, sheets), inside_same_room(Sheets, Bed), type(ReplacementPillowcase1, pillowcase), type(ReplacementPillowcase2, pillowcase), type(ReplacementSheets, sheets), ReplacementPillowcase1\=Pillowcase1, ReplacementPillowcase1\=Pillowcase2, ReplacementPillowcase2\=Pillowcase1, ReplacementPillowcase2\=Pillowcase2, ReplacementSheets\=Sheets, type(Clothespile, clothespile), transform([close([]), holds([]), sat_on([]), on_top_of([[Pillowcase1, Clothespile], [Pillowcase2, Clothespile], [Sheets, Clothespile], [ReplacementPillowcase1, Pillow1], [ReplacementPillowcase2, Pillow2], [ReplacementSheets, Bed]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(toast_bread, P) :- breakfast(Food), easy_cooking(Heatsource, Food), transform([close([]), holds([]), sat_on([]), on_top_of([[Food, Heatsource]]), inside([]), on([Heatsource]), laid_on([]), used([]), eaten([])], P).
complete_task(drink_iced_coffee, P) :- type(Mug, mug), type(IcedCoffee, icedcoffee), extra_inside(Inside), member([IcedCoffee, Mug], Inside), transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([Mug])], P).
complete_task(get_in_way_of_guests_trying_to_leave, P) :- transform([close([character2]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(prepare_letter_for_mailing, P) :- type(Paper, paper), type(Envelope, envelope), type(Mailbox, mailbox), transform([close([]), holds([]), sat_on([]), on_top_of([[Paper, Envelope], [Envelope, Mailbox]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(added_meat_to_freezer, P) :- 	type(FREEZER1, freezer), type(GROCERIES1, groceries), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FREEZER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FREEZER1])], P).
complete_task(annoy_your_dog, P) :- 	type(CHAIR1, chair), type(LASERPOINTER1, laserpointer), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LASERPOINTER1]), shake([LASERPOINTER1]), standup([character1])], P).
complete_task(answer_door, P) :- 	type(MAN1, man), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).
complete_task(apply_lotion, P) :- 	type(BED1, bed), 	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([BED1]), wash([BED1])], P).
complete_task(arrange_bookshelf, P) :- 	type(BOOKSHELF1, bookshelf), type(BOOK1, book), type(BOOK3, book), type(DESK1, desk), type(BOOK2, book), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK1, BOOKSHELF1], [BOOK3, BOOKSHELF1], [BOOK2, BOOKSHELF1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([BOOKSHELF1, DESK1]), wipe([BOOKSHELF1])], P).
complete_task(arrange_folders, P) :- 	type(FOLDER4, folder), type(FOLDER3, folder), type(FOLDER2, folder), type(FOLDER5, folder), type(FOLDER1, folder), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOLDER4, DESK1], [FOLDER3, DESK1], [FOLDER2, DESK1], [FOLDER5, DESK1], [FOLDER1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1])], P).
complete_task(bake, P) :- 	type(OVEN1, oven), type(DOUGH1, dough), type(TRAY1, tray), 	transform([close([]), holds([TRAY1]), sat_on([]), on_top_of([[DOUGH1, TRAY1]]), inside([]), on([OVEN1]), laid_on([]), used([]), eaten([]), closed([OVEN1]), putin([TRAY1])], P).
complete_task(bathe, P) :- 	type(SOAP1, soap), type(FAUCET1, faucet), type(ARMSBOTH1, armsboth), type(BATHTUB1, bathtub), type(LEGSBOTH1, legsboth), 	transform([close([]), holds([]), sat_on([BATHTUB1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([BATHTUB1]), leave([BATHTUB1]), off([FAUCET1]), pour([SOAP1]), rinse([ARMSBOTH1, LEGSBOTH1]), scrub([ARMSBOTH1, LEGSBOTH1]), standup([character1])], P).
complete_task(break_table, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).
complete_task(breakfast, P) :- 	type(FOODFOOD1, foodfood), type(BED1, bed), type(TELEVISION1, television), 	transform([close([]), holds([FOODFOOD1]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([BED1]), used([]), eaten([FOODFOOD1]), watch([TELEVISION1])], P).
complete_task(bring_dirty_plate_to_sink, P) :- 	type(PLATE1, plate), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(bring_food, P) :- 	type(FOODFOOD1, foodfood), type(PLATE1, plate), 	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([[FOODFOOD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), sleep([character1]), wakeup([character1])], P).
complete_task(broom, P) :- 	type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sweep([FLOOR1])], P).
complete_task(browse_computer, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MAIL1, mail), type(COMPUTER1, computer), 	transform([close([]), holds([MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([MAIL1]), type([KEYBOARD1])], P).
complete_task(browse_internet, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(brush_hair, P) :- 	type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).
complete_task(brush_teeth, P) :- 	type(TOOTHBRUSH1, toothbrush), type(TEETH1, teeth), type(TOOTHPASTE1, toothpaste), 	transform([close([]), holds([TOOTHBRUSH1, TOOTHPASTE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([TOOTHPASTE1]), scrub([TEETH1])], P).
complete_task(celebrate, P) :- 	type(WOMAN1, woman), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(WOMAN2, woman), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1]), greet([WOMAN1, WOMAN2])], P).
complete_task(celebrate_birthday_with_nice_meal, P) :- 	type(PLATE1, plate), type(WINEGLASS1, wineglass), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1])], P).
complete_task(change_tv_channel, P) :- 	type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(BUTTON1, button), 	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), push([BUTTON1])], P).
complete_task(change_clothes, P) :- 	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESDRESS1])], P).
complete_task(change_curtains, P) :- 	type(CURTAIN1, curtain), type(CLOSET1, closet), type(BASKETFORCLOTHES1, basketforclothes), type(WINDOW1, window), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CURTAIN1, WINDOW1], [BASKETFORCLOTHES1, WINDOW1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), fold([CURTAIN1]), pull([CURTAIN1]), touch([CURTAIN1]), unfold([CURTAIN1])], P).
complete_task(check_email, P) :- 	type(LAPTOP1, laptop), type(CHAIR1, chair), 	transform([close([]), holds([LAPTOP1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), touch([LAPTOP1])], P).
complete_task(check_homework, P) :- 	type(TABLE1, tabl), type(CHILD1, child), type(HOMEWORK1, homework), 	transform([close([]), holds([]), sat_on([]), on_top_of([[HOMEWORK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), talk([CHILD1])], P).
complete_task(check_self_in_mirror, P) :- 	type(MIRROR1, mirror), 	transform([close([MIRROR1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(chop_vegetables, P) :- 	type(KNIFE1, knife), type(FOODCARROT1, foodcarrot), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard), 	transform([close([]), holds([KNIFE1, FOODCARROT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), cut([FOODCARROT1])], P).
complete_task(clean, P) :- 	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(clean_bathroom, P) :- 	type(DETERGENT1, detergent), type(TOILET1, toilet), type(SHOWER1, shower), type(BRUSH1, brush), 	transform([close([]), holds([BRUSH1, DETERGENT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), rinse([TOILET1, SHOWER1]), scrub([TOILET1, SHOWER1])], P).
complete_task(clean_dishes, P) :- 	type(DISHSOAP1, dishsoap), type(DRINKINGGLASS1, drinkingglass), type(COFFEECUP1, coffeecup), type(FAUCET1, faucet), type(PLATE1, plate), type(DETERGENT1, detergent), type(DISHWASHER1, dishwasher), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DISHSOAP1, PLATE1], [DRINKINGGLASS1, DISHWASHER1], [COFFEECUP1, DISHWASHER1], [PLATE1, DISHWASHER1], [DETERGENT1, DISHWASHER1]]), inside([]), on([FAUCET1, DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), wash([DRINKINGGLASS1, COFFEECUP1, PLATE1])], P).
complete_task(clean_eggs_from_our_chickens, P) :- 	type(FAUCET1, faucet), type(BOX1, box), type(FRIDGE1, fridge), type(FOODEGG1, foodegg), 	transform([close([]), holds([FOODEGG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), rinse([FOODEGG1])], P).
complete_task(clean_floor, P) :- 	type(CLEANINGBOTTLE1, cleaningbottle), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([CLEANINGBOTTLE1]), wash([CLEANINGBOTTLE1])], P).
complete_task(clean_floor, P) :- 	type(CLEANINGBOTTLE1, cleaningbottle), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([CLEANINGBOTTLE1])], P).
complete_task(clean_floor, P) :- 	type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), 	transform([close([]), holds([MOP1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), soak([MOP1])], P).
complete_task(clean_fridge, P) :- 	type(TRASHCAN1, trashcan), type(FOODFOOD1, foodfood), type(RAG1, rag), type(MILK1, milk), type(FOODCHEESE1, foodcheese), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, TRASHCAN1], [FOODCHEESE1, TRASHCAN1], [MILK1, FRIDGE1], [FOODBREAD1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), soak([RAG1]), wipe([FRIDGE1])], P).
complete_task(clean_kitchen, P) :- 	type(RAG1, rag), type(FAUCET1, faucet), type(STOVE1, stove), type(OVEN1, oven), type(KITCHENCABINET1, kitchencabinet), type(CLEANINGSOLUTION1, cleaningsolution), 	transform([close([]), holds([CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), rinse([RAG1]), wipe([STOVE1, OVEN1, KITCHENCABINET1])], P).
complete_task(clean_mirror, P) :- 	type(CLEANINGSOLUTION1, cleaningsolution), type(MIRROR1, mirror), type(RAG1, rag), 	transform([close([]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([MIRROR1])], P).
complete_task(clean_room, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(TOY2, toy), type(TOY1, toy), type(FLOORLAMP1, floorlamp), type(LIGHT1, light), type(TELEVISION1, television), type(DRESSER1, dresser), type(CLOTHESPANTS1, clothespants), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, DRESSER1], [TOY2, DRESSER1], [TOY1, DRESSER1], [CLOTHESPANTS1, DRESSER1]]), inside([]), on([FLOORLAMP1]), laid_on([]), used([]), eaten([])], P).
complete_task(clean_sink, P) :- 	type(SOAP1, soap), type(FAUCET1, faucet), type(SPONGE1, sponge), type(SINK1, sink), 	transform([close([]), holds([SINK1]), sat_on([]), on_top_of([[SOAP1, SINK1], [SPONGE1, SINK1]]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([SOAP1]), rinse([SPONGE1, SINK1]), scrub([SINK1]), soak([SPONGE1])], P).
complete_task(clean_toilet, P) :- 	type(TOILET1, toilet), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLEANINGSOLUTION1, TOILET1], [BRUSH1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), scrub([TOILET1])], P).
complete_task(clean_toilet, P) :- 	type(TOILET1, toilet), type(BRUSH1, brush), 	transform([close([]), holds([BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), scrub([TOILET1])], P).
complete_task(clear_table, P) :- 	type(DRINKINGGLASS1, drinkingglass), type(RAG1, rag), type(TABLE1, tabl), type(PLATE1, plate), type(FORK2, fork), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DRINKINGGLASS1, SINK1], [PLATE1, SINK1], [FORK2, SINK1], [FORK1, SINK1], [PLATE2, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(close_dresser_drawer, P) :- 	type(DRESSER1, dresser), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DRESSER1])], P).
complete_task(comb_hair, P) :- 	type(HAIR1, hair), type(MIRROR1, mirror), type(COMB1, comb), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).
complete_task(come_in_and_leave_home, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).
complete_task(complete_homework, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MECHANICALPENCIL1, mechanicalpencil), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk), type(COMPUTER1, computer), 	transform([close([]), holds([TEXTBOOK1]), sat_on([CHAIR1]), on_top_of([[NOTEBOOK1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([DESK1]), read([TEXTBOOK1]), type([KEYBOARD1]), write([NOTEBOOK1])], P).
complete_task(cook_some_food, P) :- 	type(COOKINGPOT1, cookingpot), type(FOODRICE1, foodrice), type(FOODCARROT1, foodcarrot), type(FOODSALT1, foodsalt), type(STOVE1, stove), type(FOODVEGETABLE1, foodvegetable), type(FOODFRUIT1, foodfruit), 	transform([close([]), holds([]), sat_on([]), on_top_of([[COOKINGPOT1, STOVE1], [FOODCARROT1, STOVE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODCARROT1])], P).
complete_task(curled_hair, P) :- 	type(BLOWDRYER1, blowdryer), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([BLOWDRYER1]), plugin([BLOWDRYER1]), stretch([HAIR1])], P).
complete_task(cut_steak, P) :- 	type(KNIFE1, knife), type(FOODSTEAK1, foodsteak), type(CHAIR1, chair), type(FORK1, fork), 	transform([close([]), holds([KNIFE1, FORK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODSTEAK1]), push([FORK1])], P).
complete_task(cut_your_hair, P) :- 	type(SCISSORS1, scissors), type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), cut([HAIR1])], P).
complete_task(dance, P) :- 	type(STEREO1, stereo), type(ARMSBOTH1, armsboth), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([STEREO1]), laid_on([]), used([]), eaten([]), dance([character1]), stretch([ARMSBOTH1])], P).
complete_task(dance_with_kids, P) :- 	type(RADIO1, radio), type(PHONE1, phone), type(CHILD1, child), type(CHILD2, child), type(DRESSER1, dresser), 	transform([close([]), holds([PHONE1]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1]), greet([CHILD1, CHILD2]), plugin([PHONE1])], P).
complete_task(decorate, P) :- 	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(TABLECLOTH1, tablecloth), type(CENTERPIECE1, centerpiece), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TABLECLOTH1, TABLE1], [CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(decorate_it, P) :- 	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece), type(PAINTING2, painting), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAINTING1, TABLE1], [CENTERPIECE1, TABLE1], [PAINTING2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(deficate, P) :- 	type(WOMAN1, woman), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(CLOTHESPANTS1, clothespants), 	transform([close([]), holds([TOILETPAPER1]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([WOMAN1])], P).
complete_task(defrost_chicken, P) :- 	type(FAUCET1, faucet), type(FOODCHICKEN1, foodchicken), type(FREEZER1, freezer), type(SINK1, sink), 	transform([close([]), holds([SINK1]), sat_on([]), on_top_of([[FOODCHICKEN1, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FREEZER1]), off([FAUCET1])], P).
complete_task(dining, P) :- 	type(MILK1, milk), type(TABLE1, tabl), type(CHAIR1, chair), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard), 	transform([close([]), holds([SPOON1]), sat_on([CHAIR1]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1]), pour([MILK1, FOODCEREAL1])], P).
complete_task(do_an_art_project, P) :- 	type(SCISSORS1, scissors), type(CRAYON1, crayon), type(PAPER1, paper), type(DESK1, desk), type(GLUE1, glue), type(DRAWING1, drawing), 	transform([close([]), holds([PAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([DRAWING1]), fold([PAPER1]), open([DESK1]), unfold([PAPER1])], P).
complete_task(do_dishes, P) :- 	type(FAUCET1, faucet), type(PLATE1, plate), type(DISHWASHER1, dishwasher), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1]]), inside([]), on([DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), off([FAUCET1]), rinse([PLATE1])], P).
complete_task(do_facial, P) :- 	type(FAUCET1, faucet), type(MIRROR1, mirror), type(FACIALCLEANSER1, facialcleanser), type(HANDSBOTH1, handsboth), type(FACE1, face), type(TOWEL1, towel), type(FACESOAP1, facesoap), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([FACIALCLEANSER1]), rinse([FACE1]), scrub([FACE1]), spread([FACIALCLEANSER1]), wash([HANDSBOTH1, FACE1]), wipe([FACE1])], P).
complete_task(do_homework, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil), 	transform([close([]), holds([PENCIL1]), sat_on([CHAIR1]), on_top_of([[NOTEBOOK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1]), read([TEXTBOOK1]), write([NOTEBOOK1])], P).
complete_task(do_laundry, P) :- 	type(WASHINGMACHINE1, washingmachine), type(BASKETFORCLOTHES1, basketforclothes), type(LAUNDRYDETERGENT1, laundrydetergent), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([LAUNDRYDETERGENT1]), sat_on([]), on_top_of([[BASKETFORCLOTHES1, WASHINGMACHINE1], [CLOTHESPANTS1, WASHINGMACHINE1], [CLOTHESDRESS1, WASHINGMACHINE1]]), inside([]), on([WASHINGMACHINE1]), laid_on([]), used([]), eaten([]), closed([WASHINGMACHINE1]), pour([LAUNDRYDETERGENT1])], P).
complete_task(do_nails, P) :- 	type(SHOES1, shoes), type(NAILPOLISH1, nailpolish), type(CLOSET1, closet), 	transform([close([]), holds([NAILPOLISH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CLOSET1])], P).
complete_task(do_taxes, P) :- 	type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer), 	transform([close([]), holds([DOCUMENT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([DOCUMENT1]), type([KEYBOARD1])], P).
complete_task(draft_home, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(draw_picture, P) :- 	type(PEN1, pen), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk), 	transform([close([]), holds([PEN1]), sat_on([CHAIR1]), on_top_of([[PAPER1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DESK1])], P).
complete_task(dress_up_and_pretend, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), dance([character1]), puton([CLOTHESSHIRT1, CLOTHESSKIRT1, CLOTHESPANTS1, CLOTHESDRESS1])], P).
complete_task(drink, P) :- 	type(WATERGLASS1, waterglass), 	transform([close([]), holds([WATERGLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATERGLASS1])], P).
complete_task(dry_hair, P) :- 	type(HAIRDRYER1, hairdryer), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([HAIRDRYER1]), eaten([]), plugin([HAIRDRYER1])], P).
complete_task(dust, P) :- 	type(DUSTER1, duster), type(FILINGCABINET1, filingcabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FILINGCABINET1])], P).
complete_task(eat, P) :- 	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(TABLE1, tabl), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(eat_cereal, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([CHAIR1])], P).
complete_task(eat_cheese, P) :- 	type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese), 	transform([close([]), holds([FOODCHEESE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODCHEESE1]), open([FRIDGE1])], P).
complete_task(eat_dessert, P) :- 	type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FORK1, fork), type(FRIDGE1, fridge), type(FOODDESSERT1, fooddessert), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODDESSERT1])], P).
complete_task(eat_dinner, P) :- 	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(STOVE1, stove), type(CHAIR1, chair), type(FORK1, fork), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(eat_donuts, P) :- 	type(FOODDONUT1, fooddonut), type(PLATE1, plate), type(BOX1, box), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODDONUT1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([FOODDONUT1]), open([BOX1])], P).
complete_task(eat_family_meals, P) :- 	type(KNIFE1, knife), type(MAN1, man), type(PLATE1, plate), type(CHILD1, child), type(FORK1, fork), 	transform([close([]), holds([FORK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), greet([MAN1, CHILD1])], P).
complete_task(eat_meals, P) :- 	type(PLATE1, plate), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(eat_on_fancy_china, P) :- 	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork), 	transform([close([]), holds([KNIFE1, FORK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(eat_snacks_and_drink_tea, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CHAIR1]), wash([CHAIR1])], P).
complete_task(empty_dishwasher_and_fill_dishwasher, P) :- 	type(DISHSOAP1, dishsoap), type(PLATE1, plate), type(FORK2, fork), type(DISHWASHER1, dishwasher), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DISHSOAP1, DISHWASHER1], [PLATE1, DISHWASHER1], [FORK2, DISHWASHER1], [FORK1, DISHWASHER1], [PLATE2, DISHWASHER1]]), inside([]), on([DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).
complete_task(enjoy_view_out_window, P) :- 	type(WINDOW1, window), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(entertain, P) :- 	type(FOODCHEESE1, foodcheese), type(WINEGLASS1, wineglass), type(CRACKERS1, crackers), type(COUCH1, couch), 	transform([close([]), holds([WINEGLASS1]), sat_on([COUCH1]), on_top_of([[FOODCHEESE1, COFFEETABLE1], [CRACKERS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WINEGLASS1])], P).
complete_task(exercise, P) :- 	type(ARMSBOTH1, armsboth), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(FLOOR1, rug), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([FLOOR1]), used([]), eaten([]), jump([character1]), stretch([ARMSBOTH1, LEGSBOTH1])], P).
complete_task(face_washing, P) :- 	type(FAUCET1, faucet), type(WATER1, water), type(HANDSBOTH1, handsboth), type(FACE1, face), type(FACESOAP1, facesoap), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([WATER1, FACESOAP1]), rinse([FACE1]), scrub([FACE1]), spread([FACESOAP1]), wash([FACE1])], P).
complete_task(family_meetings, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch), type(WOMAN2, woman), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), talk([MAN1, WOMAN1])], P).
complete_task(fax_forms_to_doctor, P) :- 	type(PEN1, pen), type(DOCUMENT1, document), type(FAXMACHINE1, faxmachine), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[DOCUMENT1, FAXMACHINE1]]), inside([]), on([FAXMACHINE1]), laid_on([]), used([]), eaten([])], P).
complete_task(feed_me, P) :- 	type(FOODFOOD1, foodfood), type(PLATE1, plate), type(FORK1, fork), type(FOODFOOD2, foodfood), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(file_documents, P) :- 	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk), 	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([DOCUMENT1])], P).
complete_task(file_expense_reports, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(MOUSE1, mouse), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer), type(RECEIPT1, receipt), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOLDER1, DESK1], [RECEIPT1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(fix_broken_toys, P) :- 	type(CLOSET1, closet), type(TOY1, toy), type(TABLE1, tabl), 	transform([close([]), holds([TOY1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([TOY1])], P).
complete_task(fluff_pillows, P) :- 	type(PILLOW2, pillow), type(PILLOW1, pillow), type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), pull([PILLOW2, PILLOW1]), push([PILLOW2, PILLOW1]), shake([PILLOW2, PILLOW1]), sleep([character1]), squeeze([PILLOW2, PILLOW1])], P).
complete_task(flush_toilet, P) :- 	type(TOILET1, toilet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1])], P).
complete_task(fold_laundry, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(COFFEETABLE1, tabl), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESPANTS1, clothespants), type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [BASKETFORCLOTHES1, COFFEETABLE1], [CLOTHESPANTS1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESSHIRT1, CLOTHESPANTS1])], P).
complete_task(get_dressed, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), 	transform([close([]), holds([CLOTHESSHIRT1, CLOTHESPANTS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESSHIRT1, CLOTHESPANTS1])], P).
complete_task(get_drink, P) :- 	type(WATER1, water), type(SINK1, sink), type(KITCHENCABINET1, kitchencabinet), type(GLASS1, glass), type(FRIDGE1, fridge), 	transform([close([]), holds([WATER1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([WATER1])], P).
complete_task(get_glass_of_milk, P) :- 	type(FRIDGE1, fridge), type(MILK1, milk), type(GLASS1, glass), 	transform([close([]), holds([GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), pour([MILK1])], P).
complete_task(get_glass_of_water, P) :- 	type(FAUCET1, faucet), type(GLASS1, glass), type(KITCHENCABINET1, kitchencabinet), type(SINK1, sink), 	transform([close([]), holds([GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1]), off([FAUCET1])], P).
complete_task(get_out_dish, P) :- 	type(PLATE1, plate), type(CUPBOARD1, cupboard), 	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CUPBOARD1])], P).
complete_task(get_ready_for_work, P) :- 	type(SHOES1, shoes), type(MIRROR1, mirror), type(FACE1, face), type(CLOSET1, closet), type(BLOWDRYER1, blowdryer), type(FOUNDATION1, foundation), type(HAIR1, hair), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([SHOES1, CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), closed([CLOSET1]), off([BLOWDRYER1]), plugin([BLOWDRYER1]), puton([SHOES1, CLOTHESDRESS1]), spread([FOUNDATION1])], P).
complete_task(get_some_water, P) :- 	type(CHAIR1, chair), type(CLOTHNAPKIN1, clothnapkin), 	transform([close([]), holds([CLOTHNAPKIN1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([CLOTHNAPKIN1]), push([CHAIR1]), wipe([CHAIR1])], P).
complete_task(get_toilet_paper, P) :- 	type(TOILETPAPER1, toiletpaper), 	transform([close([]), holds([TOILETPAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([])], P).
complete_task(getting__dresses, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), 	transform([close([]), holds([CLOTHESSHIRT1, CLOTHESPANTS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESSHIRT1, CLOTHESPANTS1])], P).
complete_task(give_milk_to_cat, P) :- 	type(MILK1, milk), type(PLATE1, plate), type(CAT1, cat), 	transform([close([]), holds([MILK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1]), pull([CAT1]), scrub([CAT1]), touch([CAT1])], P).
complete_task(go_pee, P) :- 	type(CLOTHESUNDERWEAR1, clothesunderwear), type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), off([FAUCET1]), rinse([HANDSBOTH1]), standup([character1]), wash([HANDSBOTH1])], P).
complete_task(go_to_bed, P) :- 	type(BLANKET1, blanket), type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), cover([BLANKET1]), sleep([character1]), uncover([BED1])], P).
complete_task(go_to_sleep, P) :- 	type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), sleep([character1])], P).
complete_task(go_to_toilet, P) :- 	type(TOILET1, toilet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).
complete_task(grading_papers, P) :- 	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(TEXTBOOK1, textbook), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer), 	transform([close([]), holds([PEN1]), sat_on([]), on_top_of([[FOLDER1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([TEXTBOOK1]), write([DOCUMENT1])], P).
complete_task(greet_guests, P) :- 	type(WOMAN2, woman), type(WOMAN1, woman), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).
complete_task(greet_people, P) :- 	type(MAN2, man), type(MAN1, man), type(WOMAN1, woman), type(WOMAN2, woman), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN2, MAN1, WOMAN1, WOMAN2])], P).
complete_task(hair, P) :- 	type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair), type(COMB1, comb), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).
complete_task(hair_dressing, P) :- 	type(HAIRBRUSH1, hairbrush), type(HAIRDRYER1, hairdryer), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), off([HAIRDRYER1]), plugin([HAIRDRYER1]), shake([HAIRDRYER1])], P).
complete_task(hand_washing, P) :- 	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOWEL1, towel), type(SINK1, sink), 	transform([close([]), holds([TOWEL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), scrub([HANDSBOTH1]), wash([HANDSBOTH1]), wipe([HANDSBOTH1])], P).
complete_task(hang_out, P) :- 	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).
complete_task(hang_up_jacket, P) :- 	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hang_with_friends, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1])], P).
complete_task(have_conversation_with_boyfriend, P) :- 	type(MAN1, man), type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).
complete_task(have_quality_family_time, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(DECKOFCARDS1, deckofcards), type(CHILD1, child), type(CARDS1, cards), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DECKOFCARDS1, TABLE1], [CARDS1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), play([CARDS1])], P).
complete_task(have_snack, P) :- 	type(JUICE1, juice), type(GLASS1, glass), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODSNACK1]), drink([GLASS1])], P).
complete_task(help_organize_files, P) :- 	type(PEN1, pen), type(BOX4, box), type(BOX1, box), type(DOCUMENT1, document), type(BOX2, box), type(DOCUMENT2, document), type(BOX3, box), type(DOCUMENT4, document), type(DOCUMENT3, document), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, BOX1], [DOCUMENT2, BOX2], [DOCUMENT3, BOX3], [DOCUMENT4, BOX4]]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([BOX4, BOX1, BOX2, BOX3])], P).
complete_task(hides, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([CHAIR1]), pull([CHAIR1]), push([CHAIR1])], P).
complete_task(homework, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(NOTES1, notes), type(COMPUTER1, computer), 	transform([close([]), holds([NOTEBOOK1, NOTES1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([NOTES1]), type([KEYBOARD1])], P).
complete_task(ignore_people, P) :- 	type(EYESBOTH1, eyesboth), type(LEGSBOTH1, legsboth), type(BED1, bed), 	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([EYESBOTH1]), stretch([LEGSBOTH1])], P).
complete_task(in_living_room_i_eat_dinner, P) :- 	type(FOODFOOD1, foodfood), type(COFFEETABLE1, tabl), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(WINE1, wine), type(TELEVISION1, television), type(FORK1, fork), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1])], P).
complete_task(iron_shirt, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(IRONINGBOARD1, ironingboard), type(IRON1, iron), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, IRONINGBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([IRON1])], P).
complete_task(keep_an_eye_on_stove_as_something_is_cooking, P) :- 	type(STOVE1, stove), type(POT1, pot), type(WALLCLOCK1, wallclock), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([STOVE1])], P).
complete_task(keep_cats_inside_while_door_is_open, P) :- 	type(CAT1, cat), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CAT1])], P).
complete_task(laugh, P) :- 	type(MAN1, man), type(COUCH1, couch), type(CHILD1, child), type(CHILD2, child), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, CHILD1, CHILD2]), laugh([character1])], P).
complete_task(lay_down_on_floor_and_say_im_rug, P) :- 	type(CARPET1, carpet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([CARPET1]), used([]), eaten([]), speak([character1])], P).
complete_task(lay_tablecloth, P) :- 	type(TABLECLOTH1, tablecloth), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([TABLECLOTH1])], P).
complete_task(let_baby_learn_how_to_walk, P) :- 	type(CHILD1, child), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), touch([CHILD1])], P).
complete_task(listen_to_music, P) :- 	type(DVDPLAYER1, dvdplayer), type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([DVDPLAYER1]), laid_on([]), used([]), eaten([])], P).
complete_task(load_dishwasher, P) :- 	type(FAUCET1, faucet), type(PLATE1, plate), type(BOWL1, bowl), type(BOWL2, bowl), type(DISHWASHER1, dishwasher), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1], [BOWL1, DISHWASHER1], [BOWL2, DISHWASHER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), off([FAUCET1]), rinse([PLATE1, BOWL1, BOWL2])], P).
complete_task(look_in_refrigerator, P) :- 	type(FRIDGE1, fridge), type(KITCHENCABINET1, kitchencabinet), type(FOODFOOD2, foodfood), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, KITCHENCABINET1])], P).
complete_task(look_out_window, P) :- 	type(WINDOW1, window), 	transform([close([WINDOW1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(mail_signed_letter_to_customer, P) :- 	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(ENVELOPE1, envelope), type(ADDRESSBOOK1, addressbook), type(COMPUTER1, computer), type(PRINTER1, printer), 	transform([close([]), holds([PEN1, ADDRESSBOOK1]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [DOCUMENT1, ENVELOPE1]]), inside([]), on([COMPUTER1, PRINTER1]), laid_on([]), used([]), eaten([]), fold([DOCUMENT1]), read([DOCUMENT1]), type([KEYBOARD1]), write([ENVELOPE1])], P).
complete_task(make__cookies, P) :- 	type(COFFEETABLE1, tabl), type(DOUGH1, dough), type(OVEN1, oven), type(TRAY1, tray), type(FRIDGE1, fridge), type(OVENMITTS1, ovenmitts), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DOUGH1, TRAY1], [TRAY1, COFFEETABLE1], [OVENMITTS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), putin([TRAY1]), puton([OVENMITTS1]), wait([character1])], P).
complete_task(make_cereal, P) :- 	type(MILK1, milk), type(TABLE1, tabl), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard), 	transform([close([]), holds([SPOON1]), sat_on([]), on_top_of([[BOWL1, TABLE1], [FOODCEREAL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1]), pour([MILK1])], P).
complete_task(make_childs_bed, P) :- 	type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([BED1]), wipe([BED1])], P).
complete_task(make_coffee, P) :- 	type(GROUNDCOFFEE1, groundcoffee), type(COFFEEFILTER1, coffeefilter), type(COFFEMAKER1, coffemaker), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROUNDCOFFEE1, COFFEMAKER1], [COFFEEFILTER1, COFFEMAKER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([COFFEMAKER1]), plugin([COFFEMAKER1])], P).
complete_task(make_drink, P) :- 	type(MILK1, milk), type(KITCHENCABINET1, kitchencabinet), type(SPOON1, spoon), type(GLASS1, glass), 	transform([close([]), holds([MILK1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1])], P).
complete_task(make_eggs, P) :- 	type(FRYINGPAN1, fryingpan), type(FOODEGG2, foodegg), type(STOVE1, stove), type(FRIDGE1, fridge), type(FOODEGG1, foodegg), 	transform([close([]), holds([FRYINGPAN1]), sat_on([]), on_top_of([[FOODEGG2, FRYINGPAN1], [FOODEGG1, FRYINGPAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), off([STOVE1]), shake([FRYINGPAN1])], P).
complete_task(make_ice_in_ice_trays_for_freezer, P) :- 	type(WATER1, water), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).
complete_task(make_jello, P) :- 	type(WATER1, water), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).
complete_task(make_sandwich, P) :- 	type(FOODBREAD2, foodbread), type(PLATE1, plate), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODBREAD1, foodbread), type(SAUCE1, sauce), type(FOODVEGETABLE3, foodvegetable), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE2, FOODBREAD1]]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).
complete_task(make_several_copies_on_printer, P) :- 	type(DOCUMENT1, document), type(PAPER1, paper), type(DESK1, desk), type(PRINTER1, printer), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, PRINTER1], [PAPER1, PRINTER1]]), inside([]), on([PRINTER1]), laid_on([]), used([]), eaten([]), touch([PRINTER1])], P).
complete_task(make_tea, P) :- 	type(FAUCET1, faucet), type(TABLE1, tabl), type(TEABAG1, teabag), type(STOVE1, stove), type(CUP1, cup), type(POT1, pot), type(TEA1, tea), type(SINK1, sink), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TEABAG1, CUP1]]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([TEA1])], P).
complete_task(make_toast, P) :- 	type(TOASTER1, toaster), type(FOODBREAD1, foodbread), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, TOASTER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([]), plugin([TOASTER1])], P).
complete_task(massage, P) :- 	type(ARMSBOTH1, armsboth), type(MAN1, man), type(BED1, bed), type(FEETBOTH1, feetboth), type(LEGSBOTH1, legsboth), 	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1]), squeeze([ARMSBOTH1, FEETBOTH1, LEGSBOTH1]), standup([character1]), stretch([ARMSBOTH1, LEGSBOTH1]), touch([ARMSBOTH1, MAN1, FEETBOTH1, LEGSBOTH1])], P).
complete_task(meeting, P) :- 	type(MAN2, man), type(DOCUMENT1, document), type(MAN1, man), type(FOLDER1, folder), type(DESK1, desk), type(SOFA1, sofa), 	transform([close([]), holds([DOCUMENT1, FOLDER1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FOLDER1]), greet([MAN2, MAN1]), read([DOCUMENT1])], P).
complete_task(mop, P) :- 	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), soak([MOP1]), squeeze([MOP1]), wash([FLOOR1])], P).
complete_task(mop_floor, P) :- 	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(SINK1, sink), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor), 	transform([close([]), holds([CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), scrub([MOP1])], P).
complete_task(movie, P) :- 	type(CDPLAYER1, cdplayer), type(TELEVISION1, television), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), off([CDPLAYER1])], P).
complete_task(open_curtains, P) :- 	type(CURTAIN2, curtain), type(CURTAIN1, curtain), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CURTAIN2, CURTAIN1])], P).
complete_task(organise_paperwork, P) :- 	type(PAPER1, paper), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([PAPER1]), write([PAPER1])], P).
complete_task(organize, P) :- 	type(TOOTHBRUSH1, toothbrush), type(CUPBOARD1, cupboard), type(BRUSH1, brush), type(AFTERSHAVE1, aftershave), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOOTHBRUSH1, CUPBOARD1], [BRUSH1, CUPBOARD1], [AFTERSHAVE1, CUPBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CUPBOARD1])], P).
complete_task(organize_closet, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESSHIRT3, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants), type(BASKETFORCLOTHES1, basketforclothes), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES1], [CLOTHESSHIRT3, BASKETFORCLOTHES1], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).
complete_task(organize_desk, P) :- 	type(NEWSPAPER1, newspaper), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet), type(BOOK1, book), type(FOLDER1, folder), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([]), on_top_of([[NEWSPAPER1, BOOK1], [DOCUMENT1, BOOK1], [FOLDER1, BOOK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([NEWSPAPER1]), open([FILINGCABINET1, FOLDER1]), putin([DOCUMENT1, FOLDER1])], P).
complete_task(pack_lunch, P) :- 	type(FOODFOOD1, foodfood), type(FOODCHEESE1, foodcheese), type(BOX1, box), type(TABLE1, tabl), type(BOWL3, bowl), type(BOWL1, bowl), type(ICE1, ice), type(BOWL2, bowl), type(KITCHENCABINET1, kitchencabinet), type(FREEZER1, freezer), type(FOODVEGETABLE1, foodvegetable), type(FRIDGE1, fridge), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, BOWL1], [FOODCHEESE1, BOWL1], [BOX1, TABLE1], [FOODVEGETABLE1, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(paint_nails, P) :- 	type(TRASHCAN1, trashcan), type(BED1, bed), type(PAPERTOWEL1, papertowel), type(NAILPOLISH1, nailpolish), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPERTOWEL1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([NAILPOLISH1]), eaten([])], P).
complete_task(pay_bills, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(pee, P) :- 	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOILETPAPER1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TOILET1]), flush([TOILET1]), off([FAUCET1]), wash([HANDSBOTH1]), wipe([character1])], P).
complete_task(pet_cat, P) :- 	type(CAT1, cat), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CAT1])], P).
complete_task(pet_dog, P) :- 	type(HANDSBOTH1, handsboth), type(COUCH1, couch), type(DOG1, dog), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([HANDSBOTH1]), touch([DOG1])], P).
complete_task(physical_therapy, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CHAIR1]), wipe([CHAIR1])], P).
complete_task(pick_up, P) :- 	type(TOY1, toy), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([TOY1]), wash([TOY1])], P).
complete_task(pick_up_dirty_dishes, P) :- 	type(TABLE1, tabl), 	transform([close([TABLE1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(pick_up_obvious_trash, P) :- 	type(TRASHCAN1, trashcan), type(PAPER2, paper), type(PAPER3, paper), type(PAPER1, paper), 	transform([close([]), holds([PAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(pick_up_phone, P) :- 	type(COFFEETABLE1, coffeetable), type(PHONE1, phone), 	transform([close([]), holds([PHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(pick_up_toys, P) :- 	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(play, P) :- 	type(TABLE1, tabl), type(COUCH1, couch), type(SCRABBLE1, scrabble), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SCRABBLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([SCRABBLE1])], P).
complete_task(play_games, P) :- 	type(CHAIR1, chair), type(TELEVISION1, television), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE1, videogameconsole), 	transform([close([]), holds([VIDEOGAMECONTROLLER1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([TELEVISION1, VIDEOGAMECONSOLE1]), laid_on([]), used([]), eaten([])], P).
complete_task(play_guitar, P) :- 	type(INSTRUMENTGUITAR1, instrumentguitar), type(CABINET1, cabinet), 	transform([close([]), holds([INSTRUMENTGUITAR1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), play([INSTRUMENTGUITAR1])], P).
complete_task(play_musical_chairs, P) :- 	type(CHAIR3, chair), type(STEREO1, stereo), type(CHAIR1, chair), type(CHAIR2, chair), 	transform([close([]), holds([]), sat_on([CHAIR1, CHAIR2]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([STEREO1]), pull([CHAIR3, CHAIR1, CHAIR2]), run([CHAIR1, CHAIR2]), standup([character1])], P).
complete_task(play_with_barbies, P) :- 	type(TOY2, toy), type(TOY1, toy), type(BED1, bed), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, BED1], [TOY1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), shake([TOY2]), squeeze([TOY1]), touch([TOY1])], P).
complete_task(playing_video_game, P) :- 	type(VIDEOGAMECONSOLE1, videogameconsole), type(VIDEOGAMECONTROLLER2, videogamecontroller), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE2, videogameconsole), 	transform([close([]), holds([VIDEOGAMECONTROLLER2]), sat_on([]), on_top_of([]), inside([]), on([VIDEOGAMECONSOLE2]), laid_on([]), used([]), eaten([]), off([VIDEOGAMECONSOLE1])], P).
complete_task(polish_your_shoes, P) :- 	type(SHOES1, shoes), type(RAG1, rag), type(BED1, bed), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush), type(FLOOR1, floor), type(SHOESHINEKIT1, shoeshinekit), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([SHOES1]), open([CLEANINGSOLUTION1])], P).
complete_task(polishing_floor, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).
complete_task(pop_zit, P) :- 	type(FAUCET1, faucet), type(MIRROR1, mirror), type(HANDSBOTH1, handsboth), type(FACE1, face), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), rinse([HANDSBOTH1]), squeeze([FACE1]), touch([FACE1])], P).
complete_task(practice_violin, P) :- 	type(INSTRUMENTVIOLIN1, instrumentviolin), type(MUSICSTAND1, musicstand), type(PAPER1, paper), 	transform([close([]), holds([]), sat_on([]), on_top_of([[INSTRUMENTVIOLIN1, MUSICSTAND1], [PAPER1, MUSICSTAND1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([INSTRUMENTVIOLIN1])], P).
complete_task(prepare_dinner, P) :- 	type(STOVE1, stove), type(FOODFOOD1, foodfood), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, STOVE1]]), inside([]), on([STOVE1]), laid_on([]), used([]), eaten([])], P).
complete_task(prepare_breakfast, P) :- 	type(FOODBANANA1, foodbanana), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODBANANA1])], P).
complete_task(prepare_for_work, P) :- 	type(FOODCHEESE1, foodcheese), type(CUTTINGBOARD1, cuttingboard), type(FOODBREAD1, foodbread), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, CUTTINGBOARD1], [FOODCHEESE1, CUTTINGBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), wrap([FOODBREAD1])], P).
complete_task(prepare_letter_for_mailing, P) :- 	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(ENVELOPE1, envelope), 	transform([close([]), holds([ENVELOPE1]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [DOCUMENT1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([DOCUMENT1]), write([ENVELOPE1])], P).
complete_task(prepare_pot_of_boiling_water, P) :- 	type(FAUCET1, faucet), type(STOVE1, stove), type(POT1, pot), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([[POT1, STOVE1]]), inside([]), on([STOVE1]), laid_on([]), used([]), eaten([]), off([FAUCET1])], P).
complete_task(prepare_sandwich, P) :- 	type(FOODBREAD2, foodbread), type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD2, PLATE1], [FOODPEANUTBUTTER1, KNIFE1], [FOODBREAD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), spread([FOODPEANUTBUTTER1])], P).
complete_task(pretend_tea, P) :- 	type(TABLE1, tabl), type(CHILD1, child), type(CUP1, cup), type(CUP2, cup), type(KETTLE1, kettle), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CUP1, TABLE1], [CUP2, TABLE1], [KETTLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([CUP1, CUP2]), greet([CHILD1]), pour([KETTLE1])], P).
complete_task(print_documents, P) :- 	type(DOCUMENT1, document), type(LAPTOP1, laptop), type(MOUSE1, mouse), type(FOLDER1, folder), type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PRINTINGPAPER1, PRINTER1]]), inside([]), on([LAPTOP1, PRINTER1]), laid_on([]), used([]), eaten([]), closed([FOLDER1]), putin([DOCUMENT1])], P).
complete_task(print_out_papers, P) :- 	type(MOUSE1, mouse), type(PRINTINGPAPER1, printingpaper), type(COMPUTER1, computer), type(PRINTER1, printer), 	transform([close([]), holds([MOUSE1, PRINTINGPAPER1]), sat_on([]), on_top_of([]), inside([]), on([PRINTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(pull_hair_out_of_drain, P) :- 	type(SHAMPOO1, shampoo), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([SHAMPOO1]), wash([SHAMPOO1])], P).
complete_task(pull_up_carpet, P) :- 	type(CARPET1, carpet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CARPET1]), touch([CARPET1])], P).
complete_task(put_away_clean_clothes, P) :- 	type(SOAP1, soap), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SOAP1])], P).
complete_task(put_away_groceries, P) :- 	type(FRIDGE1, fridge), type(GROCERIES1, groceries), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_away_shoes, P) :- 	type(SHOES1, shoes), type(CLOSET1, closet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1, CLOSET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).
complete_task(put_away_toys, P) :- 	type(TOY2, toy), type(TOY1, toy), type(CHILD1, child), type(TOY3, toy), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(put_clothes_away, P) :- 	type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(put_dishes_away, P) :- 	type(DRINKINGGLASS1, drinkingglass), type(PLATE1, plate), type(KITCHENCABINET1, kitchencabinet), type(DISHWASHER1, dishwasher), 	transform([close([]), holds([DRINKINGGLASS1, PLATE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, DISHWASHER1]), putin([DRINKINGGLASS1, PLATE1])], P).
complete_task(put_dvds_on_shelves, P) :- 	type(RAG1, rag), type(TABLE1, tabl), type(CLEANINGBOTTLE1, cleaningbottle), type(CLEANINGSOLUTION1, cleaningsolution), type(CD1, cd), 	transform([close([]), holds([CLEANINGSOLUTION1, CD1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wipe([CD1])], P).
complete_task(put_groceries_in_fridge, P) :- 	type(FRIDGE1, fridge), type(GROCERIES1, groceries), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([FRIDGE1])], P).
complete_task(put_mail_in_mail_organizer, P) :- 	type(MAIL1, mail), type(MAIL2, mail), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[MAIL1, TABLE1], [MAIL2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_on_coat, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), 	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CLOSET1]), puton([CLOTHESSHIRT1])], P).
complete_task(put_on_foundation, P) :- 	type(MIRROR1, mirror), type(FACE1, face), type(FOUNDATION1, foundation), type(SPONGE1, sponge), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), spread([FOUNDATION1])], P).
complete_task(put_on_glasses, P) :- 	type(SPECTACLES1, spectacles), type(DRESSER1, dresser), 	transform([close([]), holds([SPECTACLES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SPECTACLES1])], P).
complete_task(put_on_purse_put_keys_and_lucky_charms_in_pockets_leave_home, P) :- 	type(PURSE1, purse), type(KEYS1, keys), type(CABINET1, cabinet), 	transform([close([]), holds([PURSE1]), sat_on([]), on_top_of([[KEYS1, PURSE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).
complete_task(put_on_your_shoes, P) :- 	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[SHOES1, FEETBOTH1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_them_to_sleep, P) :- 	type(LAMP1, lamp), type(CHAIR1, chair), type(BED1, bed), type(CHILD1, child), type(BOOK1, book), 	transform([close([]), holds([CHILD1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAMP1]), read([BOOK1])], P).
complete_task(put_toys_away, P) :- 	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(put_umbrella_away, P) :- 	type(MOPBUCKET1, mopbucket), 	transform([close([MOPBUCKET1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_up_coat, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), 	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([CLOTHESSHIRT1])], P).
complete_task(put_up_decoration, P) :- 	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_up_jacket, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), 	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([CLOTHESSHIRT1])], P).
complete_task(put_up_towel, P) :- 	type(TOWEL1, towel), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([TOWEL1])], P).
complete_task(re_arrange_office, P) :- 	type(LIGHTSWITCH1, lightswitch), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk), type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LIGHTSWITCH1]), laid_on([]), used([]), eaten([]), push([CHAIR1, FILINGCABINET1, DESK1, SOFA1])], P).
complete_task(read, P) :- 	type(CHAIR1, chair), type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(read_book, P) :- 	type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(read_news, P) :- 	type(NEWSPAPER1, newspaper), type(CHAIR1, chair), 	transform([close([]), holds([NEWSPAPER1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([NEWSPAPER1])], P).
complete_task(read_newspaper, P) :- 	type(NEWSPAPER1, newspaper), type(COUCH1, couch), 	transform([close([]), holds([NEWSPAPER1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([NEWSPAPER1])], P).
complete_task(read_on_sofa, P) :- 	type(BOOKMARK1, bookmark), type(BOOK1, book), type(SOFA1, sofa), 	transform([close([]), holds([BOOK1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(read_paper, P) :- 	type(NEWSPAPER1, newspaper), type(TABLE1, tabl), type(CHAIR1, chair), type(LIGHT1, light), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[NEWSPAPER1, TABLE1]]), inside([]), on([LIGHT1]), laid_on([]), used([]), eaten([]), fold([NEWSPAPER1]), read([NEWSPAPER1])], P).
complete_task(read_them_bedtime_story, P) :- 	type(SHEETS1, sheets), type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(BLANKET1, blanket), type(CABINET1, cabinet), 	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD1]), greet([CHILD1]), read([BOOK1])], P).
complete_task(read_to_child, P) :- 	type(CHAIR1, chair), type(CHILD1, child), type(BOOK1, book), type(CABINET1, cabinet), 	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), open([CABINET1]), pull([CHAIR1]), read([BOOK1])], P).
complete_task(read_yourself_to_sleep, P) :- 	type(BOOKMARK1, bookmark), type(BOOK1, book), type(BED1, bed), 	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([[BOOKMARK1, BOOK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1]), sleep([character1])], P).
complete_task(rearrange_photo_frames, P) :- 	type(WALL1, wall), type(PICTURE1, picture), type(WALL2, wall), type(PICTURE2, picture), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PICTURE1, WALL2], [PICTURE2, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(receive_credit_card, P) :- 	type(SCISSORS1, scissors), type(CREDITCARD1, creditcard), type(ENVELOPE1, envelope), 	transform([close([]), holds([CREDITCARD1, ENVELOPE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([ENVELOPE1])], P).
complete_task(relax, P) :- 	type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([COUCH1]), used([]), eaten([])], P).
complete_task(relax_on_sofa, P) :- 	type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(research, P) :- 	type(COMPUTER1, computer), type(DOCUMENT1, document), 	transform([close([]), holds([DOCUMENT1]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1])], P).
complete_task(scrub_face, P) :- 	type(HANDSBOTH1, handsboth), type(FAUCET1, faucet), type(FACIALCLEANSER1, facialcleanser), type(FACE1, face), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([FACIALCLEANSER1]), rinse([FACE1]), scrub([FACE1]), spread([FACIALCLEANSER1])], P).
complete_task(scrub_toilet, P) :- 	type(FAUCET1, faucet), type(CLEANINGBOTTLE1, cleaningbottle), type(TOILET1, toilet), type(BRUSH1, brush), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), off([FAUCET1]), pour([CLEANINGBOTTLE1]), scrub([TOILET1]), squeeze([CLEANINGBOTTLE1]), wash([BRUSH1])], P).
complete_task(send__email, P) :- 	type(MAIL2, mail), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MAIL1, mail), type(COMPUTER1, computer), 	transform([close([]), holds([MAIL2, MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([MAIL2, MAIL1]), type([KEYBOARD1])], P).
complete_task(sent_email, P) :- 	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), pull([CHAIR1]), write([character1])], P).
complete_task(serve_hors_doeuvres_to_entering_guests_at_cocktail_party, P) :- 	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(MAN1, man), type(PLATE1, plate), type(NAPKIN1, napkin), type(WOMAN1, woman), type(NAPKIN3, napkin), type(WOMAN2, woman), type(NAPKIN2, napkin), 	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([[FOODFOOD1, PLATE1], [NAPKIN1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1, WOMAN2])], P).
complete_task(set_mail_on_table, P) :- 	type(MAIL1, mail), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[MAIL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(set_out_some_snacks_for_toddler, P) :- 	type(FOODCARROT1, foodcarrot), type(COFFEETABLE1, tabl), type(CRACKERS1, crackers), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODCARROT1, COFFEETABLE1], [CRACKERS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(set_up_buffet_area, P) :- 	type(TABLE1, tabl), type(NAPKIN1, napkin), type(BOWL1, bowl), type(TABLECLOTH1, tablecloth), type(FORK1, fork), 	transform([close([]), holds([]), sat_on([]), on_top_of([[NAPKIN1, TABLE1], [BOWL1, TABLE1], [TABLECLOTH1, TABLE1], [FORK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(set_up_table, P) :- 	type(TABLE1, tabl), type(PLATE1, plate), type(CUP1, cup), type(CUP2, cup), type(PLATE2, plate), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [CUP1, TABLE1], [CUP2, TABLE1], [PLATE2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(settle_in, P) :- 	type(SHOES1, shoes), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(sew, P) :- 	type(CHAIR1, chair), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([CLOTHESDRESS1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).
complete_task(sew_button, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(DESK1, desk), type(NEEDLE1, needle), type(BUTTON1, button), 	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([BED1]), on_top_of([[NEEDLE1, BED1], [BUTTON1, CLOTHESSHIRT1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), sew([BUTTON1])], P).
complete_task(shampoo_hair, P) :- 	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(SHAMPOO1, shampoo), type(SINK1, sink), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([SHAMPOO1]), wash([HAIR1])], P).
complete_task(shave, P) :- 	type(RAZOR1, razor), 	transform([close([]), holds([RAZOR1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([RAZOR1]), eaten([])], P).
complete_task(shoe_removal, P) :- 	type(SHOES1, shoes), type(SHOES2, shoes), 	transform([close([SHOES1, SHOES2]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(shop, P) :- 	type(CREDITCARD1, creditcard), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[CREDITCARD1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([DESK1]), type([KEYBOARD1])], P).
complete_task(shred_receipts, P) :- 	type(FILINGCABINET1, filingcabinet), type(SHREDDER1, shredder), type(RECEIPT1, receipt), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([SHREDDER1]), laid_on([]), used([]), eaten([]), throw([RECEIPT1])], P).
complete_task(sit, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).
complete_task(sit_quietly, P) :- 	type(WALL1, wall), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(sleep, P) :- 	type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), sleep([character1])], P).
complete_task(social_media__checks, P) :- 	type(COMPUTER1, computer), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(sort_mail, P) :- 	type(MAIL1, mail), 	transform([close([]), holds([MAIL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([MAIL1]), write([MAIL1])], P).
complete_task(speaking_on_headset_in_skype_or_some_form_of_voip_for_business_call, P) :- 	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), dial([COMPUTER1]), talk([character1]), type([KEYBOARD1])], P).
complete_task(spread_table_with_appropriate_supplies, P) :- 	type(TABLE1, tabl), 	transform([close([TABLE1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(start_computer, P) :- 	type(COMPUTER1, computer), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(steam_mop_floor, P) :- 	type(FAUCET1, faucet), type(MOP1, mop), type(SINK1, sink), type(MOPBUCKET1, mopbucket), 	transform([close([]), holds([MOPBUCKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pull([MOPBUCKET1]), soak([MOP1]), squeeze([MOP1])], P).
complete_task(story_reading_time, P) :- 	type(CHILD1, child), type(BED1, bed), type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), read([BOOK1])], P).
complete_task(stretch, P) :- 	type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([LEGSBOTH1, ARMSBOTH1])], P).
complete_task(string_green_beans, P) :- 	type(TABLE1, tabl), type(PLATE1, plate), type(FOODVEGETABLE4, foodvegetable), type(BOWL1, bowl), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE5, foodvegetable), type(FOODVEGETABLE3, foodvegetable), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [FOODVEGETABLE4, BOWL1], [BOWL1, TABLE1], [FOODVEGETABLE2, BOWL1], [FOODVEGETABLE1, BOWL1], [FOODVEGETABLE5, BOWL1], [FOODVEGETABLE3, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODVEGETABLE4, FOODVEGETABLE2, FOODVEGETABLE1, FOODVEGETABLE5, FOODVEGETABLE3])], P).
complete_task(study, P) :- 	type(BOOK1, book), type(LAMP1, lamp), type(CHAIR1, chair), 	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(study_bible, P) :- 	type(BOOK1, book), type(NOTEPAD1, notepad), type(CHAIR1, chair), 	transform([close([]), holds([BOOK1, NOTEPAD1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1]), write([NOTEPAD1])], P).
complete_task(style_hair, P) :- 	type(HAIRBRUSH1, hairbrush), type(BLOWDRYER1, blowdryer), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), off([BLOWDRYER1]), plugin([BLOWDRYER1])], P).
complete_task(sweep_and_wipe_table_off_with_rag, P) :- 	type(RAG1, rag), type(TABLE1, tabl), type(CLOSET1, closet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), pull([]), push([]), putin([])], P).
complete_task(sweep_entrance_hall, P) :- 	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan), type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sweep([FLOOR1])], P).
complete_task(sweep_floor, P) :- 	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DIRT1, TRASHCAN1], [DUSTPAN1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(tabletop_game, P) :- 	type(TABLE1, tabl), type(COUCH1, couch), type(BOARDGAME1, boardgame), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOARDGAME1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([BOARDGAME1])], P).
complete_task(take_bath, P) :- 	type(FAUCET1, faucet), type(BATHTUB1, bathtub), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([BATHTUB1]), used([]), eaten([])], P).
complete_task(take_coat, P) :- 	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(HANGER1, hanger), 	transform([close([]), holds([HANGER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([HANGER1])], P).
complete_task(take_dishes_out_of_dishwasher, P) :- 	type(DISHWASHER1, dishwasher), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).
complete_task(take_jacket_off, P) :- 	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).
complete_task(take_nap, P) :- 	type(COUCH1, couch), type(BLANKET1, blanket), 	transform([close([]), holds([BLANKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([COUCH1]), used([]), eaten([]), cover([BLANKET1]), sleep([character1])], P).
complete_task(take_off_outerwear, P) :- 	type(SHOES1, shoes), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(CLOTHESHAT1, clotheshat), type(LIGHT1, light), type(HANGER1, hanger), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1], [CLOTHESHAT1, HANGER1]]), inside([]), on([LIGHT1]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1])], P).
complete_task(take_off_shoes, P) :- 	type(SHOES1, shoes), type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(take_shower, P) :- 	type(SHOWER1, shower), type(TOWEL1, towel), 	transform([close([SHOWER1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([SHOWER1]), laid_on([]), used([TOWEL1]), eaten([])], P).
complete_task(tale_off_shoes, P) :- 	type(MAT1, mat), type(SHOES1, shoes), type(CLOSET1, closet), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1]), wipe([SHOES1])], P).
complete_task(talk_on_phone, P) :- 	type(TELEPHONE1, telephone), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([TELEPHONE1])], P).
complete_task(talk_to_kids, P) :- 	type(CHILD1, child), type(CHAIR1, chair), type(CHILD2, child), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1, CHILD2])], P).
complete_task(talk_with_friends, P) :- 	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).
complete_task(talk_with_guest, P) :- 	type(MAN1, man), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).
complete_task(talk_with_your_child_about_their_day, P) :- 	type(CHILD1, child), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1])], P).
complete_task(teach_them_to_make_their_bed, P) :- 	type(PILLOW2, pillow), type(SHEETS1, sheets), type(BED1, bed), type(PILLOW1, pillow), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, BED1], [SHEETS1, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([BED1])], P).
complete_task(tell_jokes, P) :- 	type(MAN1, man), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).
complete_task(text_friends_while_sitting_on_couch, P) :- 	type(COUCH1, couch), type(CELLPHONE1, cellphone), 	transform([close([]), holds([CELLPHONE1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(thanksgiving, P) :- 	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(FOODTURKEY1, foodturkey), type(CLOTHNAPKIN1, clothnapkin), type(CENTERPIECE1, centerpiece), type(PLACEMAT1, placemat), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, TABLE1], [PLATE1, PLACEMAT1], [FOODTURKEY1, TABLE1], [CLOTHNAPKIN1, TABLE1], [CENTERPIECE1, TABLE1], [PLACEMAT1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(throw_shoes, P) :- 	type(SHOES1, shoes), type(SHOES2, shoes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([SHOES1, SHOES2])], P).
complete_task(tidy, P) :- 	type(TRASHCAN1, trashcan), type(TOY2, toy), type(TOY1, toy), type(TABLE1, tabl), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(PAPERTOWEL1, papertowel), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY1, CABINET1], [REMOTECONTROL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(toilet, P) :- 	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESPANTS1, clothespants), 	transform([close([]), holds([CLOTHESPANTS1]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([CLOTHESPANTS1]), flush([TOILET1]), off([FAUCET1]), puton([CLOTHESPANTS1]), rinse([HANDSBOTH1]), scrub([HANDSBOTH1]), standup([character1])], P).
complete_task(transcribe_what_i_say, P) :- 	type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([KEYBOARD1]), touch([KEYBOARD1]), wipe([KEYBOARD1])], P).
complete_task(try_yourself_off, P) :- 	type(ARMSBOTH1, armsboth), type(FACE1, face), type(CLOSET1, closet), type(TOWEL1, towel), type(LEGSBOTH1, legsboth), type(FEETBOTH1, feetboth), type(BASKETFORCLOTHES1, basketforclothes), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOWEL1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), wipe([ARMSBOTH1, FACE1, LEGSBOTH1, FEETBOTH1])], P).
complete_task(tuck_kids_in_bed, P) :- 	type(LIGHTSWITCH1, lightswitch), type(BED1, bed), type(CHILD1, child), type(CHILD2, child), type(BLANKET2, blanket), type(BLANKET1, blanket), type(BED2, bed), 	transform([close([]), holds([BLANKET2, BLANKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD1, CHILD2]), greet([CHILD1, CHILD2]), off([LIGHTSWITCH1])], P).
complete_task(tummy_time, P) :- 	type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(FLOOR1, mat), 	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([[CHILD1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(turking, P) :- 	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_light_off, P) :- 	type(LIGHTSWITCH1, lightswitch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTSWITCH1])], P).
complete_task(turn_night_light_on, P) :- 	type(LAMP1, lamp), type(DRESSER1, dresser), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_off_light, P) :- 	type(LIGHTSWITCH1, lightswitch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTSWITCH1])], P).
complete_task(turn_on_tv_with_remote, P) :- 	type(REMOTECONTROL1, remotecontrol), type(TABLE1, tabl), type(TELEVISION1, television), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_on_computer, P) :- 	type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_on_light, P) :- 	type(LIGHTSWITCH1, lightswitch), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LIGHTSWITCH1]), laid_on([]), used([]), eaten([])], P).
complete_task(type_up_document, P) :- 	type(COFFEECUP1, coffeecup), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer), 	transform([close([]), holds([DOCUMENT1]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), drink([COFFEECUP1]), read([DOCUMENT1]), type([KEYBOARD1])], P).
complete_task(unload_dishwasher, P) :- 	type(PLATE1, plate), type(BOWL1, bowl), type(DISHWASHER1, dishwasher), type(SPOON1, spoon), type(FORK1, fork), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1], [BOWL1, DISHWASHER1], [SPOON1, DISHWASHER1], [FORK1, DISHWASHER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).
complete_task(unload_various_items_from_pockets_and_place_them_in_bowl_on_table, P) :- 	type(TABLE1, tabl), type(BOWL1, bowl), type(CLOTHESPANTS1, clothespants), type(CELLPHONE1, cellphone), type(BILLS1, bills), 	transform([close([]), holds([CELLPHONE1, BILLS1]), sat_on([]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(update_address_book, P) :- 	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(CHAIR1, chair), type(DESK1, desk), 	transform([close([]), holds([ADDRESSBOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), read([ADDRESSBOOK1]), write([ADDRESSBOOK1])], P).
complete_task(use_bathroom, P) :- 	type(TOILET1, toilet), 	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).
complete_task(use_computer, P) :- 	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(use_restroom, P) :- 	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), wash([HANDSBOTH1]), wipe([character1])], P).
complete_task(use_toilet, P) :- 	type(TOILET1, toilet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).
complete_task(vacuum, P) :- 	type(VACUUMCLEANER1, vacuumcleaner), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([VACUUMCLEANER1]), push([VACUUMCLEANER1])], P).
complete_task(visit, P) :- 	type(CHAIR3, chair), type(WOMAN1, woman), type(CHAIR1, chair), type(CHAIR2, chair), type(WOMAN2, woman), 	transform([close([]), holds([]), sat_on([CHAIR3]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1, WOMAN2])], P).
complete_task(visit_neighbors, P) :- 	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).
complete_task(visit_with_friends_while_engaging_in_games, P) :- 	type(MAN2, man), type(TABLE1, tabl), type(BOARDGAME1, boardgame), type(MAN1, man), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOARDGAME1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN2, MAN1]), play([BOARDGAME1])], P).
complete_task(wait, P) :- 	type(WALLCLOCK1, wallclock), type(LEGSBOTH1, legsboth), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([LEGSBOTH1]), wait([character1])], P).
complete_task(wake_kids_up, P) :- 	type(CHILD1, child), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), touch([CHILD1]), wash([CHILD1])], P).
complete_task(wake_me_up, P) :- 	type(MAN1, man), type(WALLCLOCK1, wallclock), type(BED1, bed), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), squeeze([MAN1]), touch([MAN1])], P).
complete_task(wash_clothes, P) :- 	type(CLOTHESPANTS1, clothespants), type(LAUNDRYDETERGENT1, laundrydetergent), type(WASHINGMACHINE1, washingmachine), 	transform([close([]), holds([LAUNDRYDETERGENT1]), sat_on([]), on_top_of([[CLOTHESPANTS1, WASHINGMACHINE1]]), inside([]), on([WASHINGMACHINE1]), laid_on([]), used([]), eaten([]), closed([WASHINGMACHINE1]), pour([LAUNDRYDETERGENT1])], P).
complete_task(wash_dirty_dishes, P) :- 	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHRACK1], [SPONGE1, DISHRACK1], [PLATE2, DISHRACK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([DISHSOAP1]), rinse([PLATE1, SPONGE1, PLATE2]), scrub([PLATE1, PLATE2])], P).
complete_task(wash_dishes, P) :- 	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHRACK1], [SPONGE1, DISHRACK1], [PLATE2, DISHRACK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([DISHSOAP1]), rinse([PLATE1, PLATE2]), wash([PLATE1, PLATE2])], P).
complete_task(wash_face, P) :- 	type(SOAP1, soap), type(FAUCET1, faucet), type(WATER1, water), type(FACE1, face), type(SINK1, sink), 	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([SOAP1]), eaten([]), wash([FACE1])], P).
complete_task(wash_hair, P) :- 	type(SOAP1, soap), type(SHOWER1, shower), type(WATER1, water), 	transform([close([]), holds([SOAP1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1]), rinse([WATER1])], P).
complete_task(wash_hands, P) :- 	type(HANDSBOTH2, handsboth), type(FAUCET1, faucet), type(SINK1, sink), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), wash([HANDSBOTH2])], P).
complete_task(wash_sink, P) :- 	type(CLEANINGSOLUTION1, cleaningsolution), type(FAUCET1, faucet), type(SINK1, sink), 	transform([close([]), holds([CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wash([SINK1])], P).
complete_task(wash_teeth, P) :- type(Toothbrush, toothbrush), type(Toothpaste, toothpaste), type(Faucet, faucet), transform([close([]), holds([Toothbrush, Toothpaste]), sat_on([]), on_top_of([]), inside([]), on([Faucet]), laid_on([]), used([Toothpaste, Toothbrush]), eaten([])], P).
complete_task(watch_tv, P) :- 	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television), 	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), watch([TELEVISION1])], P).
complete_task(watch_fly, P) :- 	type(FLY1, fly), 	transform([close([FLY1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(watch_movie, P) :- 	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television), 	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), watch([TELEVISION1])], P).
complete_task(watch_youtube, P) :- 	type(CELLPHONE1, cellphone), 	transform([close([]), holds([CELLPHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(wave_at_people_walking_by_through_window, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(CURTAIN1, curtain), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN1]), crawl([CURTAIN1]), greet([MAN1, WOMAN1]), jump([character1])], P).
complete_task(whine, P) :- 	type(WOMAN1, woman), type(FOODDONUT1, fooddonut), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1])], P).
complete_task(wipe_down_counter, P) :- 	type(KITCHENCOUNTER1, kitchencounter), type(RAG1, rag), type(FAUCET1, faucet), type(SINK1, sink), 	transform([close([]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), rinse([RAG1]), squeeze([RAG1]), wipe([KITCHENCOUNTER1])], P).
complete_task(wipe_feet, P) :- 	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CARPET1, carpet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FEETBOTH1])], P).
complete_task(wipe_off_shoes, P) :- 	type(MAT1, mat), type(SHOES1, shoes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([SHOES1])], P).
complete_task(work, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer), 	transform([close([]), holds([KEYBOARD1, MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).
complete_task(workout, P) :- 	type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), jump([character1]), stretch([LEGSBOTH1, ARMSBOTH1])], P).
complete_task(write__school_paper, P) :- 	type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1])], P).
complete_task(write_an_email, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer), 	transform([close([]), holds([KEYBOARD1, MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(write_book, P) :- 	type(NOTEPAD1, notepad), type(PEN1, pen), type(CHAIR1, chair), 	transform([close([]), holds([NOTEPAD1, PEN1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([NOTEPAD1]), write([NOTEPAD1])], P).
complete_task(write_in_your_diary, P) :- 	type(PEN1, pen), type(SOFA1, sofa), type(DIARY1, diary), 	transform([close([]), holds([PEN1, DIARY1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DIARY1]), write([DIARY1])], P).
complete_task(write_letter, P) :- 	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(STAMP1, stamp), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[ADDRESSBOOK1, DESK1], [ENVELOPE1, DESK1], [STAMP1, ENVELOPE1], [PAPER1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([PAPER1]), open([DESK1]), write([ENVELOPE1, PAPER1])], P).
complete_task(write_research_paper, P) :- 	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(LAPTOP1, laptop), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[TEXTBOOK1, DESK1], [NOTES1, DESK1]]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), read([TEXTBOOK1, NOTES1]), type([KEYBOARD1])], P).
complete_task(write_story, P) :- 	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), pull([LAPTOP1]), type([KEYBOARD1])], P).
complete_task(write_thank_you_notes, P) :- 	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[ENVELOPE1, DESK1], [PAPER1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([PAPER1]), open([DESK1]), write([ENVELOPE1, PAPER1])], P).
complete_task(yoga, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(ARMSBOTH1, armsboth), type(CLOSET1, closet), type(MAT1, rug), type(CLOTHESPANTS1, clothespants), type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([MAT1]), used([]), eaten([]), stretch([ARMSBOTH1])], P).
complete_task(complete_school_work, P) :- 	type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil), type(NOTES1, notes), type(DESK1, desk), 	transform([close([]), holds([NOTEBOOK1, PENCIL1, NOTES1]), sat_on([CHAIR1]), on_top_of([[TEXTBOOK1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), read([TEXTBOOK1, NOTES1]), write([NOTEBOOK1])], P).
complete_task(add_paper_to_printer, P) :- 	type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([PRINTER1]), laid_on([]), used([]), eaten([]), puton([PRINTINGPAPER1])], P).
complete_task(admire_art, P) :- 	type(PAINTING1, painting), 	transform([close([PAINTING1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(answer_door, P) :- 	type(MAN1, man), 	transform([close([MAN1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).
complete_task(answer_emails, P) :- 	type(CHAIR1, chair), type(LAPTOP1, laptop), type(MAIL1, mail), type(KEYBOARD1, keyboard), 	transform([close([]), holds([MAIL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAPTOP1]), read([MAIL1]), type([KEYBOARD1])], P).
complete_task(answer_phone, P) :- 	type(PHONE1, phone), type(COUCH1, couch), 	transform([close([]), holds([PHONE1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), standup([character1]), talk([character1])], P).
complete_task(arrange_furniture, P) :- 	type(COUCH1, couch), type(COUCH2, couch), type(COFFEETABLE1, coffeetable), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([COUCH1, COUCH2, COFFEETABLE1, CABINET1])], P).
complete_task(arrange_shoes, P) :- 	type(SHOES4, shoes), type(SHOES2, shoes), type(SHOES3, shoes), type(SHOES1, shoes), type(SHOES5, shoes), type(SHOERACK1, shoerack), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([SHOERACK1]), drop([SHOES4, SHOES2, SHOES3, SHOES1, SHOES5])], P).
complete_task(arrange_sofa, P) :- 	type(PILLOW2, pillow), type(BLANKET1, blanket), type(PILLOW1, pillow), type(SOFA1, sofa), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BLANKET1, SOFA1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(brew_coffee, P) :- 	type(TABLE1, tabl), type(GROUNDCOFFEE1, groundcoffee), type(COFFEECUP1, coffeecup), type(KITCHENCABINET1, kitchencabinet), type(COFFEEFILTER1, coffeefilter), type(COFFEE1, coffee), type(SINK1, sink), type(FAUCET1, faucet), type(COFFEMAKER1, coffemaker), 	transform([close([]), holds([]), sat_on([]), on_top_of([[COFFEECUP1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([COFFEMAKER1]), pour([COFFEE1])], P).
complete_task(bring_leftovers_in_kitchen, P) :- 	type(BOWL2, bowl), type(TABLE1, tabl), type(FRIDGE1, fridge), type(BOWL1, bowl), 	transform([close([]), holds([BOWL2, BOWL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), putin([BOWL2, BOWL1])], P).
complete_task(bring_me_red_cookbook, P) :- 	type(BOOK1, book), type(BOOKSHELF1, bookshelf), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(build_lego_house, P) :- 	type(BOARDGAME1, boardgame), type(BED1, tabl), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOARDGAME1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([character1])], P).
complete_task(call_client, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(TELEPHONE1, telephone), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), speak([character1])], P).
complete_task(call_family_member_with_skype_application, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse), 	transform([close([]), holds([MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(call_mother, P) :- 	type(CHAIR1, chair), type(WOMAN1, woman), type(TELEPHONE1, telephone), 	transform([close([]), holds([TELEPHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), greet([WOMAN1])], P).
complete_task(card, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(POT1, pot), type(CARDS1, cards), type(PEN1, pen), 	transform([close([]), holds([CARDS1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1]), write([CARDS1])], P).
complete_task(care_for_houseplants, P) :- 	type(WATER1, water), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).
complete_task(carry_groceries_to_kitchen, P) :- 	type(TABLE1, tabl), type(SHOES1, shoes), type(GROCERIES1, groceries), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(change_tv_channels, P) :- 	type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), 	transform([close([]), holds([REMOTECONTROL1]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([])], P).
complete_task(change_bedding, P) :- 	type(SHEETS2, sheets), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET2, blanket), type(BLANKET1, blanket), 	transform([close([SHEETS2, BED1, CLOSET1, BLANKET2]), holds([SHEETS2, BLANKET2]), sat_on([]), on_top_of([[SHEETS1, BASKETFORCLOTHES1], [BLANKET1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), cover([BED1])], P).
complete_task(change_sheets_and_pillow_cases, P) :- 	type(PILLOW1, pillow), 	transform([close([]), holds([PILLOW1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(change_sheets_on_bed, P) :- 	type(SHEETS2, sheets), type(SHEETS1, sheets), type(BED1, bed), 	transform([close([]), holds([SHEETS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([BED1]), fold([SHEETS2])], P).
complete_task(change_shower_curtain, P) :- 	type(CURTAIN1, curtain), type(SHOWER1, shower), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CURTAIN1]), sew([CURTAIN1])], P).
complete_task(change_toilet_paper_roll, P) :- 	type(TRASHCAN1, trashcan), type(TOILETPAPER2, toiletpaper), type(TOILETPAPER1, toiletpaper), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([TOILETPAPER1])], P).
complete_task(check_appearance_in_mirror, P) :- 	type(MIRROR1, mirror), 	transform([close([MIRROR1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(clean_glasses, P) :- 	type(DISHSOAP1, dishsoap), type(DISHRACK1, dishrack), type(WINEGLASS2, wineglass), type(SINK1, sink), type(FAUCET1, faucet), type(SPONGE1, sponge), type(WINEGLASS1, wineglass), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([DISHSOAP1]), wash([WINEGLASS2, WINEGLASS1])], P).
complete_task(clean_large_jacuzzi_tub, P) :- 	type(BATHTUB1, bathtub), type(BRUSH1, brush), type(FAUCET1, faucet), type(CLEANINGSOLUTION1, cleaningsolution), 	transform([close([]), holds([BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([CLEANINGSOLUTION1]), rinse([BATHTUB1, BRUSH1]), scrub([BATHTUB1])], P).
complete_task(clean_screen, P) :- 	type(RAG1, rag), type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([COMPUTER1])], P).
complete_task(close_curtains, P) :- 	type(CURTAIN2, curtain), type(CURTAIN1, curtain), type(COUCH1, couch), type(CURTAIN3, curtain), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN2, CURTAIN1, CURTAIN3]), pull([CURTAIN2, CURTAIN1, CURTAIN3])], P).
complete_task(close_shower_curtain, P) :- 	type(CURTAIN1, curtain), type(SHOWER1, shower), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN1]), pull([CURTAIN1])], P).
complete_task(collect_napkin_rings, P) :- 	type(BASKETFORCLOTHES1, basketforclothes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([BASKETFORCLOTHES1])], P).
complete_task(color, P) :- 	type(CRAYON1, crayon), type(DESK1, desk), type(DRAWING1, drawing), type(BOOK1, book), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([DRAWING1])], P).
complete_task(come_home, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(complete_surveys_on_amazon_turk, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(MOUSE1, mouse), 	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1]), type([KEYBOARD1])], P).
complete_task(comput, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(computer_work, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(cut_bread, P) :- 	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODBREAD1])], P).
complete_task(cut_toenails, P) :- 	type(TRASHCAN1, trashcan), type(BED1, bed), type(DRESSER1, dresser), type(FEETBOTH1, feetboth), type(TOWEL1, towel), 	transform([close([]), holds([TOWEL1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([TOWEL1]), shake([TOWEL1]), standup([character1]), unfold([TOWEL1])], P).
complete_task(cutting, P) :- 	type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE2, foodvegetable), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, CUTTINGBOARD1], [FOODVEGETABLE2, CUTTINGBOARD1], [CUTTINGBOARD1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODVEGETABLE1, FOODVEGETABLE2])], P).
complete_task(dance_for_table_as_we_eat, P) :- 	type(RADIO1, radio), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1])], P).
complete_task(dewrinkle_sheet, P) :- 	type(BED1, bed), type(COMFORTER1, comforter), type(BASKETFORCLOTHES1, basketforclothes), type(SHEETS1, sheets), type(BLANKET1, blanket), 	transform([close([]), holds([]), sat_on([]), on_top_of([[COMFORTER1, BASKETFORCLOTHES1], [BLANKET1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([SHEETS1]), touch([SHEETS1])], P).
complete_task(designing_crafts_with_family, P) :- 	type(CHILD2, child), type(CRAYON1, crayon), type(TABLE1, tabl), type(CHAIR1, chair), type(DRAWING1, drawing), type(CHILD1, child), type(SCISSORS1, scissors), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DRAWING1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), cut([DRAWING1]), fold([DRAWING1]), greet([CHILD2, CHILD1]), unfold([DRAWING1]), unwrap([CRAYON1]), write([DRAWING1])], P).
complete_task(do_freestyle_dance_routine, P) :- 	type(RADIO1, radio), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dance([character1]), plugin([RADIO1])], P).
complete_task(do_work, P) :- 	type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).
complete_task(do_work_on_computer, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(do_yoga, P) :- 	type(CARPET1, carpet), type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(RADIO1, radio), type(MAT1, mat), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([CARPET1]), used([]), eaten([]), stretch([ARMSBOTH1, LEGSBOTH1])], P).
complete_task(dry_soap_bottles, P) :- 	type(SHAMPOO1, shampoo), type(SHAMPOO2, shampoo), type(SOAP1, soap), type(TOWEL1, towel), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([SHAMPOO1, SHAMPOO2, SOAP1])], P).
complete_task(eat_ice_cream, P) :- 	type(SPOON1, spoon), type(TABLE1, tabl), type(FOODICECREAM1, foodicecream), type(CHAIR1, chair), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl), type(FREEZER1, freezer), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[SPOON1, TABLE1], [BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1])], P).
complete_task(eat_while_watching_tv, P) :- 	type(PLATE1, plate), type(FOODFOOD1, foodfood), type(COOKINGPOT1, cookingpot), type(TELEVISION1, television), type(COUCH1, couch), type(STOVE1, stove), type(CUPBOARD1, cupboard), type(REMOTECONTROL1, remotecontrol), 	transform([close([]), holds([PLATE1]), sat_on([COUCH1]), on_top_of([[FOODFOOD1, PLATE1]]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([PLATE1]), closed([CUPBOARD1]), uncover([COOKINGPOT1]), watch([TELEVISION1])], P).
complete_task(enter_home, P) :- 	type(WOMAN1, woman), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1]), standup([character1])], P).
complete_task(fan_magazines_on_coffee_table, P) :- 	type(COFFEE1, coffee), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([COFFEE1]), stir([COFFEE1])], P).
complete_task(feed_dog, P) :- 	type(FLOOR1, floor), type(DOG1, dog), type(FOODFOOD1, foodfood), type(BOWL1, bowl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([FOODFOOD1]), touch([DOG1])], P).
complete_task(find_dictionary, P) :- 	type(BOOKSHELF1, bookshelf), type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(fix_bowl_of_cereal, P) :- 	type(TABLE1, tabl), type(MILK1, milk), type(FOODCEREAL1, foodcereal), type(FRIDGE1, fridge), type(BOWL1, bowl), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1, FOODCEREAL1])], P).
complete_task(fix_sandwich, P) :- 	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese), type(FOODBREAD2, foodbread), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, PLATE1], [FOODCHEESE1, PLATE1], [FOODBREAD2, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), spread([FOODCHEESE1])], P).
complete_task(fix_snack, P) :- 	type(PLATE1, plate), type(FOODVEGETABLE1, foodvegetable), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCARROT1, foodcarrot), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, PLATE1], [FOODCARROT1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(gaze_out_window, P) :- 	type(WINDOW1, window), 	transform([close([WINDOW1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(get_in_way_of_guests_trying_to_leave, P) :- 	type(MAN1, man), type(WOMAN1, woman), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([MAN1, WOMAN1]), dance([character1]), jump([character1]), pull([MAN1, WOMAN1])], P).
complete_task(get_mail_ready, P) :- 	type(STAMP1, stamp), type(DESK1, desk), type(MAIL1, mail), type(ENVELOPE1, envelope), 	transform([close([]), holds([]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [MAIL1, ENVELOPE1], [ENVELOPE1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([MAIL1]), open([DESK1])], P).
complete_task(get_ready_for_bed, P) :- 	type(LIGHT1, light), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PAJAMAS1, pajamas), 	transform([close([]), holds([PAJAMAS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), off([LIGHT1]), puton([PAJAMAS1])], P).
complete_task(get_ready_for_day, P) :- 	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PURSE1, purse), type(SHOES1, shoes), 	transform([close([]), holds([CLOTHESDRESS1, PURSE1, SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESDRESS1, SHOES1])], P).
complete_task(get_ready_for_school, P) :- 	type(CLOTHESDRESS1, clothesdress), type(DRESSER1, dresser), 	transform([close([]), holds([CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DRESSER1]), puton([CLOTHESDRESS1])], P).
complete_task(get_ready_to_leave, P) :- 	type(KEYS1, keys), type(SHOES1, shoes), 	transform([close([]), holds([KEYS1, SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).
complete_task(get_something_to_drink, P) :- 	type(MILK1, milk), type(GLASS1, glass), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([GLASS1]), pour([MILK1])], P).
complete_task(give_children_bath, P) :- 	type(BED1, bed), type(CHILD1, child), type(TOWEL1, towel), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD1]), wash([CHILD1])], P).
complete_task(give_me_bath, P) :- 	type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(SOAP1, soap), type(FACE1, face), type(FEETBOTH1, feetboth), type(FAUCET1, faucet), type(SHOWER1, shower), type(TOWEL1, towel), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1]), off([FAUCET1]), rinse([ARMSBOTH1, LEGSBOTH1, FEETBOTH1]), scrub([ARMSBOTH1, LEGSBOTH1, FEETBOTH1]), wash([FACE1]), wipe([ARMSBOTH1, LEGSBOTH1, FACE1, FEETBOTH1])], P).
complete_task(give_your_child_bath, P) :- 	type(BATHTUB1, bathtub), type(FLOOR1, floor), type(SOAP1, soap), type(CHILD1, child), type(FAUCET1, faucet), type(TOWEL1, towel), 	transform([close([]), holds([TOWEL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), scrub([CHILD1])], P).
complete_task(go_to_bathroom, P) :- 	type(TOILET1, toilet), type(SOAP1, soap), type(HANDSBOTH1, handsboth), type(CLOTHESDRESS1, clothesdress), type(SINK1, sink), type(TOILETPAPER1, toiletpaper), type(FAUCET1, faucet), 	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), wash([HANDSBOTH1])], P).
complete_task(grab_some_juice, P) :- 	type(TABLE1, tabl), type(GLASS1, glass), type(FRIDGE1, fridge), type(JUICE1, juice), type(CUPBOARD1, cupboard), 	transform([close([]), holds([JUICE1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([JUICE1])], P).
complete_task(grab_things, P) :- 	type(BOOK1, book), 	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hang_car_keys, P) :- 	type(HANGER1, hanger), type(TABLE1, tabl), type(WALL1, wall), type(KEYS1, keys), 	transform([close([]), holds([]), sat_on([]), on_top_of([[KEYS1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hang_keys, P) :- 	type(DRESSER1, dresser), type(PURSE1, purse), type(BOWL1, bowl), type(KEYS1, keys), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PURSE1, BOWL1], [KEYS1, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).
complete_task(hang_pictures, P) :- 	type(WALL1, wall), type(DRAWING1, drawing), type(PAINTING1, painting), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAINTING1, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hang_up_car_keys, P) :- 	type(PURSE1, purse), type(KEYS1, keys), 	transform([close([]), holds([KEYS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).
complete_task(hang_up_poster, P) :- 	type(PAPER1, paper), type(WALL1, wall), type(TAPE1, tape), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPER1, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), break([TAPE1]), pull([TAPE1]), push([PAPER1])], P).
complete_task(have_dinner, P) :- 	type(FORK1, fork), type(PLATE1, plate), type(NAPKIN1, napkin), type(TABLE1, tabl), type(CHAIR1, chair), type(FOODFOOD1, foodfood), type(CUPBOARD1, cupboard), 	transform([close([]), holds([FORK1]), sat_on([CHAIR1]), on_top_of([[PLATE1, TABLE1], [NAPKIN1, TABLE1], [FOODFOOD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), closed([CUPBOARD1])], P).
complete_task(have_ice_coffee, P) :- 	type(CUP1, cup), type(SPOON1, spoon), type(TABLE1, tabl), type(CHAIR1, chair), type(COFFEEPOT1, coffeepot), type(KITCHENCABINET1, kitchencabinet), type(COFFEE1, coffee), type(FRIDGE1, fridge), type(COFFEMAKER1, coffemaker), type(ICE1, ice), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CUP1, TABLE1], [SPOON1, TABLE1], [ICE1, CUP1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([CUP1]), pour([COFFEE1]), stir([COFFEE1])], P).
complete_task(have_party, P) :- 	type(MAN1, man), type(MAN2, man), type(RADIO1, radio), type(WOMAN1, woman), type(WINEGLASS1, wineglass), type(WOMAN2, woman), 	transform([close([]), holds([WINEGLASS1]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1]), drink([WINEGLASS1]), greet([MAN1, MAN2, WOMAN1, WOMAN2])], P).
complete_task(have_tea_party, P) :- 	type(CHILD2, child), type(CUP1, cup), type(SPOON1, spoon), type(CHAIR1, chair), type(TEA1, tea), type(CHILD1, child), type(POT1, pot), type(FOODSUGAR1, foodsugar), 	transform([close([]), holds([CUP1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([CUP1]), greet([CHILD2, CHILD1]), pour([TEA1, FOODSUGAR1]), stir([TEA1])], P).
complete_task(help_kids_with_homework, P) :- 	type(CHILD2, child), type(NOTEBOOK1, notebook), type(TABLE1, tabl), type(CHILD1, child), type(BOOK2, book), type(PENCIL1, pencil), type(BOOK1, book), type(NOTEBOOK2, notebook), 	transform([close([]), holds([]), sat_on([]), on_top_of([[NOTEBOOK1, TABLE1], [BOOK2, TABLE1], [PENCIL1, TABLE1], [BOOK1, TABLE1], [NOTEBOOK2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD2, CHILD1]), read([BOOK2, BOOK1]), write([NOTEBOOK1, NOTEBOOK2])], P).
complete_task(help_with_quiz_shows, P) :- 	type(PAPER1, paper), 	transform([close([]), holds([PAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(hold_coats_and_umbrellas, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(CLOTHESJACKET2, clothesjacket), type(CLOTHESJACKET1, clothesjacket), 	transform([close([]), holds([CLOTHESJACKET2, CLOTHESJACKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dance([character1]), greet([MAN1, WOMAN1])], P).
complete_task(juggling, P) :- 	type(COMPUTER1, computer), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), touch([COMPUTER1]), watch([COMPUTER1])], P).
complete_task(keep_cats_out_of_room, P) :- 	type(CAT1, cat), type(CAT2, cat), 	transform([close([CAT1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(leave_home, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).
complete_task(light_candle, P) :- 	type(LIGHTER1, lighter), type(CANDLE1, candle), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CANDLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTER1])], P).
complete_task(light_candles, P) :- 	type(LAMP2, lamp), type(LAMP1, lamp), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP2, LAMP1]), laid_on([]), used([]), eaten([])], P).
complete_task(look_at_mirror, P) :- 	type(MIRROR1, mirror), 	transform([close([MIRROR1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(look_at_painting, P) :- 	type(PAINTING1, painting), 	transform([close([PAINTING1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(make_banana_bread, P) :- 	type(TABLE1, tabl), type(FOODBANANA1, foodbanana), type(TRAY1, tray), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(BOWL1, bowl), type(DOUGH1, dough), type(OVEN1, oven), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBANANA1, BOWL1], [BOWL1, TABLE1], [DOUGH1, TRAY1]]), inside([]), on([OVEN1]), laid_on([]), used([]), eaten([]), open([OVEN1]), putin([TRAY1]), spread([DOUGH1])], P).
complete_task(make_iced_coffee, P) :- 	type(SPOON1, spoon), type(TABLE1, tabl), type(MILK1, milk), type(COFFEE1, coffee), type(GLASS1, glass), type(FOODSUGAR1, foodsugar), type(ICE1, ice), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SPOON1, GLASS1], [COFFEE1, GLASS1], [FOODSUGAR1, GLASS1], [ICE1, GLASS1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1, COFFEE1, FOODSUGAR1]), stir([COFFEE1])], P).
complete_task(make_kids_bed, P) :- 	type(BED1, bed), type(COMFORTER1, comforter), type(PILLOW2, pillow), type(CLOSET1, closet), type(SHEETS1, sheets), type(PILLOW1, pillow), 	transform([close([]), holds([]), sat_on([]), on_top_of([[COMFORTER1, BED1], [PILLOW2, BED1], [SHEETS1, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), cover([BED1]), unfold([SHEETS1])], P).
complete_task(make_peanut_butter_sandwich, P) :- 	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, PLATE1], [PLATE1, TABLE1], [KNIFE1, PLATE1], [FOODPEANUTBUTTER1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([KNIFE1]), spread([FOODPEANUTBUTTER1])], P).
complete_task(make_phone_call, P) :- 	type(CHAIR1, chair), type(TELEPHONE1, telephone), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([TELEPHONE1])], P).
complete_task(make_place_cards, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(PAPER2, paper), type(PAPER1, paper), type(PEN1, pen), type(PAPER3, paper), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPER2, TABLE1], [PAPER1, TABLE1], [PEN1, TABLE1], [PAPER3, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([PAPER2, PAPER1, PAPER3])], P).
complete_task(make_popcorn, P) :- 	type(FOODFOOD1, foodfood), type(MICROWAVE1, microwave), 	transform([close([]), holds([FOODFOOD1]), sat_on([]), on_top_of([]), inside([]), on([MICROWAVE1]), laid_on([]), used([]), eaten([]), closed([MICROWAVE1]), putin([FOODFOOD1])], P).
complete_task(make_tomato_sauce, P) :- 	type(SPOON1, spoon), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(COOKINGPOT1, cookingpot), type(FOODFOOD1, foodfood), type(STOVE1, stove), 	transform([close([]), holds([SPOON1]), sat_on([]), on_top_of([[COOKINGPOT1, STOVE1]]), inside([]), on([STOVE1]), laid_on([]), used([]), eaten([])], P).
complete_task(make_tutu, P) :- 	type(GLUE1, glue), type(BED1, bed), type(CABINET1, cabinet), type(PAPER1, paper), type(SCISSORS1, scissors), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([PAPER1]), fold([PAPER1])], P).
complete_task(make_up_bed_for_guest_on_couch, P) :- 	type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET1, blanket), type(COUCH1, couch), type(PILLOW1, pillow), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SHEETS1, COUCH1], [BLANKET1, COUCH1], [PILLOW1, COUCH1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([COUCH1])], P).
complete_task(manage_documents, P) :- 	type(DOCUMENT1, document), type(FOLDER1, folder), type(FOLDER2, folder), type(FOLDER3, folder), type(DOCUMENT2, document), type(FILINGCABINET1, filingcabinet), type(DOCUMENT3, document), 	transform([close([]), holds([DOCUMENT1, FOLDER1, FOLDER2, FOLDER3, DOCUMENT2, DOCUMENT3]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FOLDER1, FOLDER2, FOLDER3]), open([FILINGCABINET1]), putin([DOCUMENT1, FOLDER1, FOLDER2, FOLDER3, DOCUMENT2, DOCUMENT3])], P).
complete_task(manage_emails, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(MAIL1, mail), type(KEYBOARD1, keyboard), 	transform([close([]), holds([MAIL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), read([MAIL1]), type([KEYBOARD1])], P).
complete_task(oil_dining_room, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wipe([CHAIR1, CABINET1])], P).
complete_task(open_bathroom_window, P) :- 	type(WINDOW1, window), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([WINDOW1])], P).
complete_task(open_door_and_great_guests, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1, CHILD1]), jump([character1]), run([])], P).
complete_task(open_window, P) :- 	type(WINDOW1, window), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([WINDOW1])], P).
complete_task(order_office_suplies, P) :- 	type(CHAIR1, chair), type(COMPUTER1, computer), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([NOTEPAD1]), type([KEYBOARD1]), write([NOTEPAD1])], P).
complete_task(organize_files, P) :- 	type(DESK1, desk), type(FOLDER1, folder), type(FOLDER2, folder), type(FILINGCABINET1, filingcabinet), 	transform([close([]), holds([FOLDER1, FOLDER2]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([FILINGCABINET1]), putin([FOLDER1, FOLDER2])], P).
complete_task(organize_pantry, P) :- 	type(PANTRY1, pantry), type(DRYPASTA1, drypasta), type(FOODVEGETABLE1, foodvegetable), type(GARBAGECAN1, garbagecan), type(FOODFOOD1, foodfood), type(FOODNOODLES1, foodnoodles), type(CRACKERS1, crackers), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, PANTRY1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(paint_ceiling, P) :- 	type(PAINTING1, painting), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([PAINTING1]), watch([PAINTING1])], P).
complete_task(peel_kiwi, P) :- 	type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODKIWI1, foodkiwi), 	transform([close([]), holds([]), sat_on([]), on_top_of([[KNIFE1, TABLE1], [CUTTINGBOARD1, TABLE1], [FOODKIWI1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODKIWI1])], P).
complete_task(peel_potatoes, P) :- 	type(KNIFE1, knife), type(TABLE1, tabl), type(FOODPOTATO2, foodpotato), type(FRIDGE1, fridge), type(FOODPOTATO1, foodpotato), type(BOWL1, bowl), type(CUPBOARD1, cupboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[KNIFE1, BOWL1], [FOODPOTATO1, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODPOTATO2])], P).
complete_task(pick_toys, P) :- 	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CLOSET1, closet), type(TOY4, toy), 	transform([close([]), holds([TOY2, TOY1, TOY3, TOY4]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([TOY2, TOY1, TOY3, TOY4])], P).
complete_task(pick_up_all_trash, P) :- 	type(NAPKIN1, napkin), type(PAPERTOWEL1, papertowel), type(TRASHCAN1, trashcan), 	transform([close([]), holds([]), sat_on([]), on_top_of([[NAPKIN1, TRASHCAN1], [PAPERTOWEL1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(pick_up_cat_hair, P) :- 	type(CAT1, cat), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CAT1]), run([])], P).
complete_task(pick_up_dishes, P) :- 	type(PLATE1, plate), type(TABLE1, tabl), type(GLASS2, glass), type(PLATE2, plate), type(GLASS1, glass), type(SINK1, sink), 	transform([close([]), holds([PLATE1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(pick_up_spare_change_on_dresser, P) :- 	type(CUP1, cup), type(COIN1, coin), type(DRESSER1, dresser), type(COIN3, coin), type(COIN2, coin), 	transform([close([]), holds([]), sat_on([]), on_top_of([[COIN1, CUP1], [COIN3, CUP1], [COIN2, CUP1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(place_bathmat, P) :- 	type(BATHTUB1, bathtub), type(MAT1, mat), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([MAT1])], P).
complete_task(place_centerpiece, P) :- 	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl), 	transform([close([]), holds([CENTERPIECE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CENTERPIECE1])], P).
complete_task(place_table, P) :- 	type(TABLE1, tabl), type(FLOOR1, floor), type(CENTERPIECE1, centerpiece), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).
complete_task(play_fetch_with_dog, P) :- 	type(TOY1, toy), type(DOG1, dog), type(COUCH1, couch), 	transform([close([]), holds([TOY1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([TOY1])], P).
complete_task(play_on_laptop, P) :- 	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAPTOP1]), type([KEYBOARD1])], P).
complete_task(play_piano, P) :- 	type(INSTRUMENTPIANO1, instrumentpiano), type(PIANOBENCH1, pianobench), 	transform([close([]), holds([]), sat_on([PIANOBENCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([character1]), touch([INSTRUMENTPIANO1])], P).
complete_task(play_with_toys, P) :- 	type(BED1, bed), type(TOY1, toy), type(CABINET1, cabinet), 	transform([close([]), holds([TOY1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), shake([TOY1])], P).
complete_task(playtime_lunch_with_dolls, P) :- 	type(MUG2, mug), type(PLATE1, plate), type(TABLE1, tabl), type(CHAIR1, chair), type(TOY1, toy), type(MUG3, mug), type(PLATE3, plate), type(TOY2, toy), type(PLATE2, plate), type(CHAIR3, chair), type(MUG1, mug), type(FOODFOOD1, foodfood), type(POT1, pot), type(CHAIR2, chair), 	transform([close([]), holds([]), sat_on([]), on_top_of([[MUG1, TABLE1], [PLATE1, TABLE1], [TOY1, CHAIR1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(plug_in_nightlight, P) :- 	type(LIGHT1, light), type(DRESSER1, dresser), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([LIGHT1])], P).
complete_task(polish_table, P) :- 	type(TRASHCAN1, trashcan), type(TABLE1, tabl), type(PAPERTOWEL1, papertowel), type(CLEANINGBOTTLE1, cleaningbottle), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPERTOWEL1, TRASHCAN1], [CLEANINGBOTTLE1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGBOTTLE1]), squeeze([CLEANINGBOTTLE1])], P).
complete_task(polish_tea_pot, P) :- 	type(POT1, pot), type(CLEANINGBOTTLE1, cleaningbottle), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution), 	transform([close([]), holds([POT1, CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), squeeze([CLEANINGBOTTLE1]), wipe([POT1])], P).
complete_task(pour_cup_of_coffee, P) :- 	type(COFFEEPOT1, coffeepot), type(COFFEECUP1, coffeecup), type(COFFEE1, coffee), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([COFFEE1])], P).
complete_task(praying, P) :- 	type(EYESBOTH1, eyesboth), type(MAN1, man), type(CHILD1, child), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([EYESBOTH1]), greet([MAN1, CHILD1]), touch([MAN1, CHILD1])], P).
complete_task(print_out_document, P) :- 	type(PRINTINGPAPER1, printingpaper), type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(PRINTER1, printer), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[PRINTINGPAPER1, PRINTER1], [DOCUMENT1, PRINTER1]]), inside([]), on([COMPUTER1, PRINTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1]), standup([character1]), type([KEYBOARD1])], P).
complete_task(push_all_chairs_in, P) :- 	type(TABLE1, tabl), type(CHAIR1, chair), type(CHAIR3, chair), type(CHAIR4, chair), type(CHAIR2, chair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1, CHAIR3, CHAIR4, CHAIR2])], P).
complete_task(push_in_desk_chair, P) :- 	type(DESK1, desk), type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1]), touch([CHAIR1])], P).
complete_task(push_in_dining_room_chair, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1]), standup([character1]), touch([CHAIR1])], P).
complete_task(put_alarm_clock_in_bedroom, P) :- 	type(ALARMCLOCK1, alarmclock), type(DRESSER1, dresser), 	transform([close([]), holds([]), sat_on([]), on_top_of([[ALARMCLOCK1, DRESSER1]]), inside([]), on([ALARMCLOCK1]), laid_on([]), used([]), eaten([]), open([DRESSER1])], P).
complete_task(put_away_blankets, P) :- 	type(BASKETFORCLOTHES1, basketforclothes), type(BLANKET1, blanket), type(BLANKET2, blanket), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BLANKET1, BASKETFORCLOTHES1], [BLANKET2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([BLANKET1, BLANKET2])], P).
complete_task(put_away_clothes, P) :- 	type(CLOTHESDRESS2, clothesdress), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESDRESS1, clothesdress), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESDRESS2, CABINET1], [CLOTHESDRESS1, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), fold([CLOTHESDRESS2, CLOTHESDRESS1])], P).
complete_task(put_away_dishes, P) :- 	type(PLATE1, plate), type(CUP1, cup), type(PLATE2, plate), type(DISHWASHER1, dishwasher), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1, KITCHENCABINET1]), putin([PLATE1, CUP1, PLATE2, BOWL1])], P).
complete_task(put_away_jackets, P) :- 	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), 	transform([close([]), holds([HANGER1]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([HANGER1])], P).
complete_task(put_away_keys, P) :- 	type(BAG1, bag), type(KEYS1, keys), 	transform([close([]), holds([]), sat_on([]), on_top_of([[KEYS1, BAG1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([BAG1])], P).
complete_task(put_down_bags, P) :- 	type(GROCERIES1, groceries), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_in_chair, P) :- 	type(CHAIR1, chair), type(FLOOR1, floor), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CHAIR1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_mail_away, P) :- 	type(DESK1, desk), type(MAIL1, mail), type(MAIL2, mail), type(COFFEETABLE1, coffeetable), type(MAIL4, mail), type(MAIL3, mail), 	transform([close([DESK1, MAIL1, MAIL2, COFFEETABLE1, MAIL4, MAIL3]), holds([]), sat_on([]), on_top_of([[MAIL1, COFFEETABLE1], [MAIL2, COFFEETABLE1], [MAIL4, COFFEETABLE1], [MAIL3, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1])], P).
complete_task(put_on_coat_and_shoes, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).
complete_task(put_out_flowers, P) :- 	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(put_shoes_and_coats, P) :- 	type(SHOES1, shoes), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).
complete_task(put_shoes_in_shoe_rack, P) :- 	type(CLOSET1, closet), type(SHOES1, shoes), 	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1])], P).
complete_task(put_slippers_in_closet, P) :- 	type(SHOES1, shoes), type(CLOSET1, closet), type(SHOES2, shoes), 	transform([close([]), holds([SHOES1, SHOES2]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1, SHOES2])], P).
complete_task(put_up_feet, P) :- 	type(COFFEETABLE1, coffeetable), type(FEETBOTH1, feetboth), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sleep([character1])], P).
complete_task(put_washed_clothes_in_almirah, P) :- 	type(HANGER1, hanger), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([HANGER1]), wipe([HANGER1])], P).
complete_task(rain_welcome, P) :- 	type(TOWEL1, towel), type(FACE1, face), type(HAIR1, hair), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FACE1, HAIR1])], P).
complete_task(raise_blinds, P) :- 	type(CURTAIN2, curtain), type(CURTAIN1, curtain), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CURTAIN2, CURTAIN1]), pull([CURTAIN2, CURTAIN1])], P).
complete_task(read_magazine, P) :- 	type(MAGAZINE1, magazine), 	transform([close([]), holds([MAGAZINE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([MAGAZINE1])], P).
complete_task(read_text_message, P) :- 	type(CELLPHONE1, cellphone), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), text([CELLPHONE1])], P).
complete_task(recycle_items, P) :- 	type(PLATE1, plate), type(NAPKIN1, napkin), type(TRASHCAN1, trashcan), type(PAPERTOWEL1, papertowel), type(PLATE2, plate), type(NAPKIN2, napkin), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TRASHCAN1], [NAPKIN1, TRASHCAN1], [PAPERTOWEL1, TRASHCAN1], [PLATE2, TRASHCAN1], [NAPKIN2, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TRASHCAN1])], P).
complete_task(replace_towel, P) :- 	type(BASKETFORCLOTHES1, basketforclothes), type(TOWEL1, towel), 	transform([close([]), holds([]), sat_on([]), on_top_of([[TOWEL1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(restock, P) :- 	type(BATHTUB1, bathtub), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([BATHTUB1])], P).
complete_task(return_from_store, P) :- 	type(HANGER1, hanger), type(CLOTHESHAT1, clotheshat), type(TABLE1, tabl), type(PURSE1, purse), type(KEYS1, keys), type(CLOTHESJACKET1, clothesjacket), 	transform([close([]), holds([]), sat_on([]), on_top_of([[KEYS1, TABLE1], [CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(return_phone_calls, P) :- 	type(TELEPHONE1, telephone), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([character1])], P).
complete_task(rotate_stock_in_refrigerator, P) :- 	type(FOODBREAD1, foodbread), type(FOODVEGETABLE1, foodvegetable), type(FOODCHEESE2, foodcheese), type(FOODDESSERT1, fooddessert), type(MILK1, milk), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, GARBAGECAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(say_goodbye, P) :- 	type(MAN1, man), 	transform([close([MAN1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), leave([]), touch([MAN1])], P).
complete_task(say_goodbye_to_guests_leaving, P) :- 	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([MAN1, WOMAN1, CHILD1])], P).
complete_task(scrub_bottom_of_feet, P) :- 	type(SHOWER1, shower), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1])], P).
complete_task(scrubbing_living_room_tile_floor_is_once_week_activity_for_me, P) :- 	type(MOP1, mop), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([MOP1])], P).
complete_task(serve_cookies, P) :- 	type(PLATE1, plate), type(TABLE1, tabl), type(CUPBOARD1, cupboard), type(CRACKERS1, crackers), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [CRACKERS1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CUPBOARD1]), unwrap([CRACKERS1])], P).
complete_task(serve_food, P) :- 	type(PLATE1, plate), type(SPOON1, spoon), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood), 	transform([close([]), holds([]), sat_on([]), on_top_of([[SPOON1, PLATE1], [FOODFOOD1, PLATE3]]), inside([]), on([]), laid_on([]), used([]), eaten([]), uncover([FOODFOOD1])], P).
complete_task(serve_meal, P) :- 	type(PLATE1, plate), type(FOODFOOD3, foodfood), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood), type(FOODFOOD2, foodfood), 	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [FOODFOOD3, PLATE3], [PLATE3, TABLE1], [PLATE2, TABLE1], [FOODFOOD1, PLATE3], [FOODFOOD2, PLATE3]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(set_up_tv, P) :- 	type(TABLE1, tabl), type(COUCH1, couch), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol), 	transform([close([]), holds([]), sat_on([]), on_top_of([[REMOTECONTROL1, TABLE1]]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), unwrap([TELEVISION1])], P).
complete_task(shredding, P) :- 	type(SHREDDER1, shredder), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, SHREDDER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([SHREDDER1])], P).
complete_task(shut_off_alarm, P) :- 	type(ALARMCLOCK1, alarmclock), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([ALARMCLOCK1])], P).
complete_task(sing_karaoke, P) :- 	type(MICROPHONE1, microphone), type(TELEVISION1, television), type(CONSOLE1, console), 	transform([close([]), holds([MICROPHONE1]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1, CONSOLE1]), laid_on([]), used([]), eaten([]), sing([character1])], P).
complete_task(sing_song, P) :- 	type(CHILD2, child), type(MICROPHONE1, microphone), type(CHILD1, child), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD2, CHILD1]), sing([character1])], P).
complete_task(sit_in_chair, P) :- 	type(CHAIR1, chair), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).
complete_task(slice_apple, P) :- 	type(PLATE1, plate), type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(FOODAPPLE1, foodapple), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), 	transform([close([]), holds([KNIFE1]), sat_on([]), on_top_of([[FOODAPPLE1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODAPPLE1])], P).
complete_task(sort_and_fold_laundry, P) :- 	type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESDRESS1]), wash([CLOTHESDRESS1])], P).
complete_task(sort_clothing_and_care_for_it, P) :- 	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESSKIRT2, clothesskirt), type(CLOTHESPANTS2, clothespants), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES1], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESSKIRT1, BASKETFORCLOTHES1], [CLOTHESSKIRT2, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), fold([CLOTHESSHIRT1, CLOTHESSHIRT2, CLOTHESPANTS1, CLOTHESSKIRT1]), putin([CLOTHESSHIRT1, CLOTHESSHIRT2, CLOTHESPANTS1, CLOTHESSKIRT1])], P).
complete_task(sort_laundry, P) :- 	type(CLOTHESSHIRT3, clothesshirt), type(CLOTHESSHIRT1, clothesshirt), type(BASKETFORCLOTHES2, basketforclothes), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT3, BASKETFORCLOTHES2], [CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES2], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES2]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(spend_family_time_playing_games, P) :- 	type(MAN1, man), type(TABLE1, tabl), type(CHAIR1, chair), type(MAN2, man), type(CLOSET1, closet), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CARDS1, cards), type(DECKOFCARDS1, deckofcards), 	transform([close([]), holds([CARDS1]), sat_on([]), on_top_of([[FOODSNACK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(squeeze_lemon, P) :- 	type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FOODLEMON1, foodlemon), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(BOWL1, bowl), type(JUICE1, juice), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), squeeze([FOODLEMON1])], P).
complete_task(straighten_bookshelf, P) :- 	type(DESK1, desk), type(BOOK3, book), type(BOOK2, book), type(BOOK4, book), type(BOOKSHELF1, bookshelf), type(BOOK1, book), 	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK3, BOOKSHELF1], [BOOK2, BOOKSHELF1], [BOOK4, BOOKSHELF1], [BOOK1, BOOKSHELF1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([BOOKSHELF1])], P).
complete_task(straighten_pictures_on_wall, P) :- 	type(PAINTING2, painting), type(PAINTING1, painting), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([PAINTING2, PAINTING1]), touch([PAINTING2, PAINTING1])], P).
complete_task(surf_internet, P) :- 	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch), 	transform([close([]), holds([LAPTOP1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(surf_net, P) :- 	type(BED1, bed), type(LAPTOP1, laptop), type(DRESSER1, dresser), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([]), on_top_of([[LAPTOP1, DRESSER1]]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), off([LAPTOP1]), open([DRESSER1]), sleep([character1]), type([KEYBOARD1])], P).
complete_task(surf_web_for_money_legitimate_making_opportunities, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(sweep_hallway_please, P) :- 	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet), 	transform([close([]), holds([VACUUMCLEANER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), off([VACUUMCLEANER1]), plugin([VACUUMCLEANER1]), pull([VACUUMCLEANER1]), push([VACUUMCLEANER1]), putin([VACUUMCLEANER1])], P).
complete_task(switch_on_lamp, P) :- 	type(LAMP1, lamp), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([])], P).
complete_task(take_off_coat, P) :- 	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket), 	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(take_shoes_off, P) :- 	type(SHOES1, shoes), 	transform([close([SHOES1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(tax_filing, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(BILLS1, bills), type(CHECK1, check), type(KEYBOARD1, keyboard), type(PEN1, pen), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([CHECK1])], P).
complete_task(text_friend, P) :- 	type(BED1, bed), type(CELLPHONE1, cellphone), 	transform([close([]), holds([CELLPHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), text([CELLPHONE1])], P).
complete_task(throw_away_newspaper, P) :- 	type(NEWSPAPER1, newspaper), type(TRASHCAN1, trashcan), type(TABLE1, tabl), 	transform([close([]), holds([]), sat_on([]), on_top_of([[NEWSPAPER1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TRASHCAN1])], P).
complete_task(throw_away_paper, P) :- 	type(TRASHCAN1, trashcan), type(DESK1, desk), type(CHAIR1, chair), type(PAPER1, paper), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([PAPER1])], P).
complete_task(toast_bread, P) :- 	type(FOODBREAD1, foodbread), type(TOASTER1, toaster), type(FRIDGE1, fridge), 	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, TOASTER1]]), inside([]), on([TOASTER1]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), plugin([TOASTER1])], P).
complete_task(turn_off_tv, P) :- 	type(TELEVISION1, television), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([TELEVISION1])], P).
complete_task(turn_on_tv, P) :- 	type(CHAIR1, chair), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([])], P).
complete_task(turn_on_radio, P) :- 	type(RADIO1, radio), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([])], P).
complete_task(use_laptop, P) :- 	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch), 	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).
complete_task(wash_and_clean_all_crystal_in_china_cabinet, P) :- 	type(DISHRACK1, dishrack), type(GLASS2, glass), type(WINEGLASS2, wineglass), type(GLASS1, glass), type(TOWEL1, towel), type(SINK1, sink), type(WINEGLASS1, wineglass), type(FAUCET1, faucet), type(RAG1, rag), type(CABINET1, cabinet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([GLASS1, WINEGLASS1])], P).
complete_task(wash_back, P) :- 	type(SHOWER1, shower), type(SPONGE1, sponge), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1])], P).
complete_task(wash_dining_table, P) :- 	type(CLOTHESDRESS1, clothesdress), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESDRESS1]), wash([CLOTHESDRESS1])], P).
complete_task(wash_monitor, P) :- 	type(NAPKIN1, napkin), type(BRUSH1, brush), type(COMPUTER1, computer), 	transform([close([]), holds([NAPKIN1, BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([BRUSH1]), off([COMPUTER1]), wash([NAPKIN1]), wipe([COMPUTER1])], P).
complete_task(wash_table, P) :- 	type(RAG1, rag), type(WATER1, water), type(TABLE1, tabl), 	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([WATER1])], P).
complete_task(water_plants, P) :- 	type(POT1, pot), type(WATER1, water), type(POT3, pot), type(POT2, pot), 	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([WATER1])], P).
complete_task(wipe_down_baseboards_please, P) :- 	type(WALL1, wall), type(RAG1, rag), 	transform([close([WALL1]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).
complete_task(wipe_room_down_with_lysol, P) :- 	type(DRESSER1, dresser), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([DRESSER1]), wipe([DRESSER1])], P).
complete_task(write, P) :- 	type(CHAIR1, chair), type(DESK1, desk), type(LAPTOP1, laptop), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad), 	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[NOTEPAD1, DESK1]]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), open([DESK1]), type([KEYBOARD1]), write([NOTEPAD1])], P).
complete_task(write_report, P) :- 	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(PRINTER1, printer), type(MOUSE1, mouse), type(KEYBOARD1, keyboard), 	transform([close([]), holds([MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1, PRINTER1]), pull([CHAIR1, MOUSE1]), touch([MOUSE1]), type([KEYBOARD1])], P).
complete_task(practice_own_singing, P) :- 	type(INSTRUMENTPIANO1, instrumentpiano), type(MICROPHONE1, microphone), type(BOOK1, book), type(CDPLAYER1, cdplayer), type(MUSICSTAND1, musicstand), type(BENCH1, bench), 	transform([close([]), holds([]), sat_on([]), on_top_of([[MICROPHONE1, MUSICSTAND1], [BOOK1, MUSICSTAND1], [CDPLAYER1, MUSICSTAND1]]), inside([]), on([MICROPHONE1, CDPLAYER1]), laid_on([]), used([]), eaten([]), plugin([MICROPHONE1, CDPLAYER1]), pull([BENCH1]), sing([character1])], P).
complete_task(use_bathroom, P) :- 	type(CLOTHESPANTS1, clothespants), type(TOILET1, toilet), 	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), puton([CLOTHESPANTS1])], P).
complete_task(vacuum_carpet, P) :- 	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet), 	transform([close([]), holds([VACUUMCLEANER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), off([VACUUMCLEANER1]), plugin([VACUUMCLEANER1]), pull([VACUUMCLEANER1]), push([VACUUMCLEANER1]), putin([VACUUMCLEANER1])], P).

?- complete_task(put_shoes_and_coat, P).