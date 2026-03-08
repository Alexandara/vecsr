% Added meat to freezer
get_relevant(added_meat_to_freezer, [FREEZER1, GROCERIES1]) :-
	type(FREEZER1, freezer), type(GROCERIES1, groceries).
complete_task(added_meat_to_freezer, P) :-
	type(FREEZER1, freezer), type(GROCERIES1, groceries),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FREEZER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FREEZER1])], P).

% Annoy your dog
get_relevant(annoy_your_dog, [CHAIR1, LASERPOINTER1, DOG1]) :-
	type(CHAIR1, chair), type(LASERPOINTER1, laserpointer), type(DOG1, dog).
complete_task(annoy_your_dog, P) :-
	type(CHAIR1, chair), type(LASERPOINTER1, laserpointer), type(DOG1, dog),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LASERPOINTER1]), shake([LASERPOINTER1]), standup([character1])], P).

% Answer door
get_relevant(answer_door, [MAN1]) :-
	type(MAN1, man).
complete_task(answer_door, P) :-
	type(MAN1, man),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).

% Apply lotion
get_relevant(apply_lotion, [BED1]) :-
	type(BED1, bed).
complete_task(apply_lotion, P) :-
	type(BED1, bed),
	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([BED1]), wash([BED1])], P).

% Arrange bookshelf
get_relevant(arrange_bookshelf, [RAG1, BOOKSHELF1, BOOK1, BOOK3, DESK1, BOOK2]) :-
	type(RAG1, rag), type(BOOKSHELF1, bookshelf), type(BOOK1, book), type(BOOK3, book), type(DESK1, desk), type(BOOK2, book).
complete_task(arrange_bookshelf, P) :-
	type(RAG1, rag), type(BOOKSHELF1, bookshelf), type(BOOK1, book), type(BOOK3, book), type(DESK1, desk), type(BOOK2, book),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK1, BOOKSHELF1], [BOOK3, BOOKSHELF1], [BOOK2, BOOKSHELF1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([BOOKSHELF1, DESK1]), wipe([BOOKSHELF1])], P).

% Arrange folders
get_relevant(arrange_folders, [FOLDER4, FOLDER3, FOLDER2, FOLDER5, FOLDER1, DESK1]) :-
	type(FOLDER4, folder), type(FOLDER3, folder), type(FOLDER2, folder), type(FOLDER5, folder), type(FOLDER1, folder), type(DESK1, desk).
complete_task(arrange_folders, P) :-
	type(FOLDER4, folder), type(FOLDER3, folder), type(FOLDER2, folder), type(FOLDER5, folder), type(FOLDER1, folder), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOLDER4, DESK1], [FOLDER3, DESK1], [FOLDER2, DESK1], [FOLDER5, DESK1], [FOLDER1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1])], P).

% Bake
get_relevant(bake, [OVEN1, DOUGH1, TRAY1]) :-
	type(OVEN1, oven), type(DOUGH1, dough), type(TRAY1, tray).
complete_task(bake, P) :-
	type(OVEN1, oven), type(DOUGH1, dough), type(TRAY1, tray),
	transform([close([]), holds([TRAY1]), sat_on([]), on_top_of([[DOUGH1, TRAY1]]), inside([]), on([OVEN1]), laid_on([]), used([]), eaten([]), closed([OVEN1]), putin([TRAY1])], P).

% Bathe
get_relevant(bathe, [SOAP1, FAUCET1, ARMSBOTH1, BATHTUB1, LEGSBOTH1, SPONGE1, CLOTHESDRESS1]) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(ARMSBOTH1, armsboth), type(BATHTUB1, bathtub), type(LEGSBOTH1, legsboth), type(SPONGE1, sponge), type(CLOTHESDRESS1, clothesdress).
complete_task(bathe, P) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(ARMSBOTH1, armsboth), type(BATHTUB1, bathtub), type(LEGSBOTH1, legsboth), type(SPONGE1, sponge), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([BATHTUB1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([BATHTUB1]), leave([BATHTUB1]), off([FAUCET1]), pour([SOAP1]), rinse([ARMSBOTH1, LEGSBOTH1]), scrub([ARMSBOTH1, LEGSBOTH1]), standup([character1])], P).

% Break table
get_relevant(break_table, [CHAIR1, TABLE1]) :-
	type(CHAIR1, chair), type(TABLE1, tabl).
complete_task(break_table, P) :-
	type(CHAIR1, chair), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).

% Breakfast
get_relevant(breakfast, [FOODFOOD1, BED1, TELEVISION1]) :-
	type(FOODFOOD1, foodfood), type(BED1, bed), type(TELEVISION1, television).
complete_task(breakfast, P) :-
	type(FOODFOOD1, foodfood), type(BED1, bed), type(TELEVISION1, television),
	transform([close([]), holds([FOODFOOD1]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([BED1]), used([]), eaten([FOODFOOD1]), watch([TELEVISION1])], P).

% Bring dirty plate to sink
get_relevant(bring_dirty_plate_to_sink, [TABLE1, PLATE1, SINK1]) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(SINK1, sink).
complete_task(bring_dirty_plate_to_sink, P) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Bring food
get_relevant(bring_food, [FOODFOOD1, PLATE1, BED1]) :-
	type(FOODFOOD1, foodfood), type(PLATE1, plate), type(BED1, bed).
complete_task(bring_food, P) :-
	type(FOODFOOD1, foodfood), type(PLATE1, plate), type(BED1, bed),
	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([[FOODFOOD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), sleep([character1]), wakeup([character1])], P).

% Broom
get_relevant(broom, [FLOOR1, DUSTPAN1]) :-
	type(FLOOR1, floor), type(DUSTPAN1, dustpan).
complete_task(broom, P) :-
	type(FLOOR1, floor), type(DUSTPAN1, dustpan),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sweep([FLOOR1])], P).

% Browse computer
get_relevant(browse_computer, [KEYBOARD1, CHAIR1, MOUSE1, MAIL1, DESK1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(MAIL1, mail), type(DESK1, desk), type(COMPUTER1, computer).
complete_task(browse_computer, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(MAIL1, mail), type(DESK1, desk), type(COMPUTER1, computer),
	transform([close([]), holds([MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([MAIL1]), type([KEYBOARD1])], P).

% Browse internet
get_relevant(browse_internet, [CHAIR1, COMPUTER1, KEYBOARD1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard).
complete_task(browse_internet, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Brush hair
get_relevant(brush_hair, [HAIRBRUSH1, HAIR1, MIRROR1]) :-
	type(HAIRBRUSH1, hairbrush), type(HAIR1, hair), type(MIRROR1, mirror).
complete_task(brush_hair, P) :-
	type(HAIRBRUSH1, hairbrush), type(HAIR1, hair), type(MIRROR1, mirror),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).

% Brush teeth
get_relevant(brush_teeth, [TOOTHBRUSH1, TEETH1, TOOTHPASTE1, TOOTHBRUSHHOLDER1]) :-
	type(TOOTHBRUSH1, toothbrush), type(TEETH1, teeth), type(TOOTHPASTE1, toothpaste), type(TOOTHBRUSHHOLDER1, toothbrushholder).
complete_task(brush_teeth, P) :-
	type(TOOTHBRUSH1, toothbrush), type(TEETH1, teeth), type(TOOTHPASTE1, toothpaste), type(TOOTHBRUSHHOLDER1, toothbrushholder),
	transform([close([]), holds([TOOTHBRUSH1, TOOTHPASTE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([TOOTHPASTE1]), scrub([TEETH1])], P).

% Celebrate
get_relevant(celebrate, [FOODFOOD1, WOMAN1, CHAIR1, PLATE1, WINEGLASS1, PLATE3, WOMAN2, PLATE2]) :-
	type(FOODFOOD1, foodfood), type(WOMAN1, woman), type(CHAIR1, chair), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(PLATE3, plate), type(WOMAN2, woman), type(PLATE2, plate).
complete_task(celebrate, P) :-
	type(FOODFOOD1, foodfood), type(WOMAN1, woman), type(CHAIR1, chair), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(PLATE3, plate), type(WOMAN2, woman), type(PLATE2, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1]), greet([WOMAN1, WOMAN2])], P).

% Celebrate birthday with nice meal
get_relevant(celebrate_birthday_with_nice_meal, [FOODFOOD1, TABLE1, PLATE1, WINEGLASS1, CHAIR1]) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(CHAIR1, chair).
complete_task(celebrate_birthday_with_nice_meal, P) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1])], P).

% Change TV channel
get_relevant(change_tv_channel, [COUCH1, REMOTECONTROL1, TELEVISION1, BUTTON1]) :-
	type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(BUTTON1, button).
complete_task(change_tv_channel, P) :-
	type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(BUTTON1, button),
	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), push([BUTTON1])], P).

% Change clothes
get_relevant(change_clothes, [CLOSET1, CLOTHESDRESS1]) :-
	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress).
complete_task(change_clothes, P) :-
	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESDRESS1])], P).

% Change curtains
get_relevant(change_curtains, [CURTAIN1, CLOSET1, BASKETFORCLOTHES1, WINDOW1]) :-
	type(CURTAIN1, curtain), type(CLOSET1, closet), type(BASKETFORCLOTHES1, basketforclothes), type(WINDOW1, window).
complete_task(change_curtains, P) :-
	type(CURTAIN1, curtain), type(CLOSET1, closet), type(BASKETFORCLOTHES1, basketforclothes), type(WINDOW1, window),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CURTAIN1, WINDOW1], [BASKETFORCLOTHES1, WINDOW1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), fold([CURTAIN1]), pull([CURTAIN1]), touch([CURTAIN1]), unfold([CURTAIN1])], P).

% Change light
get_relevant(change_light, [TRASHCAN1, LIGHTBULB1, LIGHTBULB2, CHAIR1, LIGHT1, CABINET1]) :-
	type(TRASHCAN1, trashcan), type(LIGHTBULB1, lightbulb), type(LIGHTBULB2, lightbulb), type(CHAIR1, chair), type(LIGHT1, light), type(CABINET1, cabinet),
	LIGHTBULB1 \= LIGHTBULB2.
complete_task(change_light, P) :-
	type(TRASHCAN1, trashcan), type(LIGHTBULB1, lightbulb), type(LIGHTBULB2, lightbulb), type(CHAIR1, chair), type(LIGHT1, light), type(CABINET1, cabinet),
	LIGHTBULB1 \= LIGHTBULB2,
	transform([close([]), holds([LIGHTBULB2]), sat_on([]), on_top_of([[LIGHTBULB1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Check email
get_relevant(check_email, [LAPTOP1, CHAIR1]) :-
	type(LAPTOP1, laptop), type(CHAIR1, chair).
complete_task(check_email, P) :-
	type(LAPTOP1, laptop), type(CHAIR1, chair),
	transform([close([]), holds([LAPTOP1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), touch([LAPTOP1])], P).

% Check homework
get_relevant(check_homework, [TABLE1, CHAIR1, CHILD1, HOMEWORK1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(CHILD1, child), type(HOMEWORK1, homework).
complete_task(check_homework, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(CHILD1, child), type(HOMEWORK1, homework),
	transform([close([]), holds([]), sat_on([]), on_top_of([[HOMEWORK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), talk([CHILD1])], P).

% Check self in mirror
get_relevant(check_self_in_mirror, [MIRROR1]) :-
	type(MIRROR1, mirror).
complete_task(check_self_in_mirror, P) :-
	type(MIRROR1, mirror),
	transform([close([MIRROR1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Chop vegetables
get_relevant(chop_vegetables, [KNIFE1, FOODCARROT1, CUTTINGBOARD1, FRIDGE1, CUPBOARD1]) :-
	type(KNIFE1, knife), type(FOODCARROT1, foodcarrot), type(CUTTINGBOARD1, cuttingboard), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard).
complete_task(chop_vegetables, P) :-
	type(KNIFE1, knife), type(FOODCARROT1, foodcarrot), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard),
	transform([close([]), holds([KNIFE1, FOODCARROT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), cut([FOODCARROT1])], P).

% Clean
get_relevant(clean, [TOY2, TOY1, TOY3, CABINET1]) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet).
complete_task(clean, P) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Clean bathroom
get_relevant(clean_bathroom, [DETERGENT1, TOILET1, SHOWER1, BRUSH1]) :-
	type(DETERGENT1, detergent), type(TOILET1, toilet), type(SHOWER1, shower), type(BRUSH1, brush).
complete_task(clean_bathroom, P) :-
	type(DETERGENT1, detergent), type(TOILET1, toilet), type(SHOWER1, shower), type(BRUSH1, brush),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DETERGENT1, TOILET1], [BRUSH1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), rinse([TOILET1, SHOWER1]), scrub([TOILET1, SHOWER1])], P).

% Clean dishes
get_relevant(clean_dishes, [DISHSOAP1, DRINKINGGLASS1, COFFEECUP1, FAUCET1, PLATE1, DETERGENT1, DISHWASHER1, SINK1]) :-
	type(DISHSOAP1, dishsoap), type(DRINKINGGLASS1, drinkingglass), type(COFFEECUP1, coffeecup), type(FAUCET1, faucet), type(PLATE1, plate), type(DETERGENT1, detergent), type(DISHWASHER1, dishwasher), type(SINK1, sink).
complete_task(clean_dishes, P) :-
	type(DISHSOAP1, dishsoap), type(DRINKINGGLASS1, drinkingglass), type(COFFEECUP1, coffeecup), type(FAUCET1, faucet), type(PLATE1, plate), type(DETERGENT1, detergent), type(DISHWASHER1, dishwasher), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DISHSOAP1, PLATE1], [DRINKINGGLASS1, DISHWASHER1], [COFFEECUP1, DISHWASHER1], [PLATE1, DISHWASHER1], [DETERGENT1, DISHWASHER1]]), inside([]), on([FAUCET1, DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), wash([DRINKINGGLASS1, COFFEECUP1, PLATE1])], P).

% Clean eggs from our chickens
get_relevant(clean_eggs_from_our_chickens, [RAG1, FAUCET1, BOX1, SPONGE1, SINK1, FRIDGE1, FOODEGG1]) :-
	type(RAG1, rag), type(FAUCET1, faucet), type(BOX1, box), type(SPONGE1, sponge), type(SINK1, sink), type(FRIDGE1, fridge), type(FOODEGG1, foodegg).
complete_task(clean_eggs_from_our_chickens, P) :-
	type(FAUCET1, faucet), type(BOX1, box), type(FRIDGE1, fridge), type(FOODEGG1, foodegg),
	transform([close([]), holds([BOX1, FOODEGG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), off([FAUCET1]), putin([BOX1, FOODEGG1]), rinse([FOODEGG1]), scrub([FOODEGG1]), wipe([FOODEGG1])], P).

% Clean floor
get_relevant(clean_floor, [CLEANINGBOTTLE1]) :-
	type(CLEANINGBOTTLE1, cleaningbottle).
complete_task(clean_floor, P) :-
	type(CLEANINGBOTTLE1, cleaningbottle),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([CLEANINGBOTTLE1]), wash([CLEANINGBOTTLE1])], P).

% Clean floor
get_relevant(clean_floor, [CLEANINGBOTTLE1]) :-
	type(CLEANINGBOTTLE1, cleaningbottle).
complete_task(clean_floor, P) :-
	type(CLEANINGBOTTLE1, cleaningbottle),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([CLEANINGBOTTLE1])], P).

% Clean floor
get_relevant(clean_floor, [MOP1, CLEANINGSOLUTION1, MOPBUCKET1]) :-
	type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(MOPBUCKET1, mopbucket).
complete_task(clean_floor, P) :-
	type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(MOPBUCKET1, mopbucket),
	transform([close([]), holds([MOP1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), soak([MOP1])], P).

% Clean fridge
get_relevant(clean_fridge, [TRASHCAN1, FOODFOOD1, RAG1, MILK1, FOODCHEESE1, TABLE1, FAUCET1, DISHSOAP1, BOWL1, SINK1, FRIDGE1, FOODBREAD1]) :-
	type(TRASHCAN1, trashcan), type(FOODFOOD1, foodfood), type(RAG1, rag), type(MILK1, milk), type(FOODCHEESE1, foodcheese), type(TABLE1, tabl), type(FAUCET1, faucet), type(DISHSOAP1, dishsoap), type(BOWL1, bowl), type(SINK1, sink), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread).
complete_task(clean_fridge, P) :-
	type(TRASHCAN1, trashcan), type(FOODFOOD1, foodfood), type(RAG1, rag), type(MILK1, milk), type(FOODCHEESE1, foodcheese), type(TABLE1, tabl), type(FAUCET1, faucet), type(DISHSOAP1, dishsoap), type(BOWL1, bowl), type(SINK1, sink), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, TRASHCAN1], [FOODCHEESE1, TRASHCAN1], [MILK1, FRIDGE1], [FOODBREAD1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), soak([RAG1]), wipe([FRIDGE1])], P).

% Clean kitchen
get_relevant(clean_kitchen, [RAG1, FAUCET1, TABLE1, CLEANINGBOTTLE1, STOVE1, OVEN1, KITCHENCABINET1, CLEANINGSOLUTION1, SINK1]) :-
	type(RAG1, rag), type(FAUCET1, faucet), type(TABLE1, tabl), type(CLEANINGBOTTLE1, cleaningbottle), type(STOVE1, stove), type(OVEN1, oven), type(KITCHENCABINET1, kitchencabinet), type(CLEANINGSOLUTION1, cleaningsolution), type(SINK1, sink).
complete_task(clean_kitchen, P) :-
	type(RAG1, rag), type(FAUCET1, faucet), type(TABLE1, tabl), type(CLEANINGBOTTLE1, cleaningbottle), type(STOVE1, stove), type(OVEN1, oven), type(KITCHENCABINET1, kitchencabinet), type(CLEANINGSOLUTION1, cleaningsolution), type(SINK1, sink),
	transform([close([]), holds([CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), rinse([RAG1]), wipe([STOVE1, OVEN1, KITCHENCABINET1])], P).

% Clean mirror
get_relevant(clean_mirror, [CLEANINGSOLUTION1, MIRROR1, RAG1]) :-
	type(CLEANINGSOLUTION1, cleaningsolution), type(MIRROR1, mirror), type(RAG1, rag).
complete_task(clean_mirror, P) :-
	type(CLEANINGSOLUTION1, cleaningsolution), type(MIRROR1, mirror), type(RAG1, rag),
	transform([close([]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([MIRROR1])], P).

% Clean room
get_relevant(clean_room, [CLOTHESSHIRT1, TOY2, TOY1, FLOORLAMP1, LIGHT1, TELEVISION1, DRESSER1, CLOTHESPANTS1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(TOY2, toy), type(TOY1, toy), type(FLOORLAMP1, floorlamp), type(LIGHT1, light), type(TELEVISION1, television), type(DRESSER1, dresser), type(CLOTHESPANTS1, clothespants).
complete_task(clean_room, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(TOY2, toy), type(TOY1, toy), type(FLOORLAMP1, floorlamp), type(LIGHT1, light), type(TELEVISION1, television), type(DRESSER1, dresser), type(CLOTHESPANTS1, clothespants),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, DRESSER1], [TOY2, DRESSER1], [TOY1, DRESSER1], [CLOTHESPANTS1, DRESSER1]]), inside([]), on([FLOORLAMP1]), laid_on([]), used([]), eaten([])], P).

% Clean sink
get_relevant(clean_sink, [SOAP1, FAUCET1, SPONGE1, SINK1]) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(SPONGE1, sponge), type(SINK1, sink).
complete_task(clean_sink, P) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(SPONGE1, sponge), type(SINK1, sink),
	transform([close([]), holds([SINK1]), sat_on([]), on_top_of([[SOAP1, SINK1], [SPONGE1, SINK1]]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([SOAP1]), rinse([SPONGE1, SINK1]), scrub([SINK1]), soak([SPONGE1])], P).

% Clean toilet
get_relevant(clean_toilet, [TOILET1, CLEANINGSOLUTION1, BRUSH1]) :-
	type(TOILET1, toilet), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush).
complete_task(clean_toilet, P) :-
	type(TOILET1, toilet), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLEANINGSOLUTION1, TOILET1], [BRUSH1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), scrub([TOILET1])], P).

% Clean toilet
get_relevant(clean_toilet, [TOILET1, BRUSH1]) :-
	type(TOILET1, toilet), type(BRUSH1, brush).
complete_task(clean_toilet, P) :-
	type(TOILET1, toilet), type(BRUSH1, brush),
	transform([close([]), holds([BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), scrub([TOILET1])], P).

% Clear table
get_relevant(clear_table, [DRINKINGGLASS1, RAG1, TABLE1, PLATE1, FORK2, SINK1, FORK1, PLATE2]) :-
	type(DRINKINGGLASS1, drinkingglass), type(RAG1, rag), type(TABLE1, tabl), type(PLATE1, plate), type(FORK2, fork), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate).
complete_task(clear_table, P) :-
	type(DRINKINGGLASS1, drinkingglass), type(RAG1, rag), type(TABLE1, tabl), type(PLATE1, plate), type(FORK2, fork), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DRINKINGGLASS1, SINK1], [PLATE1, SINK1], [FORK2, SINK1], [FORK1, SINK1], [PLATE2, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Close dresser drawer
get_relevant(close_dresser_drawer, [DRESSER1]) :-
	type(DRESSER1, dresser).
complete_task(close_dresser_drawer, P) :-
	type(DRESSER1, dresser),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DRESSER1])], P).

% Comb hair
get_relevant(comb_hair, [HAIR1, MIRROR1, COMB1]) :-
	type(HAIR1, hair), type(MIRROR1, mirror), type(COMB1, comb).
complete_task(comb_hair, P) :-
	type(HAIR1, hair), type(MIRROR1, mirror), type(COMB1, comb),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).

% Come in and leave home
get_relevant(come_in_and_leave_home, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(come_in_and_leave_home, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).

% Complete homework
get_relevant(complete_homework, [KEYBOARD1, CHAIR1, MECHANICALPENCIL1, NOTEBOOK1, TEXTBOOK1, NOTES1, DESK1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MECHANICALPENCIL1, mechanicalpencil), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk), type(COMPUTER1, computer).
complete_task(complete_homework, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MECHANICALPENCIL1, mechanicalpencil), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk), type(COMPUTER1, computer),
	transform([close([]), holds([TEXTBOOK1]), sat_on([CHAIR1]), on_top_of([[NOTEBOOK1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([DESK1]), read([TEXTBOOK1]), type([KEYBOARD1]), write([NOTEBOOK1])], P).

% Cook some food
get_relevant(cook_some_food, [COOKINGPOT1, FOODRICE1, FOODCARROT1, FOODSALT1, STOVE1, FOODVEGETABLE1, FOODFRUIT1]) :-
	type(COOKINGPOT1, cookingpot), type(FOODRICE1, foodrice), type(FOODCARROT1, foodcarrot), type(FOODSALT1, foodsalt), type(STOVE1, stove), type(FOODVEGETABLE1, foodvegetable), type(FOODFRUIT1, foodfruit).
complete_task(cook_some_food, P) :-
	type(COOKINGPOT1, cookingpot), type(FOODRICE1, foodrice), type(FOODCARROT1, foodcarrot), type(FOODSALT1, foodsalt), type(STOVE1, stove), type(FOODVEGETABLE1, foodvegetable), type(FOODFRUIT1, foodfruit),
	transform([close([]), holds([]), sat_on([]), on_top_of([[COOKINGPOT1, STOVE1], [FOODRICE1, STOVE1], [FOODCARROT1, STOVE1], [FOODSALT1, STOVE1], [FOODVEGETABLE1, STOVE1], [FOODFRUIT1, STOVE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODCARROT1, FOODVEGETABLE1, FOODFRUIT1]), off([STOVE1])], P).

% Curled hair
get_relevant(curled_hair, [BLOWDRYER1, HAIR1]) :-
	type(BLOWDRYER1, blowdryer), type(HAIR1, hair).
complete_task(curled_hair, P) :-
	type(BLOWDRYER1, blowdryer), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([BLOWDRYER1]), plugin([BLOWDRYER1]), stretch([HAIR1])], P).

% Cut steak
get_relevant(cut_steak, [KNIFE1, FOODSTEAK1, CHAIR1, FORK1]) :-
	type(KNIFE1, knife), type(FOODSTEAK1, foodsteak), type(CHAIR1, chair), type(FORK1, fork).
complete_task(cut_steak, P) :-
	type(KNIFE1, knife), type(FOODSTEAK1, foodsteak), type(CHAIR1, chair), type(FORK1, fork),
	transform([close([]), holds([KNIFE1, FORK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODSTEAK1]), push([FORK1])], P).

% Cut your hair
get_relevant(cut_your_hair, [SCISSORS1, HAIRBRUSH1, MIRROR1, HAIR1]) :-
	type(SCISSORS1, scissors), type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair).
complete_task(cut_your_hair, P) :-
	type(SCISSORS1, scissors), type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), cut([HAIR1])], P).

% Dance
get_relevant(dance, [STEREO1, ARMSBOTH1]) :-
	type(STEREO1, stereo), type(ARMSBOTH1, armsboth).
complete_task(dance, P) :-
	type(STEREO1, stereo), type(ARMSBOTH1, armsboth),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([STEREO1]), laid_on([]), used([]), eaten([]), dance([character1]), stretch([ARMSBOTH1])], P).

% Dance with kids
get_relevant(dance_with_kids, [RADIO1, PHONE1, CHILD1, CHILD2, DRESSER1]) :-
	type(RADIO1, radio), type(PHONE1, phone), type(CHILD1, child), type(CHILD2, child), type(DRESSER1, dresser).
complete_task(dance_with_kids, P) :-
	type(RADIO1, radio), type(PHONE1, phone), type(CHILD1, child), type(CHILD2, child), type(DRESSER1, dresser),
	transform([close([]), holds([PHONE1]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1]), greet([CHILD1, CHILD2]), plugin([PHONE1])], P).

% Decorate
get_relevant(decorate, [WALL1, TABLE1, PAINTING1, TABLECLOTH1, CENTERPIECE1]) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(TABLECLOTH1, tablecloth), type(CENTERPIECE1, centerpiece).
complete_task(decorate, P) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(TABLECLOTH1, tablecloth), type(CENTERPIECE1, centerpiece),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAINTING1, WALL1], [TABLECLOTH1, TABLE1], [CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Decorate it
get_relevant(decorate_it, [WALL1, TABLE1, PAINTING1, CENTERPIECE1, PAINTING2]) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece), type(PAINTING2, painting).
complete_task(decorate_it, P) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece), type(PAINTING2, painting),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAINTING1, TABLE1], [CENTERPIECE1, TABLE1], [PAINTING2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Deficate
get_relevant(deficate, [WOMAN1, TOILETPAPER1, TOILET1, CLOTHESPANTS1]) :-
	type(WOMAN1, woman), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(CLOTHESPANTS1, clothespants).
complete_task(deficate, P) :-
	type(WOMAN1, woman), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(CLOTHESPANTS1, clothespants),
	transform([close([]), holds([TOILETPAPER1]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([WOMAN1])], P).

% Defrost chicken
get_relevant(defrost_chicken, [FAUCET1, FOODCHICKEN1, FREEZER1, SINK1]) :-
	type(FAUCET1, faucet), type(FOODCHICKEN1, foodchicken), type(FREEZER1, freezer), type(SINK1, sink).
complete_task(defrost_chicken, P) :-
	type(FAUCET1, faucet), type(FOODCHICKEN1, foodchicken), type(FREEZER1, freezer), type(SINK1, sink),
	transform([close([]), holds([SINK1]), sat_on([]), on_top_of([[FOODCHICKEN1, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FREEZER1]), off([FAUCET1])], P).

% Dining
get_relevant(dining, [MILK1, TABLE1, CHAIR1, BOWL1, FOODCEREAL1, SPOON1, FRIDGE1, CUPBOARD1]) :-
	type(MILK1, milk), type(TABLE1, tabl), type(CHAIR1, chair), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard).
complete_task(dining, P) :-
	type(MILK1, milk), type(TABLE1, tabl), type(CHAIR1, chair), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard),
	transform([close([]), holds([SPOON1]), sat_on([CHAIR1]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1]), pour([MILK1, FOODCEREAL1])], P).

% Do an art project
get_relevant(do_an_art_project, [SCISSORS1, CRAYON1, PAPER1, DESK1, GLUE1, DRAWING1]) :-
	type(SCISSORS1, scissors), type(CRAYON1, crayon), type(PAPER1, paper), type(DESK1, desk), type(GLUE1, glue), type(DRAWING1, drawing).
complete_task(do_an_art_project, P) :-
	type(SCISSORS1, scissors), type(CRAYON1, crayon), type(PAPER1, paper), type(DESK1, desk), type(GLUE1, glue), type(DRAWING1, drawing),
	transform([close([]), holds([PAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([DRAWING1]), fold([PAPER1]), open([DESK1]), unfold([PAPER1])], P).

% Do dishes
get_relevant(do_dishes, [FAUCET1, PLATE1, DISHWASHER1, SINK1]) :-
	type(FAUCET1, faucet), type(PLATE1, plate), type(DISHWASHER1, dishwasher), type(SINK1, sink).
complete_task(do_dishes, P) :-
	type(FAUCET1, faucet), type(PLATE1, plate), type(DISHWASHER1, dishwasher), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1]]), inside([]), on([DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), off([FAUCET1]), rinse([PLATE1])], P).

% Do facial
get_relevant(do_facial, [FAUCET1, MIRROR1, FACIALCLEANSER1, HANDSBOTH1, FACE1, TOWEL1, FACESOAP1, SINK1]) :-
	type(FAUCET1, faucet), type(MIRROR1, mirror), type(FACIALCLEANSER1, facialcleanser), type(HANDSBOTH1, handsboth), type(FACE1, face), type(TOWEL1, towel), type(FACESOAP1, facesoap), type(SINK1, sink).
complete_task(do_facial, P) :-
	type(FAUCET1, faucet), type(MIRROR1, mirror), type(FACIALCLEANSER1, facialcleanser), type(HANDSBOTH1, handsboth), type(FACE1, face), type(TOWEL1, towel), type(FACESOAP1, facesoap), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([FACIALCLEANSER1]), rinse([FACE1]), scrub([FACE1]), spread([FACIALCLEANSER1]), wash([HANDSBOTH1, FACE1]), wipe([FACE1])], P).

% Do homework
get_relevant(do_homework, [TABLE1, CHAIR1, NOTEBOOK1, TEXTBOOK1, PENCIL1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil).
complete_task(do_homework, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil),
	transform([close([]), holds([PENCIL1]), sat_on([CHAIR1]), on_top_of([[NOTEBOOK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1]), read([TEXTBOOK1]), write([NOTEBOOK1])], P).

% Do laundry
get_relevant(do_laundry, [WASHINGMACHINE1, BASKETFORCLOTHES1, LAUNDRYDETERGENT1, CLOTHESPANTS1, CLOTHESDRESS1]) :-
	type(WASHINGMACHINE1, washingmachine), type(BASKETFORCLOTHES1, basketforclothes), type(LAUNDRYDETERGENT1, laundrydetergent), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress).
complete_task(do_laundry, P) :-
	type(WASHINGMACHINE1, washingmachine), type(BASKETFORCLOTHES1, basketforclothes), type(LAUNDRYDETERGENT1, laundrydetergent), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([LAUNDRYDETERGENT1]), sat_on([]), on_top_of([[BASKETFORCLOTHES1, WASHINGMACHINE1], [CLOTHESPANTS1, WASHINGMACHINE1], [CLOTHESDRESS1, WASHINGMACHINE1]]), inside([]), on([WASHINGMACHINE1]), laid_on([]), used([]), eaten([]), closed([WASHINGMACHINE1]), pour([LAUNDRYDETERGENT1])], P).

% Do nails
get_relevant(do_nails, [SHOES1, NAILPOLISH1, CLOSET1]) :-
	type(SHOES1, shoes), type(NAILPOLISH1, nailpolish), type(CLOSET1, closet).
complete_task(do_nails, P) :-
	type(SHOES1, shoes), type(NAILPOLISH1, nailpolish), type(CLOSET1, closet),
	transform([close([]), holds([NAILPOLISH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CLOSET1])], P).

% Do taxes
get_relevant(do_taxes, [DOCUMENT1, KEYBOARD1, CHAIR1, COMPUTER1]) :-
	type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer).
complete_task(do_taxes, P) :-
	type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer),
	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), pull([CHAIR1]), read([DOCUMENT1]), type([KEYBOARD1])], P).

% Draft home
get_relevant(draft_home, [KEYBOARD1, CHAIR1, MOUSE1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer).
complete_task(draft_home, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Draw picture
get_relevant(draw_picture, [PEN1, CHAIR1, PAPER1, DESK1]) :-
	type(PEN1, pen), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk).
complete_task(draw_picture, P) :-
	type(PEN1, pen), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk),
	transform([close([]), holds([PEN1]), sat_on([CHAIR1]), on_top_of([[PAPER1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DESK1])], P).

% Dress up and pretend
get_relevant(dress_up_and_pretend, [CLOTHESSHIRT1, CLOSET1, CLOTHESSKIRT1, CLOTHESPANTS1, CLOTHESDRESS1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress).
complete_task(dress_up_and_pretend, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), dance([character1]), puton([CLOTHESSHIRT1, CLOTHESSKIRT1, CLOTHESPANTS1, CLOTHESDRESS1])], P).

% Drink
get_relevant(drink, [WATERGLASS1]) :-
	type(WATERGLASS1, waterglass).
complete_task(drink, P) :-
	type(WATERGLASS1, waterglass),
	transform([close([]), holds([WATERGLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATERGLASS1])], P).

% Dry hair
get_relevant(dry_hair, [HAIRDRYER1, HAIR1]) :-
	type(HAIRDRYER1, hairdryer), type(HAIR1, hair).
complete_task(dry_hair, P) :-
	type(HAIRDRYER1, hairdryer), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([HAIRDRYER1]), eaten([]), plugin([HAIRDRYER1])], P).

% Dust
get_relevant(dust, [DUSTER1, FILINGCABINET1]) :-
	type(DUSTER1, duster), type(FILINGCABINET1, filingcabinet).
complete_task(dust, P) :-
	type(DUSTER1, duster), type(FILINGCABINET1, filingcabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FILINGCABINET1])], P).

% Eat
get_relevant(eat, [FOODFOOD1, KNIFE1, TABLE1, CHAIR1, PLATE1, FORK1]) :-
	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(TABLE1, tabl), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork).
complete_task(eat, P) :-
	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(TABLE1, tabl), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% Eat cereal
get_relevant(eat_cereal, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(eat_cereal, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([CHAIR1])], P).

% Eat cheese
get_relevant(eat_cheese, [FRIDGE1, FOODCHEESE1]) :-
	type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese).
complete_task(eat_cheese, P) :-
	type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese),
	transform([close([]), holds([FOODCHEESE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODCHEESE1]), open([FRIDGE1])], P).

% Eat dessert
get_relevant(eat_dessert, [KNIFE1, TABLE1, PLATE1, FORK1, FRIDGE1, FOODDESSERT1]) :-
	type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FORK1, fork), type(FRIDGE1, fridge), type(FOODDESSERT1, fooddessert).
complete_task(eat_dessert, P) :-
	type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FORK1, fork), type(FRIDGE1, fridge), type(FOODDESSERT1, fooddessert),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODDESSERT1])], P).

% Eat dinner
get_relevant(eat_dinner, [FOODFOOD1, TABLE1, PLATE1, STOVE1, CHAIR1, FORK1]) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(STOVE1, stove), type(CHAIR1, chair), type(FORK1, fork).
complete_task(eat_dinner, P) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(STOVE1, stove), type(CHAIR1, chair), type(FORK1, fork),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% Eat donuts
get_relevant(eat_donuts, [FOODDONUT1, PLATE1, BOX1]) :-
	type(FOODDONUT1, fooddonut), type(PLATE1, plate), type(BOX1, box).
complete_task(eat_donuts, P) :-
	type(FOODDONUT1, fooddonut), type(PLATE1, plate), type(BOX1, box),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODDONUT1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([FOODDONUT1]), open([BOX1])], P).

% Eat family meals
get_relevant(eat_family_meals, [KNIFE1, MAN1, PLATE1, CHILD1, FORK1]) :-
	type(KNIFE1, knife), type(MAN1, man), type(PLATE1, plate), type(CHILD1, child), type(FORK1, fork).
complete_task(eat_family_meals, P) :-
	type(KNIFE1, knife), type(MAN1, man), type(PLATE1, plate), type(CHILD1, child), type(FORK1, fork),
	transform([close([]), holds([FORK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), greet([MAN1, CHILD1])], P).

% Eat meals
get_relevant(eat_meals, [PLATE1]) :-
	type(PLATE1, plate).
complete_task(eat_meals, P) :-
	type(PLATE1, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% Eat on fancy china
get_relevant(eat_on_fancy_china, [FOODFOOD1, KNIFE1, CHAIR1, PLATE1, FORK1]) :-
	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork).
complete_task(eat_on_fancy_china, P) :-
	type(FOODFOOD1, foodfood), type(KNIFE1, knife), type(CHAIR1, chair), type(PLATE1, plate), type(FORK1, fork),
	transform([close([]), holds([KNIFE1, FORK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% Eat snacks and drink tea
get_relevant(eat_snacks_and_drink_tea, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(eat_snacks_and_drink_tea, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CHAIR1]), wash([CHAIR1])], P).

% Empty dishwasher and fill dishwasher
get_relevant(empty_dishwasher_and_fill_dishwasher, [DISHSOAP1, PLATE1, FORK2, DISHWASHER1, SINK1, FORK1, PLATE2, CUPBOARD1]) :-
	type(DISHSOAP1, dishsoap), type(PLATE1, plate), type(FORK2, fork), type(DISHWASHER1, dishwasher), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate), type(CUPBOARD1, cupboard).
complete_task(empty_dishwasher_and_fill_dishwasher, P) :-
	type(DISHSOAP1, dishsoap), type(PLATE1, plate), type(FORK2, fork), type(DISHWASHER1, dishwasher), type(SINK1, sink), type(FORK1, fork), type(PLATE2, plate), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DISHSOAP1, DISHWASHER1], [PLATE1, DISHWASHER1], [FORK2, DISHWASHER1], [FORK1, DISHWASHER1], [PLATE2, DISHWASHER1]]), inside([]), on([DISHWASHER1]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).

% Enjoy view out window
get_relevant(enjoy_view_out_window, [WINDOW1, CHAIR1]) :-
	type(WINDOW1, window), type(CHAIR1, chair).
complete_task(enjoy_view_out_window, P) :-
	type(WINDOW1, window), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Entertain
get_relevant(entertain, [FOODCHEESE1, WINEGLASS1, CRACKERS1, COUCH1]) :-
	type(FOODCHEESE1, foodcheese), type(WINEGLASS1, wineglass), type(CRACKERS1, crackers), type(COUCH1, couch), type(COFFEETABLE1, coffeetable).
complete_task(entertain, P) :-
	type(FOODCHEESE1, foodcheese), type(WINEGLASS1, wineglass), type(CRACKERS1, crackers), type(COUCH1, couch),
	transform([close([]), holds([WINEGLASS1]), sat_on([COUCH1]), on_top_of([[FOODCHEESE1, COFFEETABLE1],[CRACKERS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WINEGLASS1])], P).

% Exercise
get_relevant(exercise, [ARMSBOTH1, REMOTECONTROL1, TELEVISION1, LEGSBOTH1, FLOOR1]) :-
	type(ARMSBOTH1, armsboth), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(FLOOR1, rug).
complete_task(exercise, P) :-
	type(ARMSBOTH1, armsboth), type(REMOTECONTROL1, remotecontrol), type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(FLOOR1, rug),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([FLOOR1]), used([]), eaten([]), jump([character1]), stretch([ARMSBOTH1, LEGSBOTH1])], P).

% Face washing
get_relevant(face_washing, [FAUCET1, WATER1, HANDSBOTH1, FACE1, FACESOAP1, SINK1]) :-
	type(FAUCET1, faucet), type(WATER1, water), type(HANDSBOTH1, handsboth), type(FACE1, face), type(FACESOAP1, facesoap), type(SINK1, sink).
complete_task(face_washing, P) :-
	type(FAUCET1, faucet), type(WATER1, water), type(HANDSBOTH1, handsboth), type(FACE1, face), type(FACESOAP1, facesoap), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([WATER1, FACESOAP1]), rinse([FACE1]), scrub([FACE1]), spread([FACESOAP1]), wash([FACE1])], P).

% Family meetings
get_relevant(family_meetings, [MAN1, WOMAN1, COUCH1, WOMAN2]) :-
	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch), type(WOMAN2, woman).
complete_task(family_meetings, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch), type(WOMAN2, woman),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), talk([MAN1, WOMAN1])], P).

% Fax forms to doctor
get_relevant(fax_forms_to_doctor, [PEN1, DOCUMENT1, FAXMACHINE1, CHAIR1, FILINGCABINET1, DESK1]) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(FAXMACHINE1, faxmachine), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk).
complete_task(fax_forms_to_doctor, P) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(FAXMACHINE1, faxmachine), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[DOCUMENT1, FAXMACHINE1]]), inside([]), on([FAXMACHINE1]), laid_on([]), used([]), eaten([])], P).

% Feed me
get_relevant(feed_me, [FOODFOOD1, PLATE1, FORK1, FOODFOOD2]) :-
	type(FOODFOOD1, foodfood), type(PLATE1, plate), type(FORK1, fork), type(FOODFOOD2, foodfood).
complete_task(feed_me, P) :-
	type(FOODFOOD1, foodfood), type(PLATE1, plate), type(FORK1, fork), type(FOODFOOD2, foodfood),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% File documents
get_relevant(file_documents, [PEN1, DOCUMENT1, CHAIR1, FILINGCABINET1, DESK1]) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk).
complete_task(file_documents, P) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk),
	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([DOCUMENT1])], P).

% File expense reports
get_relevant(file_expense_reports, [KEYBOARD1, CHAIR1, FILINGCABINET1, MOUSE1, FOLDER1, DESK1, COMPUTER1, RECEIPT1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(MOUSE1, mouse), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer), type(RECEIPT1, receipt).
complete_task(file_expense_reports, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(MOUSE1, mouse), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer), type(RECEIPT1, receipt),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[MOUSE1, DESK1], [FOLDER1, DESK1], [RECEIPT1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), closed([FILINGCABINET1]), open([FOLDER1, DESK1]), type([KEYBOARD1])], P).

% Fix broken toys
get_relevant(fix_broken_toys, [CLOSET1, TOY1, TABLE1]) :-
	type(CLOSET1, closet), type(TOY1, toy), type(TABLE1, tabl).
complete_task(fix_broken_toys, P) :-
	type(CLOSET1, closet), type(TOY1, toy), type(TABLE1, tabl),
	transform([close([]), holds([TOY1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([TOY1])], P).

% Fluff pillows
get_relevant(fluff_pillows, [PILLOW2, PILLOW1, BED1]) :-
	type(PILLOW2, pillow), type(PILLOW1, pillow), type(BED1, bed).
complete_task(fluff_pillows, P) :-
	type(PILLOW2, pillow), type(PILLOW1, pillow), type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), pull([PILLOW2, PILLOW1]), push([PILLOW2, PILLOW1]), shake([PILLOW2, PILLOW1]), sleep([character1]), squeeze([PILLOW2, PILLOW1])], P).

% Flush toilet
get_relevant(flush_toilet, [TOILET1]) :-
	type(TOILET1, toilet).
complete_task(flush_toilet, P) :-
	type(TOILET1, toilet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1])], P).

% Fold laundry
get_relevant(fold_laundry, [CLOTHESSHIRT1, COFFEETABLE1, BASKETFORCLOTHES1, CLOTHESPANTS1, SOFA1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(COFFEETABLE1, tabl), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESPANTS1, clothespants), type(SOFA1, sofa).
complete_task(fold_laundry, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(COFFEETABLE1, tabl), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESPANTS1, clothespants), type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [BASKETFORCLOTHES1, COFFEETABLE1], [CLOTHESPANTS1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESSHIRT1, CLOTHESPANTS1])], P).

% Get dressed
get_relevant(get_dressed, [CLOTHESSHIRT1, CLOSET1, CLOTHESPANTS1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants).
complete_task(get_dressed, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants),
	transform([close([]), holds([CLOTHESSHIRT1, CLOTHESPANTS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESSHIRT1, CLOTHESPANTS1])], P).

% Get drink
get_relevant(get_drink, [WATER1, SINK1, KITCHENCABINET1, GLASS1, FRIDGE1]) :-
	type(WATER1, water), type(SINK1, sink), type(KITCHENCABINET1, kitchencabinet), type(GLASS1, glass), type(FRIDGE1, fridge).
complete_task(get_drink, P) :-
	type(WATER1, water), type(SINK1, sink), type(KITCHENCABINET1, kitchencabinet), type(GLASS1, glass), type(FRIDGE1, fridge),
	transform([close([]), holds([WATER1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1]), open([FRIDGE1]), pour([WATER1])], P).

% Get glass of milk
get_relevant(get_glass_of_milk, [FRIDGE1, MILK1, GLASS1]) :-
	type(FRIDGE1, fridge), type(MILK1, milk), type(GLASS1, glass).
complete_task(get_glass_of_milk, P) :-
	type(FRIDGE1, fridge), type(MILK1, milk), type(GLASS1, glass),
	transform([close([]), holds([GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), pour([MILK1])], P).

% Get glass of water
get_relevant(get_glass_of_water, [FAUCET1, GLASS1, KITCHENCABINET1, SINK1]) :-
	type(FAUCET1, faucet), type(GLASS1, glass), type(KITCHENCABINET1, kitchencabinet), type(SINK1, sink).
complete_task(get_glass_of_water, P) :-
	type(FAUCET1, faucet), type(GLASS1, glass), type(KITCHENCABINET1, kitchencabinet), type(SINK1, sink),
	transform([close([]), holds([GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1]), off([FAUCET1])], P).

% Get out dish
get_relevant(get_out_dish, [PLATE1, CUPBOARD1]) :-
	type(PLATE1, plate), type(CUPBOARD1, cupboard).
complete_task(get_out_dish, P) :-
	type(PLATE1, plate), type(CUPBOARD1, cupboard),
	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CUPBOARD1])], P).

% Get ready for work
get_relevant(get_ready_for_work, [SHOES1, MIRROR1, FACE1, CLOSET1, BLOWDRYER1, FOUNDATION1, HAIR1, CLOTHESDRESS1]) :-
	type(SHOES1, shoes), type(MIRROR1, mirror), type(FACE1, face), type(CLOSET1, closet), type(BLOWDRYER1, blowdryer), type(FOUNDATION1, foundation), type(HAIR1, hair), type(CLOTHESDRESS1, clothesdress).
complete_task(get_ready_for_work, P) :-
	type(SHOES1, shoes), type(MIRROR1, mirror), type(FACE1, face), type(CLOSET1, closet), type(BLOWDRYER1, blowdryer), type(FOUNDATION1, foundation), type(HAIR1, hair), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([SHOES1, CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), closed([CLOSET1]), off([BLOWDRYER1]), plugin([BLOWDRYER1]), puton([SHOES1, CLOTHESDRESS1]), spread([FOUNDATION1])], P).

% Get some water
get_relevant(get_some_water, [CHAIR1, CLOTHNAPKIN1]) :-
	type(CHAIR1, chair), type(CLOTHNAPKIN1, clothnapkin).
complete_task(get_some_water, P) :-
	type(CHAIR1, chair), type(CLOTHNAPKIN1, clothnapkin),
	transform([close([]), holds([CLOTHNAPKIN1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([CLOTHNAPKIN1]), push([CHAIR1]), wipe([CHAIR1])], P).

% Get toilet paper
get_relevant(get_toilet_paper, [TOILETPAPER1]) :-
	type(TOILETPAPER1, toiletpaper).
complete_task(get_toilet_paper, P) :-
	type(TOILETPAPER1, toiletpaper),
	transform([close([]), holds([TOILETPAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([])], P).

% Getting  dresses
get_relevant(getting__dresses, [CLOTHESSHIRT1, CLOSET1, CLOTHESPANTS1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants).
complete_task(getting__dresses, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants),
	transform([close([]), holds([CLOTHESSHIRT1, CLOTHESPANTS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESSHIRT1, CLOTHESPANTS1])], P).

% Give milk to cat
get_relevant(give_milk_to_cat, [MILK1, PLATE1, CAT1]) :-
	type(MILK1, milk), type(PLATE1, plate), type(CAT1, cat).
complete_task(give_milk_to_cat, P) :-
	type(MILK1, milk), type(PLATE1, plate), type(CAT1, cat),
	transform([close([]), holds([MILK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1]), pull([CAT1]), scrub([CAT1]), touch([CAT1])], P).

% Go pee
get_relevant(go_pee, [CLOTHESUNDERWEAR1, SOAP1, FAUCET1, HANDSBOTH1, TOILET1, SINK1, CLOTHESDRESS1]) :-
	type(CLOTHESUNDERWEAR1, clothesunderwear), type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress).
complete_task(go_pee, P) :-
	type(CLOTHESUNDERWEAR1, clothesunderwear), type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), off([FAUCET1]), rinse([HANDSBOTH1]), standup([character1]), wash([HANDSBOTH1])], P).

% Go to bed
get_relevant(go_to_bed, [BLANKET1, BED1]) :-
	type(BLANKET1, blanket), type(BED1, bed).
complete_task(go_to_bed, P) :-
	type(BLANKET1, blanket), type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), cover([BLANKET1]), sleep([character1]), uncover([BED1])], P).

% Go to sleep
get_relevant(go_to_sleep, [BED1]) :-
	type(BED1, bed).
complete_task(go_to_sleep, P) :-
	type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), sleep([character1])], P).

% Go to toilet
get_relevant(go_to_toilet, [TOILET1]) :-
	type(TOILET1, toilet).
complete_task(go_to_toilet, P) :-
	type(TOILET1, toilet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).

% Grading papers
get_relevant(grading_papers, [PEN1, DOCUMENT1, CHAIR1, TEXTBOOK1, FOLDER1, DESK1, COMPUTER1]) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(TEXTBOOK1, textbook), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer).
complete_task(grading_papers, P) :-
	type(PEN1, pen), type(DOCUMENT1, document), type(CHAIR1, chair), type(TEXTBOOK1, textbook), type(FOLDER1, folder), type(DESK1, desk), type(COMPUTER1, computer),
	transform([close([]), holds([PEN1, DOCUMENT1, TEXTBOOK1]), sat_on([CHAIR1]), on_top_of([[FOLDER1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([FOLDER1, DESK1]), read([TEXTBOOK1]), write([DOCUMENT1])], P).

% Greet guests
get_relevant(greet_guests, [WOMAN2, WOMAN1]) :-
	type(WOMAN2, woman), type(WOMAN1, woman).
complete_task(greet_guests, P) :-
	type(WOMAN2, woman), type(WOMAN1, woman),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).

% Greet people
get_relevant(greet_people, [MAN2, MAN1, WOMAN1, WOMAN2]) :-
	type(MAN2, man), type(MAN1, man), type(WOMAN1, woman), type(WOMAN2, woman).
complete_task(greet_people, P) :-
	type(MAN2, man), type(MAN1, man), type(WOMAN1, woman), type(WOMAN2, woman),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN2, MAN1, WOMAN1, WOMAN2])], P).

% Hair
get_relevant(hair, [HAIRBRUSH1, MIRROR1, HAIR1, COMB1]) :-
	type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair), type(COMB1, comb).
complete_task(hair, P) :-
	type(HAIRBRUSH1, hairbrush), type(MIRROR1, mirror), type(HAIR1, hair), type(COMB1, comb),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1])], P).

% Hair dressing
get_relevant(hair_dressing, [HAIRBRUSH1, HAIRDRYER1, HAIR1]) :-
	type(HAIRBRUSH1, hairbrush), type(HAIRDRYER1, hairdryer), type(HAIR1, hair).
complete_task(hair_dressing, P) :-
	type(HAIRBRUSH1, hairbrush), type(HAIRDRYER1, hairdryer), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), off([HAIRDRYER1]), plugin([HAIRDRYER1]), shake([HAIRDRYER1])], P).

% Hand washing
get_relevant(hand_washing, [SOAP1, FAUCET1, HANDSBOTH1, TOWEL1, SINK1]) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOWEL1, towel), type(SINK1, sink).
complete_task(hand_washing, P) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOWEL1, towel), type(SINK1, sink),
	transform([close([]), holds([TOWEL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), scrub([HANDSBOTH1]), wash([HANDSBOTH1]), wipe([HANDSBOTH1])], P).

% Hang out
get_relevant(hang_out, [WOMAN2, WOMAN1, COUCH1]) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch).
complete_task(hang_out, P) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).

% Hang up jacket
get_relevant(hang_up_jacket, [HANGER1, CLOTHESJACKET1]) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket).
complete_task(hang_up_jacket, P) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Hang with friends
get_relevant(hang_with_friends, [MAN1, WOMAN1, COUCH1]) :-
	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch).
complete_task(hang_with_friends, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1])], P).

% Have conversation with boyfriend
get_relevant(have_conversation_with_boyfriend, [MAN1, SOFA1]) :-
	type(MAN1, man), type(SOFA1, sofa).
complete_task(have_conversation_with_boyfriend, P) :-
	type(MAN1, man), type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).

% Have quality family time
get_relevant(have_quality_family_time, [TABLE1, CHAIR1, DECKOFCARDS1, CHILD1, CARDS1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(DECKOFCARDS1, deckofcards), type(CHILD1, child), type(CARDS1, cards).
complete_task(have_quality_family_time, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(DECKOFCARDS1, deckofcards), type(CHILD1, child), type(CARDS1, cards),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DECKOFCARDS1, TABLE1], [CARDS1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), play([CARDS1])], P).

% Have snack
get_relevant(have_snack, [JUICE1, GLASS1, FRIDGE1, FOODSNACK1, CUPBOARD1]) :-
	type(JUICE1, juice), type(GLASS1, glass), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CUPBOARD1, cupboard).
complete_task(have_snack, P) :-
	type(JUICE1, juice), type(GLASS1, glass), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODSNACK1]), drink([GLASS1])], P).

% Help organize files
get_relevant(help_organize_files, [PEN1, BOX4, BOX1, DOCUMENT1, BOX2, DOCUMENT2, BOX3, DOCUMENT4, DOCUMENT3]) :-
	type(PEN1, pen), type(BOX4, box), type(BOX1, box), type(DOCUMENT1, document), type(BOX2, box), type(DOCUMENT2, document), type(BOX3, box), type(DOCUMENT4, document), type(DOCUMENT3, document).
complete_task(help_organize_files, P) :-
	type(PEN1, pen), type(BOX4, box), type(BOX1, box), type(DOCUMENT1, document), type(BOX2, box), type(DOCUMENT2, document), type(BOX3, box), type(DOCUMENT4, document), type(DOCUMENT3, document),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, BOX1], [DOCUMENT2, BOX2], [DOCUMENT3, BOX3], [DOCUMENT4, BOX4]]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([BOX4, BOX1, BOX2, BOX3])], P).

% Hide
get_relevant(hides, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(hides, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([CHAIR1]), pull([CHAIR1]), push([CHAIR1])], P).

% Homework
get_relevant(homework, [KEYBOARD1, CHAIR1, NOTEBOOK1, NOTES1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(NOTES1, notes), type(COMPUTER1, computer).
complete_task(homework, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(NOTES1, notes), type(COMPUTER1, computer),
	transform([close([]), holds([NOTEBOOK1, NOTES1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([NOTES1]), type([KEYBOARD1])], P).

% Ignore people
get_relevant(ignore_people, [EYESBOTH1, LEGSBOTH1, BED1]) :-
	type(EYESBOTH1, eyesboth), type(LEGSBOTH1, legsboth), type(BED1, bed).
complete_task(ignore_people, P) :-
	type(EYESBOTH1, eyesboth), type(LEGSBOTH1, legsboth), type(BED1, bed),
	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([EYESBOTH1]), stretch([LEGSBOTH1])], P).

% In living room i eat dinner
get_relevant(in_living_room_i_eat_dinner, [FOODFOOD1, COFFEETABLE1, PLATE1, WINEGLASS1, COUCH1, REMOTECONTROL1, WINE1, TELEVISION1, FORK1]) :-
	type(FOODFOOD1, foodfood), type(COFFEETABLE1, tabl), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(WINE1, wine), type(TELEVISION1, television), type(FORK1, fork).
complete_task(in_living_room_i_eat_dinner, P) :-
	type(FOODFOOD1, foodfood), type(COFFEETABLE1, tabl), type(PLATE1, plate), type(WINEGLASS1, wineglass), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(WINE1, wine), type(TELEVISION1, television), type(FORK1, fork),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([PLATE1]), drink([WINEGLASS1])], P).

% Iron shirt
get_relevant(iron_shirt, [CLOTHESSHIRT1, IRONINGBOARD1, IRON1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(IRONINGBOARD1, ironingboard), type(IRON1, iron).
complete_task(iron_shirt, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(IRONINGBOARD1, ironingboard), type(IRON1, iron),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, IRONINGBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([IRON1])], P).

% Keep an eye on stove as something is cooking
get_relevant(keep_an_eye_on_stove_as_something_is_cooking, [STOVE1, POT1, WALLCLOCK1]) :-
	type(STOVE1, stove), type(POT1, pot), type(WALLCLOCK1, wallclock).
complete_task(keep_an_eye_on_stove_as_something_is_cooking, P) :-
	type(STOVE1, stove), type(POT1, pot), type(WALLCLOCK1, wallclock),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([STOVE1])], P).

% Keep cats inside while door is open
get_relevant(keep_cats_inside_while_door_is_open, [CAT1]) :-
	type(CAT1, cat).
complete_task(keep_cats_inside_while_door_is_open, P) :-
	type(CAT1, cat),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CAT1])], P).

% Laugh
get_relevant(laugh, [MAN1, COUCH1, CHILD1, CHILD2]) :-
	type(MAN1, man), type(COUCH1, couch), type(CHILD1, child), type(CHILD2, child).
complete_task(laugh, P) :-
	type(MAN1, man), type(COUCH1, couch), type(CHILD1, child), type(CHILD2, child),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, CHILD1, CHILD2]), laugh([character1])], P).

% Lay down on floor and say, i'm rug
get_relevant(lay_down_on_floor_and_say_im_rug, [CARPET1]) :-
	type(CARPET1, carpet).
complete_task(lay_down_on_floor_and_say_im_rug, P) :-
	type(CARPET1, carpet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([CARPET1]), used([]), eaten([]), speak([character1])], P).

% Lay tablecloth
get_relevant(lay_tablecloth, [TABLECLOTH1]) :-
	type(TABLECLOTH1, tablecloth).
complete_task(lay_tablecloth, P) :-
	type(TABLECLOTH1, tablecloth),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([TABLECLOTH1])], P).

% Let baby learn how to walk
get_relevant(let_baby_learn_how_to_walk, [CHILD1, COUCH1]) :-
	type(CHILD1, child), type(COUCH1, couch).
complete_task(let_baby_learn_how_to_walk, P) :-
	type(CHILD1, child), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), touch([CHILD1])], P).

% Listen to music
get_relevant(listen_to_music, [DVDPLAYER1, SOFA1]) :-
	type(DVDPLAYER1, dvdplayer), type(SOFA1, sofa).
complete_task(listen_to_music, P) :-
	type(DVDPLAYER1, dvdplayer), type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([DVDPLAYER1]), laid_on([]), used([]), eaten([])], P).

% Load dishwasher
get_relevant(load_dishwasher, [FAUCET1, PLATE1, BOWL1, BOWL2, DISHWASHER1, SINK1]) :-
	type(FAUCET1, faucet), type(PLATE1, plate), type(BOWL1, bowl), type(BOWL2, bowl), type(DISHWASHER1, dishwasher), type(SINK1, sink).
complete_task(load_dishwasher, P) :-
	type(FAUCET1, faucet), type(PLATE1, plate), type(BOWL1, bowl), type(BOWL2, bowl), type(DISHWASHER1, dishwasher), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1], [BOWL1, DISHWASHER1], [BOWL2, DISHWASHER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1]), off([FAUCET1]), rinse([PLATE1, BOWL1, BOWL2])], P).

% Lock door


% Look in refrigerator
get_relevant(look_in_refrigerator, [FRIDGE1, KITCHENCABINET1, FOODFOOD2]) :-
	type(FRIDGE1, fridge), type(KITCHENCABINET1, kitchencabinet), type(FOODFOOD2, foodfood).
complete_task(look_in_refrigerator, P) :-
	type(FRIDGE1, fridge), type(KITCHENCABINET1, kitchencabinet), type(FOODFOOD2, foodfood),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, KITCHENCABINET1])], P).

% Look out window
get_relevant(look_out_window, [WINDOW1]) :-
	type(WINDOW1, window).
complete_task(look_out_window, P) :-
	type(WINDOW1, window),
	transform([close([WINDOW1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Mail signed letter to customer
get_relevant(mail_signed_letter_to_customer, [PEN1, STAMP1, DOCUMENT1, KEYBOARD1, ENVELOPE1, ADDRESSBOOK1, COMPUTER1, PRINTER1]) :-
	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(ENVELOPE1, envelope), type(ADDRESSBOOK1, addressbook), type(COMPUTER1, computer), type(PRINTER1, printer).
complete_task(mail_signed_letter_to_customer, P) :-
	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(ENVELOPE1, envelope), type(ADDRESSBOOK1, addressbook), type(COMPUTER1, computer), type(PRINTER1, printer),
	transform([close([]), holds([PEN1, ADDRESSBOOK1]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [DOCUMENT1, ENVELOPE1]]), inside([]), on([COMPUTER1, PRINTER1]), laid_on([]), used([]), eaten([]), fold([DOCUMENT1]), read([DOCUMENT1]), type([KEYBOARD1]), write([ENVELOPE1])], P).

% Make  cookies
get_relevant(make__cookies, [COFFEETABLE1, DOUGH1, OVEN1, TRAY1, FRIDGE1, OVENMITTS1]) :-
	type(COFFEETABLE1, tabl), type(DOUGH1, dough), type(OVEN1, oven), type(TRAY1, tray), type(FRIDGE1, fridge), type(OVENMITTS1, ovenmitts).
complete_task(make__cookies, P) :-
	type(COFFEETABLE1, tabl), type(DOUGH1, dough), type(OVEN1, oven), type(TRAY1, tray), type(FRIDGE1, fridge), type(OVENMITTS1, ovenmitts),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DOUGH1, TRAY1], [TRAY1, COFFEETABLE1], [OVENMITTS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), putin([TRAY1]), puton([OVENMITTS1]), wait([character1])], P).

% Make bed
get_relevant(make_bed, [PILLOW2, SHEETS1, BED1, PILLOW1, BLANKET1]) :-
	type(PILLOW2, pillow), type(SHEETS1, sheets), type(BED1, bed), type(PILLOW1, pillow), type(BLANKET1, blanket),
	PILLOW2 \= PILLOW1, SHEETS1 \= BLANKET1.
complete_task(make_bed, P) :-
	type(PILLOW2, pillow), type(SHEETS1, sheets), type(BED1, bed), type(PILLOW1, pillow), type(BLANKET1, blanket),
	PILLOW2 \= PILLOW1, SHEETS1 \= BLANKET1,
	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, BED1], [SHEETS1, BED1], [PILLOW1, BED1], [BLANKET1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Make cereal
get_relevant(make_cereal, [MILK1, TABLE1, BOWL1, FOODCEREAL1, SPOON1, FRIDGE1, CUPBOARD1]) :-
	type(MILK1, milk), type(TABLE1, tabl), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard).
complete_task(make_cereal, P) :-
	type(MILK1, milk), type(TABLE1, tabl), type(BOWL1, bowl), type(FOODCEREAL1, foodcereal), type(SPOON1, spoon), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard),
	transform([close([]), holds([SPOON1]), sat_on([]), on_top_of([[BOWL1, TABLE1], [FOODCEREAL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1]), pour([MILK1])], P).

% Make child's bed
get_relevant(make_childs_bed, [BED1]) :-
	type(BED1, bed).
complete_task(make_childs_bed, P) :-
	type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([BED1]), wipe([BED1])], P).

% Make coffee
get_relevant(make_coffee, [GROUNDCOFFEE1, COFFEEFILTER1, COFFEMAKER1]) :-
	type(GROUNDCOFFEE1, groundcoffee), type(COFFEEFILTER1, coffeefilter), type(COFFEMAKER1, coffemaker).
complete_task(make_coffee, P) :-
	type(GROUNDCOFFEE1, groundcoffee), type(COFFEEFILTER1, coffeefilter), type(COFFEMAKER1, coffemaker),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROUNDCOFFEE1, COFFEMAKER1], [COFFEEFILTER1, COFFEMAKER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([COFFEMAKER1]), plugin([COFFEMAKER1])], P).

% Make drink
get_relevant(make_drink, [MILK1, KITCHENCABINET1, SPOON1, GLASS1]) :-
	type(MILK1, milk), type(KITCHENCABINET1, kitchencabinet), type(SPOON1, spoon), type(GLASS1, glass).
complete_task(make_drink, P) :-
	type(MILK1, milk), type(KITCHENCABINET1, kitchencabinet), type(SPOON1, spoon), type(GLASS1, glass),
	transform([close([]), holds([MILK1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1])], P).

% Make eggs
get_relevant(make_eggs, [FRYINGPAN1, FOODEGG2, STOVE1, FRIDGE1, FOODEGG1]) :-
	type(FRYINGPAN1, fryingpan), type(FOODEGG2, foodegg), type(STOVE1, stove), type(FRIDGE1, fridge), type(FOODEGG1, foodegg).
complete_task(make_eggs, P) :-
	type(FRYINGPAN1, fryingpan), type(FOODEGG2, foodegg), type(STOVE1, stove), type(FRIDGE1, fridge), type(FOODEGG1, foodegg),
	transform([close([]), holds([FRYINGPAN1]), sat_on([]), on_top_of([[FOODEGG2, FRYINGPAN1], [FOODEGG1, FRYINGPAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), off([STOVE1]), shake([FRYINGPAN1])], P).

% Make ice in ice trays for freezer
get_relevant(make_ice_in_ice_trays_for_freezer, [WATER1]) :-
	type(WATER1, water).
complete_task(make_ice_in_ice_trays_for_freezer, P) :-
	type(WATER1, water),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).

% Make jello
get_relevant(make_jello, [WATER1]) :-
	type(WATER1, water).
complete_task(make_jello, P) :-
	type(WATER1, water),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).

% Make sandwich
get_relevant(make_sandwich, [FOODBREAD2, PLATE1, FOODVEGETABLE2, FOODVEGETABLE1, FOODBREAD1, SAUCE1, FOODVEGETABLE3]) :-
	type(FOODBREAD2, foodbread), type(PLATE1, plate), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODBREAD1, foodbread), type(SAUCE1, sauce), type(FOODVEGETABLE3, foodvegetable).
complete_task(make_sandwich, P) :-
	type(FOODBREAD2, foodbread), type(PLATE1, plate), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODBREAD1, foodbread), type(SAUCE1, sauce), type(FOODVEGETABLE3, foodvegetable),
	transform([close([]), holds([FOODBREAD2]), sat_on([]), on_top_of([[PLATE1, FOODBREAD1], [FOODVEGETABLE2, FOODBREAD1], [FOODVEGETABLE1, FOODBREAD1], [FOODBREAD1, PLATE1], [SAUCE1, FOODVEGETABLE3], [FOODVEGETABLE3, FOODBREAD1]]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1])], P).

% Make several copies on printer
get_relevant(make_several_copies_on_printer, [DOCUMENT1, PAPER1, DESK1, PRINTER1]) :-
	type(DOCUMENT1, document), type(PAPER1, paper), type(DESK1, desk), type(PRINTER1, printer).
complete_task(make_several_copies_on_printer, P) :-
	type(DOCUMENT1, document), type(PAPER1, paper), type(DESK1, desk), type(PRINTER1, printer),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, PRINTER1], [PAPER1, PRINTER1]]), inside([]), on([PRINTER1]), laid_on([]), used([]), eaten([]), touch([PRINTER1])], P).

% Make tea
get_relevant(make_tea, [FAUCET1, TABLE1, TEABAG1, STOVE1, CUP1, POT1, TEA1, SINK1, CUPBOARD1]) :-
	type(FAUCET1, faucet), type(TABLE1, tabl), type(TEABAG1, teabag), type(STOVE1, stove), type(CUP1, cup), type(POT1, pot), type(TEA1, tea), type(SINK1, sink), type(CUPBOARD1, cupboard).
complete_task(make_tea, P) :-
	type(FAUCET1, faucet), type(TABLE1, tabl), type(TEABAG1, teabag), type(STOVE1, stove), type(CUP1, cup), type(POT1, pot), type(TEA1, tea), type(SINK1, sink), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TEABAG1, TABLE1], [CUP1, TABLE1], [TEA1, TABLE1]]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), drop([TEABAG1]), off([STOVE1]), pour([TEA1]), wait([character1])], P).

% Make toast
get_relevant(make_toast, [TOASTER1, FOODBREAD1]) :-
	type(TOASTER1, toaster), type(FOODBREAD1, foodbread).
complete_task(make_toast, P) :-
	type(TOASTER1, toaster), type(FOODBREAD1, foodbread),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, TOASTER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([]), plugin([TOASTER1])], P).

% Massage
get_relevant(massage, [ARMSBOTH1, MAN1, BED1, FEETBOTH1, LEGSBOTH1]) :-
	type(ARMSBOTH1, armsboth), type(MAN1, man), type(BED1, bed), type(FEETBOTH1, feetboth), type(LEGSBOTH1, legsboth).
complete_task(massage, P) :-
	type(ARMSBOTH1, armsboth), type(MAN1, man), type(BED1, bed), type(FEETBOTH1, feetboth), type(LEGSBOTH1, legsboth),
	transform([close([]), holds([]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1]), squeeze([ARMSBOTH1, FEETBOTH1, LEGSBOTH1]), standup([character1]), stretch([ARMSBOTH1, LEGSBOTH1]), touch([ARMSBOTH1, MAN1, FEETBOTH1, LEGSBOTH1])], P).

% Meeting
get_relevant(meeting, [MAN2, DOCUMENT1, MAN1, FOLDER1, DESK1, SOFA1]) :-
	type(MAN2, man), type(DOCUMENT1, document), type(MAN1, man), type(FOLDER1, folder), type(DESK1, desk), type(SOFA1, sofa).
complete_task(meeting, P) :-
	type(MAN2, man), type(DOCUMENT1, document), type(MAN1, man), type(FOLDER1, folder), type(DESK1, desk), type(SOFA1, sofa),
	transform([close([]), holds([DOCUMENT1, FOLDER1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FOLDER1]), greet([MAN2, MAN1]), read([DOCUMENT1])], P).

% Mop
get_relevant(mop, [FAUCET1, MOP1, CLEANINGSOLUTION1, MOPBUCKET1, FLOOR1]) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor).
complete_task(mop, P) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), soak([MOP1]), squeeze([MOP1]), wash([FLOOR1])], P).

% Mop floor
get_relevant(mop_floor, [FAUCET1, MOP1, CLEANINGSOLUTION1, SINK1, MOPBUCKET1, FLOOR1]) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(SINK1, sink), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor).
complete_task(mop_floor, P) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(CLEANINGSOLUTION1, cleaningsolution), type(SINK1, sink), type(MOPBUCKET1, mopbucket), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLEANINGSOLUTION1, FLOOR1], [MOP1, MOPBUCKET1], [MOPBUCKET1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), scrub([MOP1])], P).

% Movie
get_relevant(movie, [CDPLAYER1, TELEVISION1]) :-
	type(CDPLAYER1, cdplayer), type(TELEVISION1, television).
complete_task(movie, P) :-
	type(CDPLAYER1, cdplayer), type(TELEVISION1, television),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), off([CDPLAYER1])], P).

% Open curtains
get_relevant(open_curtains, [CURTAIN2, CURTAIN1]) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain).
complete_task(open_curtains, P) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CURTAIN2, CURTAIN1])], P).

% Open door


% Organise paperwork
get_relevant(organise_paperwork, [PAPER1]) :-
	type(PAPER1, paper).
complete_task(organise_paperwork, P) :-
	type(PAPER1, paper),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([PAPER1]), write([PAPER1])], P).

% Organize
get_relevant(organize, [TOOTHBRUSH1, CUPBOARD1, BRUSH1, AFTERSHAVE1]) :-
	type(TOOTHBRUSH1, toothbrush), type(CUPBOARD1, cupboard), type(BRUSH1, brush), type(AFTERSHAVE1, aftershave).
complete_task(organize, P) :-
	type(TOOTHBRUSH1, toothbrush), type(CUPBOARD1, cupboard), type(BRUSH1, brush), type(AFTERSHAVE1, aftershave),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOOTHBRUSH1, CUPBOARD1], [BRUSH1, CUPBOARD1], [AFTERSHAVE1, CUPBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CUPBOARD1])], P).

% Organize closet
get_relevant(organize_closet, [CLOTHESSHIRT1, CLOTHESSHIRT2, CLOTHESSHIRT3, CLOSET1, CLOTHESPANTS1, CLOTHESPANTS2, BASKETFORCLOTHES1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESSHIRT3, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants), type(BASKETFORCLOTHES1, basketforclothes).
complete_task(organize_closet, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESSHIRT3, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants), type(BASKETFORCLOTHES1, basketforclothes),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES1], [CLOTHESSHIRT3, BASKETFORCLOTHES1], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).

% Organize desk
get_relevant(organize_desk, [NEWSPAPER1, DOCUMENT1, FILINGCABINET1, BOOK1, FOLDER1, DESK1]) :-
	type(NEWSPAPER1, newspaper), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet), type(BOOK1, book), type(FOLDER1, folder), type(DESK1, desk).
complete_task(organize_desk, P) :-
	type(NEWSPAPER1, newspaper), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet), type(BOOK1, book), type(FOLDER1, folder), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([]), on_top_of([[NEWSPAPER1, BOOK1], [DOCUMENT1, BOOK1], [FOLDER1, BOOK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([NEWSPAPER1]), open([FILINGCABINET1, FOLDER1]), putin([DOCUMENT1, FOLDER1])], P).

% Pack lunch
get_relevant(pack_lunch, [FOODFOOD1, FOODCHEESE1, BOX1, TABLE1, BOWL3, BOWL1, ICE1, BOWL2, KITCHENCABINET1, FREEZER1, FOODVEGETABLE1, FRIDGE1]) :-
	type(FOODFOOD1, foodfood), type(FOODCHEESE1, foodcheese), type(BOX1, box), type(TABLE1, tabl), type(BOWL3, bowl), type(BOWL1, bowl), type(ICE1, ice), type(BOWL2, bowl), type(KITCHENCABINET1, kitchencabinet), type(FREEZER1, freezer), type(FOODVEGETABLE1, foodvegetable), type(FRIDGE1, fridge).
complete_task(pack_lunch, P) :-
	type(FOODFOOD1, foodfood), type(FOODCHEESE1, foodcheese), type(BOX1, box), type(TABLE1, tabl), type(BOWL3, bowl), type(BOWL1, bowl), type(ICE1, ice), type(BOWL2, bowl), type(KITCHENCABINET1, kitchencabinet), type(FREEZER1, freezer), type(FOODVEGETABLE1, foodvegetable), type(FRIDGE1, fridge),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, BOWL1], [FOODCHEESE1, BOWL1], [BOX1, TABLE1], [FOODVEGETABLE1, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Paint nails
get_relevant(paint_nails, [TRASHCAN1, BED1, PAPERTOWEL1, NAILPOLISH1]) :-
	type(TRASHCAN1, trashcan), type(BED1, bed), type(PAPERTOWEL1, papertowel), type(NAILPOLISH1, nailpolish).
complete_task(paint_nails, P) :-
	type(TRASHCAN1, trashcan), type(BED1, bed), type(PAPERTOWEL1, papertowel), type(NAILPOLISH1, nailpolish),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPERTOWEL1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([NAILPOLISH1]), eaten([])], P).

% Pay bills
get_relevant(pay_bills, [KEYBOARD1, CHAIR1, DESK1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer).
complete_task(pay_bills, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Pee
get_relevant(pee, [FAUCET1, HANDSBOTH1, TOILETPAPER1, TOILET1, SINK1]) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink).
complete_task(pee, P) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOILETPAPER1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TOILET1]), flush([TOILET1]), off([FAUCET1]), wash([HANDSBOTH1]), wipe([character1])], P).

% Pet cat
get_relevant(pet_cat, [CAT1]) :-
	type(CAT1, cat).
complete_task(pet_cat, P) :-
	type(CAT1, cat),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CAT1])], P).

% Pet dog
get_relevant(pet_dog, [HANDSBOTH1, COUCH1, DOG1]) :-
	type(HANDSBOTH1, handsboth), type(COUCH1, couch), type(DOG1, dog).
complete_task(pet_dog, P) :-
	type(HANDSBOTH1, handsboth), type(COUCH1, couch), type(DOG1, dog),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([HANDSBOTH1]), touch([DOG1])], P).

% Physical therapy
get_relevant(physical_therapy, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(physical_therapy, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([CHAIR1]), wipe([CHAIR1])], P).

% Pick up
get_relevant(pick_up, [TOY1]) :-
	type(TOY1, toy).
complete_task(pick_up, P) :-
	type(TOY1, toy),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([TOY1]), wash([TOY1])], P).

% Pick up dirty dishes
get_relevant(pick_up_dirty_dishes, [TABLE1]) :-
	type(TABLE1, tabl).
complete_task(pick_up_dirty_dishes, P) :-
	type(TABLE1, tabl),
	transform([close([TABLE1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Pick up obvious trash
get_relevant(pick_up_obvious_trash, [TRASHCAN1, PAPER2, PAPER3, PAPER1]) :-
	type(TRASHCAN1, trashcan), type(PAPER2, paper), type(PAPER3, paper), type(PAPER1, paper).
complete_task(pick_up_obvious_trash, P) :-
	type(TRASHCAN1, trashcan), type(PAPER2, paper), type(PAPER3, paper), type(PAPER1, paper),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPER2, TRASHCAN1], [PAPER3, TRASHCAN1], [PAPER1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Pick up phone
get_relevant(pick_up_phone, [COFFEETABLE1, PHONE1]) :-
	type(COFFEETABLE1, coffeetable), type(PHONE1, phone).
complete_task(pick_up_phone, P) :-
	type(COFFEETABLE1, coffeetable), type(PHONE1, phone),
	transform([close([]), holds([PHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Pick up toys
get_relevant(pick_up_toys, [TOY2, TOY1, TOY3, CABINET1]) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet).
complete_task(pick_up_toys, P) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Play
get_relevant(play, [TABLE1, COUCH1, SCRABBLE1, CABINET1]) :-
	type(TABLE1, tabl), type(COUCH1, couch), type(SCRABBLE1, scrabble), type(CABINET1, cabinet).
complete_task(play, P) :-
	type(TABLE1, tabl), type(COUCH1, couch), type(SCRABBLE1, scrabble), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SCRABBLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([SCRABBLE1])], P).

% Play games
get_relevant(play_games, [CHAIR1, TELEVISION1, VIDEOGAMECONTROLLER1, VIDEOGAMECONSOLE1]) :-
	type(CHAIR1, chair), type(TELEVISION1, television), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE1, videogameconsole).
complete_task(play_games, P) :-
	type(CHAIR1, chair), type(TELEVISION1, television), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE1, videogameconsole),
	transform([close([]), holds([VIDEOGAMECONTROLLER1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([TELEVISION1, VIDEOGAMECONSOLE1]), laid_on([]), used([]), eaten([])], P).

% Play guitar
get_relevant(play_guitar, [INSTRUMENTGUITAR1, CABINET1]) :-
	type(INSTRUMENTGUITAR1, instrumentguitar), type(CABINET1, cabinet).
complete_task(play_guitar, P) :-
	type(INSTRUMENTGUITAR1, instrumentguitar), type(CABINET1, cabinet),
	transform([close([]), holds([INSTRUMENTGUITAR1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), play([INSTRUMENTGUITAR1])], P).

% Play musical chairs
get_relevant(play_musical_chairs, [CHAIR3, STEREO1, CHAIR1, CHAIR2]) :-
	type(CHAIR3, chair), type(STEREO1, stereo), type(CHAIR1, chair), type(CHAIR2, chair).
complete_task(play_musical_chairs, P) :-
	type(CHAIR3, chair), type(STEREO1, stereo), type(CHAIR1, chair), type(CHAIR2, chair),
	transform([close([]), holds([]), sat_on([CHAIR1, CHAIR2]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([STEREO1]), pull([CHAIR3, CHAIR1, CHAIR2]), run([CHAIR1, CHAIR2]), standup([character1])], P).

% Play with barbies
get_relevant(play_with_barbies, [TOY2, TOY1, BED1, CABINET1]) :-
	type(TOY2, toy), type(TOY1, toy), type(BED1, bed), type(CABINET1, cabinet).
complete_task(play_with_barbies, P) :-
	type(TOY2, toy), type(TOY1, toy), type(BED1, bed), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, BED1], [TOY1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), shake([TOY2]), squeeze([TOY1]), touch([TOY1])], P).

% Playing video game
get_relevant(playing_video_game, [VIDEOGAMECONSOLE1, VIDEOGAMECONTROLLER2, VIDEOGAMECONTROLLER1, VIDEOGAMECONSOLE2]) :-
	type(VIDEOGAMECONSOLE1, videogameconsole), type(VIDEOGAMECONTROLLER2, videogamecontroller), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE2, videogameconsole).
complete_task(playing_video_game, P) :-
	type(VIDEOGAMECONSOLE1, videogameconsole), type(VIDEOGAMECONTROLLER2, videogamecontroller), type(VIDEOGAMECONTROLLER1, videogamecontroller), type(VIDEOGAMECONSOLE2, videogameconsole),
	transform([close([]), holds([VIDEOGAMECONTROLLER2]), sat_on([]), on_top_of([]), inside([]), on([VIDEOGAMECONSOLE2]), laid_on([]), used([]), eaten([]), off([VIDEOGAMECONSOLE1])], P).

% Polish your shoes
get_relevant(polish_your_shoes, [SHOES1, RAG1, BED1, CLEANINGSOLUTION1, BRUSH1, FLOOR1, SHOESHINEKIT1]) :-
	type(SHOES1, shoes), type(RAG1, rag), type(BED1, bed), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush), type(FLOOR1, floor), type(SHOESHINEKIT1, shoeshinekit).
complete_task(polish_your_shoes, P) :-
	type(SHOES1, shoes), type(RAG1, rag), type(BED1, bed), type(CLEANINGSOLUTION1, cleaningsolution), type(BRUSH1, brush), type(FLOOR1, floor), type(SHOESHINEKIT1, shoeshinekit),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([SHOES1]), open([CLEANINGSOLUTION1])], P).

% Polishing floor
get_relevant(polishing_floor, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(polishing_floor, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).

% Pop zit
get_relevant(pop_zit, [FAUCET1, MIRROR1, HANDSBOTH1, FACE1]) :-
	type(FAUCET1, faucet), type(MIRROR1, mirror), type(HANDSBOTH1, handsboth), type(FACE1, face).
complete_task(pop_zit, P) :-
	type(FAUCET1, faucet), type(MIRROR1, mirror), type(HANDSBOTH1, handsboth), type(FACE1, face),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), rinse([HANDSBOTH1]), squeeze([FACE1]), touch([FACE1])], P).

% Practice violin
get_relevant(practice_violin, [INSTRUMENTVIOLIN1, MUSICSTAND1, PAPER1]) :-
	type(INSTRUMENTVIOLIN1, instrumentviolin), type(MUSICSTAND1, musicstand), type(PAPER1, paper).
complete_task(practice_violin, P) :-
	type(INSTRUMENTVIOLIN1, instrumentviolin), type(MUSICSTAND1, musicstand), type(PAPER1, paper),
	transform([close([]), holds([]), sat_on([]), on_top_of([[INSTRUMENTVIOLIN1, MUSICSTAND1], [PAPER1, MUSICSTAND1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([INSTRUMENTVIOLIN1])], P).

% Prepare Dinner
get_relevant(prepare_dinner, [STOVE1, FOODFOOD1]) :-
	type(STOVE1, stove), type(FOODFOOD1, foodfood).
complete_task(prepare_dinner, P) :-
	type(STOVE1, stove), type(FOODFOOD1, foodfood),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, STOVE1]]), inside([]), on([STOVE1]), laid_on([]), used([]), eaten([])], P).

% Prepare breakfast
get_relevant(prepare_breakfast, [FOODBANANA1]) :-
	type(FOODBANANA1, foodbanana).
complete_task(prepare_breakfast, P) :-
	type(FOODBANANA1, foodbanana),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([FOODBANANA1])], P).

% Prepare for work
get_relevant(prepare_for_work, [FOODCHEESE1, CUTTINGBOARD1, FOODBREAD1]) :-
	type(FOODCHEESE1, foodcheese), type(CUTTINGBOARD1, cuttingboard), type(FOODBREAD1, foodbread).
complete_task(prepare_for_work, P) :-
	type(FOODCHEESE1, foodcheese), type(CUTTINGBOARD1, cuttingboard), type(FOODBREAD1, foodbread),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, CUTTINGBOARD1], [FOODCHEESE1, CUTTINGBOARD1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), wrap([FOODBREAD1])], P).

% Prepare letter for mailing
get_relevant(prepare_letter_for_mailing, [PEN1, STAMP1, DOCUMENT1, ENVELOPE1]) :-
	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(ENVELOPE1, envelope).
complete_task(prepare_letter_for_mailing, P) :-
	type(PEN1, pen), type(STAMP1, stamp), type(DOCUMENT1, document), type(ENVELOPE1, envelope),
	transform([close([]), holds([ENVELOPE1]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [DOCUMENT1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([DOCUMENT1]), write([ENVELOPE1])], P).

% Prepare pot of boiling water
get_relevant(prepare_pot_of_boiling_water, [FAUCET1, STOVE1, POT1, SINK1]) :-
	type(FAUCET1, faucet), type(STOVE1, stove), type(POT1, pot), type(SINK1, sink).
complete_task(prepare_pot_of_boiling_water, P) :-
	type(FAUCET1, faucet), type(STOVE1, stove), type(POT1, pot), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[POT1, STOVE1]]), inside([]), on([STOVE1]), laid_on([]), used([]), eaten([]), off([FAUCET1])], P).

% Prepare sandwich
get_relevant(prepare_sandwich, [FOODBREAD2, KNIFE1, TABLE1, PLATE1, FOODPEANUTBUTTER1, FRIDGE1, FOODBREAD1]) :-
	type(FOODBREAD2, foodbread), type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread).
complete_task(prepare_sandwich, P) :-
	type(FOODBREAD2, foodbread), type(KNIFE1, knife), type(TABLE1, tabl), type(PLATE1, plate), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(FRIDGE1, fridge), type(FOODBREAD1, foodbread),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD2, PLATE1], [PLATE1, TABLE1], [FOODPEANUTBUTTER1, KNIFE1], [FOODBREAD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), open([FOODPEANUTBUTTER1]), spread([FOODPEANUTBUTTER1])], P).

% Pretend tea
get_relevant(pretend_tea, [TABLE1, CHILD1, CUP1, CUP2, KETTLE1]) :-
	type(TABLE1, tabl), type(CHILD1, child), type(CUP1, cup), type(CUP2, cup), type(KETTLE1, kettle).
complete_task(pretend_tea, P) :-
	type(TABLE1, tabl), type(CHILD1, child), type(CUP1, cup), type(CUP2, cup), type(KETTLE1, kettle),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CUP1, TABLE1], [CUP2, TABLE1], [KETTLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([CUP1, CUP2]), greet([CHILD1]), pour([KETTLE1])], P).

% Print documents
get_relevant(print_documents, [DOCUMENT1, LAPTOP1, MOUSE1, FOLDER1, PRINTINGPAPER1, PRINTER1]) :-
	type(DOCUMENT1, document), type(LAPTOP1, laptop), type(MOUSE1, mouse), type(FOLDER1, folder), type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer).
complete_task(print_documents, P) :-
	type(DOCUMENT1, document), type(LAPTOP1, laptop), type(MOUSE1, mouse), type(FOLDER1, folder), type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PRINTINGPAPER1, PRINTER1]]), inside([]), on([LAPTOP1, PRINTER1]), laid_on([]), used([]), eaten([]), closed([FOLDER1]), putin([DOCUMENT1])], P).

% Print out papers
get_relevant(print_out_papers, [MOUSE1, PRINTINGPAPER1, COMPUTER1, PRINTER1]) :-
	type(MOUSE1, mouse), type(PRINTINGPAPER1, printingpaper), type(COMPUTER1, computer), type(PRINTER1, printer).
complete_task(print_out_papers, P) :-
	type(MOUSE1, mouse), type(PRINTINGPAPER1, printingpaper), type(COMPUTER1, computer), type(PRINTER1, printer),
	transform([close([]), holds([MOUSE1, PRINTINGPAPER1]), sat_on([]), on_top_of([]), inside([]), on([PRINTER1]), laid_on([]), used([]), eaten([])], P).

% Pull hair out of drain
get_relevant(pull_hair_out_of_drain, [SHAMPOO1]) :-
	type(SHAMPOO1, shampoo).
complete_task(pull_hair_out_of_drain, P) :-
	type(SHAMPOO1, shampoo),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([SHAMPOO1]), wash([SHAMPOO1])], P).

% Pull up carpet
get_relevant(pull_up_carpet, [CARPET1]) :-
	type(CARPET1, carpet).
complete_task(pull_up_carpet, P) :-
	type(CARPET1, carpet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CARPET1]), touch([CARPET1])], P).

% Put away clean clothes
get_relevant(put_away_clean_clothes, [SOAP1]) :-
	type(SOAP1, soap).
complete_task(put_away_clean_clothes, P) :-
	type(SOAP1, soap),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SOAP1])], P).

% Put away groceries
get_relevant(put_away_groceries, [FRIDGE1, GROCERIES1]) :-
	type(FRIDGE1, fridge), type(GROCERIES1, groceries).
complete_task(put_away_groceries, P) :-
	type(FRIDGE1, fridge), type(GROCERIES1, groceries),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put away shoes
get_relevant(put_away_shoes, [SHOES1, CLOSET1]) :-
	type(SHOES1, shoes), type(CLOSET1, closet).
complete_task(put_away_shoes, P) :-
	type(SHOES1, shoes), type(CLOSET1, closet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1,CLOSET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).

% Put away toys
get_relevant(put_away_toys, [TOY2, TOY1, CHILD1, TOY3, CABINET1]) :-
	type(TOY2, toy), type(TOY1, toy), type(CHILD1, child), type(TOY3, toy), type(CABINET1, cabinet).
complete_task(put_away_toys, P) :-
	type(TOY2, toy), type(TOY1, toy), type(CHILD1, child), type(TOY3, toy), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Put clothes away
get_relevant(put_clothes_away, [CABINET1]) :-
	type(CABINET1, cabinet).
complete_task(put_clothes_away, P) :-
	type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Put dishes away
get_relevant(put_dishes_away, [DRINKINGGLASS1, PLATE1, KITCHENCABINET1, DISHWASHER1]) :-
	type(DRINKINGGLASS1, drinkingglass), type(PLATE1, plate), type(KITCHENCABINET1, kitchencabinet), type(DISHWASHER1, dishwasher).
complete_task(put_dishes_away, P) :-
	type(DRINKINGGLASS1, drinkingglass), type(PLATE1, plate), type(KITCHENCABINET1, kitchencabinet), type(DISHWASHER1, dishwasher),
	transform([close([]), holds([DRINKINGGLASS1, PLATE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, DISHWASHER1]), putin([DRINKINGGLASS1, PLATE1])], P).

% Put dvds on shelves
get_relevant(put_dvds_on_shelves, [RAG1, TABLE1, CLEANINGBOTTLE1, CLEANINGSOLUTION1, CD1]) :-
	type(RAG1, rag), type(TABLE1, tabl), type(CLEANINGBOTTLE1, cleaningbottle), type(CLEANINGSOLUTION1, cleaningsolution), type(CD1, cd).
complete_task(put_dvds_on_shelves, P) :-
	type(RAG1, rag), type(TABLE1, tabl), type(CLEANINGBOTTLE1, cleaningbottle), type(CLEANINGSOLUTION1, cleaningsolution), type(CD1, cd),
	transform([close([]), holds([CLEANINGSOLUTION1, CD1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wipe([CD1])], P).

% Put groceries in Fridge
get_relevant(put_groceries_in_fridge, [FRIDGE1, GROCERIES1]) :-
	type(FRIDGE1, fridge), type(GROCERIES1, groceries).
complete_task(put_groceries_in_fridge, P) :-
	type(FRIDGE1, fridge), type(GROCERIES1, groceries),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, FRIDGE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([FRIDGE1])], P).

% Put mail in mail organizer
get_relevant(put_mail_in_mail_organizer, [MAIL1, MAIL2, TABLE1]) :-
	type(MAIL1, mail), type(MAIL2, mail), type(TABLE1, tabl).
complete_task(put_mail_in_mail_organizer, P) :-
	type(MAIL1, mail), type(MAIL2, mail), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[MAIL1, TABLE1], [MAIL2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put new books in shelves
get_relevant(put_new_books_in_shelves, [BOOKSHELF1, BOOK1, BOOK2]) :-
	type(BOOKSHELF1, bookshelf), type(BOOK1, book), type(BOOK2, book),
	BOOK1 \= BOOK2.
complete_task(put_new_books_in_shelves, P) :-
	type(BOOKSHELF1, bookshelf), type(BOOK1, book), type(BOOK2, book),
	BOOK1 \= BOOK2,
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK1, BOOKSHELF1], [BOOK2, BOOKSHELF1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put on coat
get_relevant(put_on_coat, [CLOTHESSHIRT1, CLOSET1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet).
complete_task(put_on_coat, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet),
	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CLOSET1]), puton([CLOTHESSHIRT1])], P).

% Put on foundation
get_relevant(put_on_foundation, [MIRROR1, FACE1, FOUNDATION1, SPONGE1]) :-
	type(MIRROR1, mirror), type(FACE1, face), type(FOUNDATION1, foundation), type(SPONGE1, sponge).
complete_task(put_on_foundation, P) :-
	type(MIRROR1, mirror), type(FACE1, face), type(FOUNDATION1, foundation), type(SPONGE1, sponge),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), spread([FOUNDATION1])], P).

% Put on glasses
get_relevant(put_on_glasses, [SPECTACLES1, DRESSER1]) :-
	type(SPECTACLES1, spectacles), type(DRESSER1, dresser).
complete_task(put_on_glasses, P) :-
	type(SPECTACLES1, spectacles), type(DRESSER1, dresser),
	transform([close([]), holds([SPECTACLES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SPECTACLES1])], P).

% Put on purse, put keys and lucky charms in pockets, leave home
get_relevant(put_on_purse_put_keys_and_lucky_charms_in_pockets_leave_home, [PURSE1, KEYS1, CABINET1]) :-
	type(PURSE1, purse), type(KEYS1, keys), type(CABINET1, cabinet).
complete_task(put_on_purse_put_keys_and_lucky_charms_in_pockets_leave_home, P) :-
	type(PURSE1, purse), type(KEYS1, keys), type(CABINET1, cabinet),
	transform([close([]), holds([PURSE1]), sat_on([]), on_top_of([[KEYS1, PURSE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).

% Put on your shoes
get_relevant(put_on_your_shoes, [SHOES1, FEETBOTH1, CHAIR1]) :-
	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CHAIR1, chair).
complete_task(put_on_your_shoes, P) :-
	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[SHOES1, FEETBOTH1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put them to sleep
get_relevant(put_them_to_sleep, [LAMP1, CHAIR1, BED1, CHILD1, BOOK1]) :-
	type(LAMP1, lamp), type(CHAIR1, chair), type(BED1, bed), type(CHILD1, child), type(BOOK1, book).
complete_task(put_them_to_sleep, P) :-
	type(LAMP1, lamp), type(CHAIR1, chair), type(BED1, bed), type(CHILD1, child), type(BOOK1, book),
	transform([close([]), holds([CHILD1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAMP1]), read([BOOK1])], P).

% Put toys away
get_relevant(put_toys_away, [TOY2, TOY1, TOY3, CABINET1]) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet).
complete_task(put_toys_away, P) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [TOY3, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Put umbrella away
get_relevant(put_umbrella_away, [MOPBUCKET1]) :-
	type(MOPBUCKET1, mopbucket).
complete_task(put_umbrella_away, P) :-
	type(MOPBUCKET1, mopbucket),
	transform([close([MOPBUCKET1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put up coat
get_relevant(put_up_coat, [CLOTHESSHIRT1, CLOSET1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet).
complete_task(put_up_coat, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet),
	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([CLOTHESSHIRT1])], P).

% Put up decoration
get_relevant(put_up_decoration, [WALL1, TABLE1, PAINTING1, CENTERPIECE1]) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece).
complete_task(put_up_decoration, P) :-
	type(WALL1, wall), type(TABLE1, tabl), type(PAINTING1, painting), type(CENTERPIECE1, centerpiece),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAINTING1, WALL1], [CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put up jacket
get_relevant(put_up_jacket, [CLOTHESSHIRT1, CLOSET1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet).
complete_task(put_up_jacket, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(CLOSET1, closet),
	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([CLOTHESSHIRT1])], P).

% Put up towel
get_relevant(put_up_towel, [TOWEL1]) :-
	type(TOWEL1, towel).
complete_task(put_up_towel, P) :-
	type(TOWEL1, towel),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([TOWEL1])], P).

% Re arrange office
get_relevant(re_arrange_office, [LIGHTSWITCH1, CHAIR1, FILINGCABINET1, DESK1, SOFA1]) :-
	type(LIGHTSWITCH1, lightswitch), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk), type(SOFA1, sofa).
complete_task(re_arrange_office, P) :-
	type(LIGHTSWITCH1, lightswitch), type(CHAIR1, chair), type(FILINGCABINET1, filingcabinet), type(DESK1, desk), type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LIGHTSWITCH1]), laid_on([]), used([]), eaten([]), push([CHAIR1, FILINGCABINET1, DESK1, SOFA1])], P).

% Read
get_relevant(read, [CHAIR1, BOOK1]) :-
	type(CHAIR1, chair), type(BOOK1, book).
complete_task(read, P) :-
	type(CHAIR1, chair), type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Read book
get_relevant(read_book, [BOOK1]) :-
	type(BOOK1, book).
complete_task(read_book, P) :-
	type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Read news
get_relevant(read_news, [NEWSPAPER1, CHAIR1]) :-
	type(NEWSPAPER1, newspaper), type(CHAIR1, chair).
complete_task(read_news, P) :-
	type(NEWSPAPER1, newspaper), type(CHAIR1, chair),
	transform([close([]), holds([NEWSPAPER1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([NEWSPAPER1])], P).

% Read newspaper
get_relevant(read_newspaper, [NEWSPAPER1, COUCH1]) :-
	type(NEWSPAPER1, newspaper), type(COUCH1, couch).
complete_task(read_newspaper, P) :-
	type(NEWSPAPER1, newspaper), type(COUCH1, couch),
	transform([close([]), holds([NEWSPAPER1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([NEWSPAPER1])], P).

% Read on sofa
get_relevant(read_on_sofa, [BOOKMARK1, BOOK1, SOFA1]) :-
	type(BOOKMARK1, bookmark), type(BOOK1, book), type(SOFA1, sofa).
complete_task(read_on_sofa, P) :-
	type(BOOKMARK1, bookmark), type(BOOK1, book), type(SOFA1, sofa),
	transform([close([]), holds([BOOK1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Read paper
get_relevant(read_paper, [NEWSPAPER1, TABLE1, CHAIR1, LIGHT1]) :-
	type(NEWSPAPER1, newspaper), type(TABLE1, tabl), type(CHAIR1, chair), type(LIGHT1, light).
complete_task(read_paper, P) :-
	type(NEWSPAPER1, newspaper), type(TABLE1, tabl), type(CHAIR1, chair), type(LIGHT1, light),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[NEWSPAPER1, TABLE1]]), inside([]), on([LIGHT1]), laid_on([]), used([]), eaten([]), fold([NEWSPAPER1]), read([NEWSPAPER1])], P).

% Read them bedtime story
get_relevant(read_them_bedtime_story, [SHEETS1, BED1, CHILD1, BOOK1, BLANKET1, CABINET1]) :-
	type(SHEETS1, sheets), type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(BLANKET1, blanket), type(CABINET1, cabinet).
complete_task(read_them_bedtime_story, P) :-
	type(SHEETS1, sheets), type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(BLANKET1, blanket), type(CABINET1, cabinet),
	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD1]), greet([CHILD1]), read([BOOK1])], P).

% Read to child
get_relevant(read_to_child, [CHAIR1, CHILD1, BOOK1, CABINET1]) :-
	type(CHAIR1, chair), type(CHILD1, child), type(BOOK1, book), type(CABINET1, cabinet).
complete_task(read_to_child, P) :-
	type(CHAIR1, chair), type(CHILD1, child), type(BOOK1, book), type(CABINET1, cabinet),
	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), open([CABINET1]), pull([CHAIR1]), read([BOOK1])], P).

% Read yourself to sleep
get_relevant(read_yourself_to_sleep, [BOOKMARK1, BOOK1, BED1]) :-
	type(BOOKMARK1, bookmark), type(BOOK1, book), type(BED1, bed).
complete_task(read_yourself_to_sleep, P) :-
	type(BOOKMARK1, bookmark), type(BOOK1, book), type(BED1, bed),
	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([[BOOKMARK1, BOOK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1]), sleep([character1])], P).

% Rearrange photo frames
get_relevant(rearrange_photo_frames, [WALL1, PICTURE1, WALL2, PICTURE2]) :-
	type(WALL1, wall), type(PICTURE1, picture), type(WALL2, wall), type(PICTURE2, picture).
complete_task(rearrange_photo_frames, P) :-
	type(WALL1, wall), type(PICTURE1, picture), type(WALL2, wall), type(PICTURE2, picture),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PICTURE1, WALL2], [PICTURE2, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Receive credit card
get_relevant(receive_credit_card, [SCISSORS1, CREDITCARD1, ENVELOPE1]) :-
	type(SCISSORS1, scissors), type(CREDITCARD1, creditcard), type(ENVELOPE1, envelope).
complete_task(receive_credit_card, P) :-
	type(SCISSORS1, scissors), type(CREDITCARD1, creditcard), type(ENVELOPE1, envelope),
	transform([close([]), holds([CREDITCARD1, ENVELOPE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([ENVELOPE1])], P).

% Relax
get_relevant(relax, [COUCH1]) :-
	type(COUCH1, couch).
complete_task(relax, P) :-
	type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([COUCH1]), used([]), eaten([])], P).

% Relax on sofa
get_relevant(relax_on_sofa, [SOFA1]) :-
	type(SOFA1, sofa).
complete_task(relax_on_sofa, P) :-
	type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Research
get_relevant(research, [COMPUTER1, DOCUMENT1]) :-
	type(COMPUTER1, computer), type(DOCUMENT1, document).
complete_task(research, P) :-
	type(COMPUTER1, computer), type(DOCUMENT1, document),
	transform([close([]), holds([DOCUMENT1]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1])], P).

% Scrub face
get_relevant(scrub_face, [HANDSBOTH1, FAUCET1, FACIALCLEANSER1, FACE1, SINK1]) :-
	type(HANDSBOTH1, handsboth), type(FAUCET1, faucet), type(FACIALCLEANSER1, facialcleanser), type(FACE1, face), type(SINK1, sink).
complete_task(scrub_face, P) :-
	type(HANDSBOTH1, handsboth), type(FAUCET1, faucet), type(FACIALCLEANSER1, facialcleanser), type(FACE1, face), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([FACIALCLEANSER1]), rinse([FACE1]), scrub([FACE1]), spread([FACIALCLEANSER1])], P).

% Scrub toilet
get_relevant(scrub_toilet, [FAUCET1, CLEANINGBOTTLE1, TOILET1, BRUSH1]) :-
	type(FAUCET1, faucet), type(CLEANINGBOTTLE1, cleaningbottle), type(TOILET1, toilet), type(BRUSH1, brush).
complete_task(scrub_toilet, P) :-
	type(FAUCET1, faucet), type(CLEANINGBOTTLE1, cleaningbottle), type(TOILET1, toilet), type(BRUSH1, brush),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), off([FAUCET1]), pour([CLEANINGBOTTLE1]), scrub([TOILET1]), squeeze([CLEANINGBOTTLE1]), wash([BRUSH1])], P).

% Send  email
get_relevant(send__email, [MAIL2, KEYBOARD1, CHAIR1, MAIL1, COMPUTER1]) :-
	type(MAIL2, mail), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MAIL1, mail), type(COMPUTER1, computer).
complete_task(send__email, P) :-
	type(MAIL2, mail), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MAIL1, mail), type(COMPUTER1, computer),
	transform([close([]), holds([MAIL2, MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([MAIL2, MAIL1]), type([KEYBOARD1])], P).

% Sent email
get_relevant(sent_email, [COMPUTER1, DESK1, CHAIR1]) :-
	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair).
complete_task(sent_email, P) :-
	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), pull([CHAIR1]), write([character1])], P).

% Serve hors d'oeuvres to entering guests at cocktail party
get_relevant(serve_hors_doeuvres_to_entering_guests_at_cocktail_party, [FOODFOOD1, TABLE1, MAN1, PLATE1, NAPKIN1, WOMAN1, NAPKIN3, WOMAN2, NAPKIN2]) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(MAN1, man), type(PLATE1, plate), type(NAPKIN1, napkin), type(WOMAN1, woman), type(NAPKIN3, napkin), type(WOMAN2, woman), type(NAPKIN2, napkin).
complete_task(serve_hors_doeuvres_to_entering_guests_at_cocktail_party, P) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(MAN1, man), type(PLATE1, plate), type(NAPKIN1, napkin), type(WOMAN1, woman), type(NAPKIN3, napkin), type(WOMAN2, woman), type(NAPKIN2, napkin),
	transform([close([]), holds([PLATE1]), sat_on([]), on_top_of([[FOODFOOD1, PLATE1], [NAPKIN1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1, WOMAN2])], P).

% Set mail on table
get_relevant(set_mail_on_table, [MAIL1, TABLE1]) :-
	type(MAIL1, mail), type(TABLE1, tabl).
complete_task(set_mail_on_table, P) :-
	type(MAIL1, mail), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[MAIL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Set out some snacks for toddler
get_relevant(set_out_some_snacks_for_toddler, [FOODCARROT1, COFFEETABLE1, CRACKERS1]) :-
	type(FOODCARROT1, foodcarrot), type(COFFEETABLE1, tabl), type(CRACKERS1, crackers).
complete_task(set_out_some_snacks_for_toddler, P) :-
	type(FOODCARROT1, foodcarrot), type(COFFEETABLE1, tabl), type(CRACKERS1, crackers),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODCARROT1, COFFEETABLE1], [CRACKERS1, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Set up buffet area
get_relevant(set_up_buffet_area, [TABLE1, NAPKIN1, BOWL1, TABLECLOTH1, FORK1]) :-
	type(TABLE1, tabl), type(NAPKIN1, napkin), type(BOWL1, bowl), type(TABLECLOTH1, tablecloth), type(FORK1, fork).
complete_task(set_up_buffet_area, P) :-
	type(TABLE1, tabl), type(NAPKIN1, napkin), type(BOWL1, bowl), type(TABLECLOTH1, tablecloth), type(FORK1, fork),
	transform([close([]), holds([]), sat_on([]), on_top_of([[NAPKIN1, TABLE1], [BOWL1, TABLE1], [TABLECLOTH1, TABLE1], [FORK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Set up table
get_relevant(set_up_table, [TABLE1, PLATE1, CUP1, CUP2, PLATE2]) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(CUP1, cup), type(CUP2, cup), type(PLATE2, plate).
complete_task(set_up_table, P) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(CUP1, cup), type(CUP2, cup), type(PLATE2, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [CUP1, TABLE1], [CUP2, TABLE1], [PLATE2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Settle in
get_relevant(settle_in, [SHOES1, COUCH1]) :-
	type(SHOES1, shoes), type(COUCH1, couch).
complete_task(settle_in, P) :-
	type(SHOES1, shoes), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Sew
get_relevant(sew, [CHAIR1, CLOSET1, CLOTHESDRESS1]) :-
	type(CHAIR1, chair), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress).
complete_task(sew, P) :-
	type(CHAIR1, chair), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([CLOTHESDRESS1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).

% Sew button
get_relevant(sew_button, [CLOTHESSHIRT1, BED1, DESK1, NEEDLE1, BUTTON1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(DESK1, desk), type(NEEDLE1, needle), type(BUTTON1, button).
complete_task(sew_button, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(DESK1, desk), type(NEEDLE1, needle), type(BUTTON1, button),
	transform([close([]), holds([CLOTHESSHIRT1]), sat_on([BED1]), on_top_of([[NEEDLE1, BED1], [BUTTON1, CLOTHESSHIRT1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), sew([BUTTON1])], P).

% Shampoo hair
get_relevant(shampoo_hair, [FAUCET1, HANDSBOTH1, SHAMPOO1, SINK1, HAIR1]) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(SHAMPOO1, shampoo), type(SINK1, sink), type(HAIR1, hair).
complete_task(shampoo_hair, P) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(SHAMPOO1, shampoo), type(SINK1, sink), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([SHAMPOO1]), wash([HAIR1])], P).

% Shave
get_relevant(shave, [RAZOR1]) :-
	type(RAZOR1, razor).
complete_task(shave, P) :-
	type(RAZOR1, razor),
	transform([close([]), holds([RAZOR1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([RAZOR1]), eaten([])], P).

% Shoe removal
get_relevant(shoe_removal, [SHOES1, SHOES2]) :-
	type(SHOES1, shoes), type(SHOES2, shoes).
complete_task(shoe_removal, P) :-
	type(SHOES1, shoes), type(SHOES2, shoes),
	transform([close([SHOES1, SHOES2]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Shop
get_relevant(shop, [CREDITCARD1, KEYBOARD1, CHAIR1, DESK1, COMPUTER1]) :-
	type(CREDITCARD1, creditcard), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer).
complete_task(shop, P) :-
	type(CREDITCARD1, creditcard), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(DESK1, desk), type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[CREDITCARD1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([DESK1]), type([KEYBOARD1])], P).

% Shred receipts
get_relevant(shred_receipts, [FILINGCABINET1, SHREDDER1, RECEIPT1]) :-
	type(FILINGCABINET1, filingcabinet), type(SHREDDER1, shredder), type(RECEIPT1, receipt).
complete_task(shred_receipts, P) :-
	type(FILINGCABINET1, filingcabinet), type(SHREDDER1, shredder), type(RECEIPT1, receipt),
	transform([close([]), holds([]), sat_on([]), on_top_of([[RECEIPT1, SHREDDER1]]), inside([]), on([SHREDDER1]), laid_on([]), used([]), eaten([]), closed([FILINGCABINET1]), plugin([SHREDDER1])], P).

% Shut front door


% Sit
get_relevant(sit, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(sit, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).

% Sit quietly
get_relevant(sit_quietly, [WALL1, CHAIR1]) :-
	type(WALL1, wall), type(CHAIR1, chair).
complete_task(sit_quietly, P) :-
	type(WALL1, wall), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Sleep
get_relevant(sleep, [BED1]) :-
	type(BED1, bed).
complete_task(sleep, P) :-
	type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), sleep([character1])], P).

% Social media  checks
get_relevant(social_media__checks, [COMPUTER1, CHAIR1]) :-
	type(COMPUTER1, computer), type(CHAIR1, chair).
complete_task(social_media__checks, P) :-
	type(COMPUTER1, computer), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).

% Sort mail
get_relevant(sort_mail, [MAIL1]) :-
	type(MAIL1, mail).
complete_task(sort_mail, P) :-
	type(MAIL1, mail),
	transform([close([]), holds([MAIL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([MAIL1]), write([MAIL1])], P).

% Speaking on headset in skype or some form of voip for business call
get_relevant(speaking_on_headset_in_skype_or_some_form_of_voip_for_business_call, [COMPUTER1, KEYBOARD1, CHAIR1]) :-
	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair).
complete_task(speaking_on_headset_in_skype_or_some_form_of_voip_for_business_call, P) :-
	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), dial([COMPUTER1]), talk([character1]), type([KEYBOARD1])], P).

% Spread table with appropriate supplies
get_relevant(spread_table_with_appropriate_supplies, [TABLE1]) :-
	type(TABLE1, tabl).
complete_task(spread_table_with_appropriate_supplies, P) :-
	type(TABLE1, tabl),
	transform([close([TABLE1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Start computer
get_relevant(start_computer, [COMPUTER1, CHAIR1]) :-
	type(COMPUTER1, computer), type(CHAIR1, chair).
complete_task(start_computer, P) :-
	type(COMPUTER1, computer), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).

% Steam mop floor
get_relevant(steam_mop_floor, [FAUCET1, MOP1, SINK1, MOPBUCKET1]) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(SINK1, sink), type(MOPBUCKET1, mopbucket).
complete_task(steam_mop_floor, P) :-
	type(FAUCET1, faucet), type(MOP1, mop), type(SINK1, sink), type(MOPBUCKET1, mopbucket),
	transform([close([]), holds([MOPBUCKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pull([MOPBUCKET1]), soak([MOP1]), squeeze([MOP1])], P).

% Story reading time
get_relevant(story_reading_time, [CHILD1, BED1, BOOK1]) :-
	type(CHILD1, child), type(BED1, bed), type(BOOK1, book).
complete_task(story_reading_time, P) :-
	type(CHILD1, child), type(BED1, bed), type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), read([BOOK1])], P).

% Straighten magazines
get_relevant(straighten_magazines, [MAGAZINE4, COFFEETABLE1, MAGAZINE3, MAGAZINE5, GARBAGECAN1, MAGAZINE2, MAGAZINE1]) :-
	type(MAGAZINE4, magazine), type(COFFEETABLE1, coffeetable), type(MAGAZINE3, magazine), type(MAGAZINE5, magazine), type(GARBAGECAN1, garbagecan), type(MAGAZINE2, magazine), type(MAGAZINE1, magazine),
	MAGAZINE5 \= MAGAZINE1, MAGAZINE5 \= MAGAZINE2, MAGAZINE5 \= MAGAZINE3, MAGAZINE5 \= MAGAZINE4.
complete_task(straighten_magazines, P) :-
	type(MAGAZINE4, magazine), type(COFFEETABLE1, coffeetable), type(MAGAZINE3, magazine), type(MAGAZINE5, magazine), type(GARBAGECAN1, garbagecan), type(MAGAZINE2, magazine), type(MAGAZINE1, magazine),
	MAGAZINE5 \= MAGAZINE1, MAGAZINE5 \= MAGAZINE2, MAGAZINE5 \= MAGAZINE3, MAGAZINE5 \= MAGAZINE4,
	transform([close([]), holds([]), sat_on([]), on_top_of([[MAGAZINE4, GARBAGECAN1], [MAGAZINE3, GARBAGECAN1], [MAGAZINE5, COFFEETABLE1], [MAGAZINE2, GARBAGECAN1], [MAGAZINE1, GARBAGECAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Stretch
get_relevant(stretch, [LEGSBOTH1, ARMSBOTH1]) :-
	type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth).
complete_task(stretch, P) :-
	type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([LEGSBOTH1, ARMSBOTH1])], P).

% String green beans
get_relevant(string_green_beans, [TABLE1, PLATE1, FOODVEGETABLE4, BOWL1, FOODVEGETABLE2, FOODVEGETABLE1, FOODVEGETABLE5, FOODVEGETABLE3]) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(FOODVEGETABLE4, foodvegetable), type(BOWL1, bowl), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE5, foodvegetable), type(FOODVEGETABLE3, foodvegetable).
complete_task(string_green_beans, P) :-
	type(TABLE1, tabl), type(PLATE1, plate), type(FOODVEGETABLE4, foodvegetable), type(BOWL1, bowl), type(FOODVEGETABLE2, foodvegetable), type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE5, foodvegetable), type(FOODVEGETABLE3, foodvegetable),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [FOODVEGETABLE4, BOWL1], [BOWL1, TABLE1], [FOODVEGETABLE2, BOWL1], [FOODVEGETABLE1, BOWL1], [FOODVEGETABLE5, BOWL1], [FOODVEGETABLE3, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cut([FOODVEGETABLE4, FOODVEGETABLE2, FOODVEGETABLE1, FOODVEGETABLE5, FOODVEGETABLE3])], P).

% Study
get_relevant(study, [BOOK1, LAMP1, CHAIR1]) :-
	type(BOOK1, book), type(LAMP1, lamp), type(CHAIR1, chair).
complete_task(study, P) :-
	type(BOOK1, book), type(LAMP1, lamp), type(CHAIR1, chair),
	transform([close([]), holds([BOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Study bible
get_relevant(study_bible, [BOOK1, NOTEPAD1, CHAIR1]) :-
	type(BOOK1, book), type(NOTEPAD1, notepad), type(CHAIR1, chair).
complete_task(study_bible, P) :-
	type(BOOK1, book), type(NOTEPAD1, notepad), type(CHAIR1, chair),
	transform([close([]), holds([BOOK1, NOTEPAD1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1]), write([NOTEPAD1])], P).

% Style hair
get_relevant(style_hair, [HAIRBRUSH1, BLOWDRYER1, HAIR1]) :-
	type(HAIRBRUSH1, hairbrush), type(BLOWDRYER1, blowdryer), type(HAIR1, hair).
complete_task(style_hair, P) :-
	type(HAIRBRUSH1, hairbrush), type(BLOWDRYER1, blowdryer), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), brush([HAIR1]), off([BLOWDRYER1]), plugin([BLOWDRYER1])], P).

% Sweep and wipe table off with rag
get_relevant(sweep_and_wipe_table_off_with_rag, [RAG1, TABLE1, CLOSET1]) :-
	type(RAG1, rag), type(TABLE1, tabl), type(CLOSET1, closet).
complete_task(sweep_and_wipe_table_off_with_rag, P) :-
	type(RAG1, rag), type(TABLE1, tabl), type(CLOSET1, closet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), pull([]), push([]), putin([])], P).

% Sweep entrance hall
get_relevant(sweep_entrance_hall, [TRASHCAN1, DIRT1, DUSTPAN1, FLOOR1]) :-
	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan), type(FLOOR1, floor).
complete_task(sweep_entrance_hall, P) :-
	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sweep([FLOOR1])], P).

% Sweep floor
get_relevant(sweep_floor, [TRASHCAN1, DIRT1, DUSTPAN1]) :-
	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan).
complete_task(sweep_floor, P) :-
	type(TRASHCAN1, trashcan), type(DIRT1, dirt), type(DUSTPAN1, dustpan),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DIRT1, TRASHCAN1], [DUSTPAN1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Tabletop game
get_relevant(tabletop_game, [TABLE1, COUCH1, BOARDGAME1]) :-
	type(TABLE1, tabl), type(COUCH1, couch), type(BOARDGAME1, boardgame).
complete_task(tabletop_game, P) :-
	type(TABLE1, tabl), type(COUCH1, couch), type(BOARDGAME1, boardgame),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOARDGAME1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([BOARDGAME1])], P).

% Take bath
get_relevant(take_bath, [FAUCET1, BATHTUB1]) :-
	type(FAUCET1, faucet), type(BATHTUB1, bathtub).
complete_task(take_bath, P) :-
	type(FAUCET1, faucet), type(BATHTUB1, bathtub),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([BATHTUB1]), used([]), eaten([])], P).

% Take coat
get_relevant(take_coat, [CLOTHESJACKET1, CLOSET1, HANGER1]) :-
	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(HANGER1, hanger).
complete_task(take_coat, P) :-
	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(HANGER1, hanger),
	transform([close([]), holds([HANGER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([HANGER1])], P).

% Take dishes out of dishwasher
get_relevant(take_dishes_out_of_dishwasher, [DISHWASHER1]) :-
	type(DISHWASHER1, dishwasher).
complete_task(take_dishes_out_of_dishwasher, P) :-
	type(DISHWASHER1, dishwasher),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).

% Take jacket off
get_relevant(take_jacket_off, [CLOTHESJACKET1, CLOSET1]) :-
	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet).
complete_task(take_jacket_off, P) :-
	type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1])], P).

% Take nap
get_relevant(take_nap, [COUCH1, BLANKET1]) :-
	type(COUCH1, couch), type(BLANKET1, blanket).
complete_task(take_nap, P) :-
	type(COUCH1, couch), type(BLANKET1, blanket),
	transform([close([]), holds([BLANKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([COUCH1]), used([]), eaten([]), cover([BLANKET1]), sleep([character1])], P).

% Take off outerwear
get_relevant(take_off_outerwear, [SHOES1, CLOTHESJACKET1, CLOSET1, CLOTHESHAT1, LIGHT1, HANGER1]) :-
	type(SHOES1, shoes), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(CLOTHESHAT1, clotheshat), type(LIGHT1, light), type(HANGER1, hanger).
complete_task(take_off_outerwear, P) :-
	type(SHOES1, shoes), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet), type(CLOTHESHAT1, clotheshat), type(LIGHT1, light), type(HANGER1, hanger),
	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1], [CLOTHESHAT1, HANGER1]]), inside([]), on([LIGHT1]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1])], P).

% Take off shoes
get_relevant(take_off_shoes, [SHOES1, FLOOR1]) :-
	type(SHOES1, shoes), type(FLOOR1, floor).
complete_task(take_off_shoes, P) :-
	type(SHOES1, shoes), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SHOES1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Take shower
get_relevant(take_shower, [SHOWER1, TOWEL1]) :-
	type(SHOWER1, shower), type(TOWEL1, towel).
complete_task(take_shower, P) :-
	type(SHOWER1, shower), type(TOWEL1, towel),
	transform([close([SHOWER1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([SHOWER1]), laid_on([]), used([TOWEL1]), eaten([])], P).

% Tale off shoes
get_relevant(tale_off_shoes, [MAT1, SHOES1, CLOSET1]) :-
	type(MAT1, mat), type(SHOES1, shoes), type(CLOSET1, closet).
complete_task(tale_off_shoes, P) :-
	type(MAT1, mat), type(SHOES1, shoes), type(CLOSET1, closet),
	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1]), wipe([SHOES1])], P).

% Talk on phone
get_relevant(talk_on_phone, [TELEPHONE1, CHAIR1]) :-
	type(TELEPHONE1, telephone), type(CHAIR1, chair).
complete_task(talk_on_phone, P) :-
	type(TELEPHONE1, telephone), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([TELEPHONE1])], P).

% Talk to kids
get_relevant(talk_to_kids, [CHILD1, CHAIR1, CHILD2]) :-
	type(CHILD1, child), type(CHAIR1, chair), type(CHILD2, child).
complete_task(talk_to_kids, P) :-
	type(CHILD1, child), type(CHAIR1, chair), type(CHILD2, child),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1, CHILD2])], P).

% Talk with friends
get_relevant(talk_with_friends, [WOMAN2, WOMAN1, COUCH1]) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch).
complete_task(talk_with_friends, P) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).

% Talk with guest
get_relevant(talk_with_guest, [MAN1, CHAIR1]) :-
	type(MAN1, man), type(CHAIR1, chair).
complete_task(talk_with_guest, P) :-
	type(MAN1, man), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).

% Talk with your child about their day
get_relevant(talk_with_your_child_about_their_day, [CHILD1, CHAIR1]) :-
	type(CHILD1, child), type(CHAIR1, chair).
complete_task(talk_with_your_child_about_their_day, P) :-
	type(CHILD1, child), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1])], P).

% Teach them to make their bed
get_relevant(teach_them_to_make_their_bed, [PILLOW2, SHEETS1, BED1, PILLOW1, CABINET1]) :-
	type(PILLOW2, pillow), type(SHEETS1, sheets), type(BED1, bed), type(PILLOW1, pillow), type(CABINET1, cabinet).
complete_task(teach_them_to_make_their_bed, P) :-
	type(PILLOW2, pillow), type(SHEETS1, sheets), type(BED1, bed), type(PILLOW1, pillow), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, BED1], [SHEETS1, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([BED1])], P).

% Tell jokes
get_relevant(tell_jokes, [MAN1]) :-
	type(MAN1, man).
complete_task(tell_jokes, P) :-
	type(MAN1, man),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).

% Text friends while sitting on couch
get_relevant(text_friends_while_sitting_on_couch, [COUCH1, CELLPHONE1]) :-
	type(COUCH1, couch), type(CELLPHONE1, cellphone).
complete_task(text_friends_while_sitting_on_couch, P) :-
	type(COUCH1, couch), type(CELLPHONE1, cellphone),
	transform([close([]), holds([CELLPHONE1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Thanksgiving
get_relevant(thanksgiving, [FOODFOOD1, TABLE1, PLATE1, FOODTURKEY1, CLOTHNAPKIN1, CENTERPIECE1, PLACEMAT1]) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(FOODTURKEY1, foodturkey), type(CLOTHNAPKIN1, clothnapkin), type(CENTERPIECE1, centerpiece), type(PLACEMAT1, placemat).
complete_task(thanksgiving, P) :-
	type(FOODFOOD1, foodfood), type(TABLE1, tabl), type(PLATE1, plate), type(FOODTURKEY1, foodturkey), type(CLOTHNAPKIN1, clothnapkin), type(CENTERPIECE1, centerpiece), type(PLACEMAT1, placemat),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, TABLE1], [PLATE1, PLACEMAT1], [FOODTURKEY1, TABLE1], [CLOTHNAPKIN1, TABLE1], [CENTERPIECE1, TABLE1], [PLACEMAT1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Throw shoes
get_relevant(throw_shoes, [SHOES1, SHOES2]) :-
	type(SHOES1, shoes), type(SHOES2, shoes).
complete_task(throw_shoes, P) :-
	type(SHOES1, shoes), type(SHOES2, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([SHOES1, SHOES2])], P).

% Tidy
get_relevant(tidy, [TRASHCAN1, TOY2, TOY1, TABLE1, COUCH1, REMOTECONTROL1, PAPERTOWEL1, CABINET1]) :-
	type(TRASHCAN1, trashcan), type(TOY2, toy), type(TOY1, toy), type(TABLE1, tabl), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(PAPERTOWEL1, papertowel), type(CABINET1, cabinet).
complete_task(tidy, P) :-
	type(TRASHCAN1, trashcan), type(TOY2, toy), type(TOY1, toy), type(TABLE1, tabl), type(COUCH1, couch), type(REMOTECONTROL1, remotecontrol), type(PAPERTOWEL1, papertowel), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOY2, CABINET1], [TOY1, CABINET1], [REMOTECONTROL1, TABLE1], [PAPERTOWEL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CABINET1])], P).

% Toilet
get_relevant(toilet, [SOAP1, FAUCET1, HANDSBOTH1, TOILET1, SINK1, CLOTHESPANTS1]) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESPANTS1, clothespants).
complete_task(toilet, P) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESPANTS1, clothespants),
	transform([close([]), holds([CLOTHESPANTS1]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([CLOTHESPANTS1]), flush([TOILET1]), off([FAUCET1]), puton([CLOTHESPANTS1]), rinse([HANDSBOTH1]), scrub([HANDSBOTH1]), standup([character1])], P).

% Transcribe what i say
get_relevant(transcribe_what_i_say, [KEYBOARD1]) :-
	type(KEYBOARD1, keyboard).
complete_task(transcribe_what_i_say, P) :-
	type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([KEYBOARD1]), touch([KEYBOARD1]), wipe([KEYBOARD1])], P).

% Try yourself off
get_relevant(try_yourself_off, [ARMSBOTH1, FACE1, CLOSET1, TOWEL1, LEGSBOTH1, FEETBOTH1, BASKETFORCLOTHES1]) :-
	type(ARMSBOTH1, armsboth), type(FACE1, face), type(CLOSET1, closet), type(TOWEL1, towel), type(LEGSBOTH1, legsboth), type(FEETBOTH1, feetboth), type(BASKETFORCLOTHES1, basketforclothes).
complete_task(try_yourself_off, P) :-
	type(ARMSBOTH1, armsboth), type(FACE1, face), type(CLOSET1, closet), type(TOWEL1, towel), type(LEGSBOTH1, legsboth), type(FEETBOTH1, feetboth), type(BASKETFORCLOTHES1, basketforclothes),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOWEL1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), wipe([ARMSBOTH1, FACE1, LEGSBOTH1, FEETBOTH1])], P).

% Tuck kids in bed
get_relevant(tuck_kids_in_bed, [LIGHTSWITCH1, BED1, CHILD1, CHILD2, BLANKET2, BLANKET1, BED2]) :-
	type(LIGHTSWITCH1, lightswitch), type(BED1, bed), type(CHILD1, child), type(CHILD2, child), type(BLANKET2, blanket), type(BLANKET1, blanket), type(BED2, bed).
complete_task(tuck_kids_in_bed, P) :-
	type(LIGHTSWITCH1, lightswitch), type(BED1, bed), type(CHILD1, child), type(CHILD2, child), type(BLANKET2, blanket), type(BLANKET1, blanket), type(BED2, bed),
	transform([close([]), holds([BLANKET2, BLANKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD1, CHILD2]), greet([CHILD1, CHILD2]), off([LIGHTSWITCH1])], P).

% Tummy time
get_relevant(tummy_time, [BED1, CHILD1, BOOK1, FLOOR1]) :-
	type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(FLOOR1, mat).
complete_task(tummy_time, P) :-
	type(BED1, bed), type(CHILD1, child), type(BOOK1, book), type(FLOOR1, mat),
	transform([close([]), holds([BOOK1]), sat_on([BED1]), on_top_of([[CHILD1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Turking
get_relevant(turking, [COMPUTER1, DESK1, CHAIR1]) :-
	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair).
complete_task(turking, P) :-
	type(COMPUTER1, computer), type(DESK1, desk), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).

% Turn light off
get_relevant(turn_light_off, [LIGHTSWITCH1]) :-
	type(LIGHTSWITCH1, lightswitch).
complete_task(turn_light_off, P) :-
	type(LIGHTSWITCH1, lightswitch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTSWITCH1])], P).

% Turn night light on
get_relevant(turn_night_light_on, [LAMP1, DRESSER1]) :-
	type(LAMP1, lamp), type(DRESSER1, dresser).
complete_task(turn_night_light_on, P) :-
	type(LAMP1, lamp), type(DRESSER1, dresser),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([])], P).

% Turn off light
get_relevant(turn_off_light, [LIGHTSWITCH1]) :-
	type(LIGHTSWITCH1, lightswitch).
complete_task(turn_off_light, P) :-
	type(LIGHTSWITCH1, lightswitch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTSWITCH1])], P).

% Turn on TV with remote
get_relevant(turn_on_tv_with_remote, [REMOTECONTROL1, TABLE1, TELEVISION1]) :-
	type(REMOTECONTROL1, remotecontrol), type(TABLE1, tabl), type(TELEVISION1, television).
complete_task(turn_on_tv_with_remote, P) :-
	type(REMOTECONTROL1, remotecontrol), type(TABLE1, tabl), type(TELEVISION1, television),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([])], P).

% Turn on computer
get_relevant(turn_on_computer, [COMPUTER1]) :-
	type(COMPUTER1, computer).
complete_task(turn_on_computer, P) :-
	type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).

% Turn on light
get_relevant(turn_on_light, [LIGHTSWITCH1]) :-
	type(LIGHTSWITCH1, lightswitch), not on(LIGHTSWITCH1).
complete_task(turn_on_light, P) :-
	type(LIGHTSWITCH1, lightswitch),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LIGHTSWITCH1]), laid_on([]), used([]), eaten([])], P).

% Type up document
get_relevant(type_up_document, [COFFEECUP1, DOCUMENT1, KEYBOARD1, CHAIR1, COMPUTER1]) :-
	type(COFFEECUP1, coffeecup), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer).
complete_task(type_up_document, P) :-
	type(COFFEECUP1, coffeecup), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(COMPUTER1, computer),
	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), drink([COFFEECUP1]), read([DOCUMENT1]), type([KEYBOARD1])], P).

% Unload dishwasher
get_relevant(unload_dishwasher, [PLATE1, BOWL1, DISHWASHER1, SPOON1, FORK1]) :-
	type(PLATE1, plate), type(BOWL1, bowl), type(DISHWASHER1, dishwasher), type(SPOON1, spoon), type(FORK1, fork).
complete_task(unload_dishwasher, P) :-
	type(PLATE1, plate), type(BOWL1, bowl), type(DISHWASHER1, dishwasher), type(SPOON1, spoon), type(FORK1, fork),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHWASHER1], [BOWL1, DISHWASHER1], [SPOON1, DISHWASHER1], [FORK1, DISHWASHER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1])], P).

% Unload various items from pockets and place them in bowl on table
get_relevant(unload_various_items_from_pockets_and_place_them_in_bowl_on_table, [TABLE1, BOWL1, CLOTHESPANTS1, CELLPHONE1, BILLS1]) :-
	type(TABLE1, tabl), type(BOWL1, bowl), type(CLOTHESPANTS1, clothespants), type(CELLPHONE1, cellphone), type(BILLS1, bills).
complete_task(unload_various_items_from_pockets_and_place_them_in_bowl_on_table, P) :-
	type(TABLE1, tabl), type(BOWL1, bowl), type(CLOTHESPANTS1, clothespants), type(CELLPHONE1, cellphone), type(BILLS1, bills),
	transform([close([]), holds([CELLPHONE1, BILLS1]), sat_on([]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Update address book
get_relevant(update_address_book, [PEN1, ADDRESSBOOK1, CHAIR1, DESK1]) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(CHAIR1, chair), type(DESK1, desk).
complete_task(update_address_book, P) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(CHAIR1, chair), type(DESK1, desk),
	transform([close([]), holds([ADDRESSBOOK1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), read([ADDRESSBOOK1]), write([ADDRESSBOOK1])], P).

% Use bathroom
get_relevant(use_bathroom, [TOILET1]) :-
	type(TOILET1, toilet).
complete_task(use_bathroom, P) :-
	type(TOILET1, toilet),
	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).

% Use computer
get_relevant(use_computer, [COMPUTER1, KEYBOARD1, CHAIR1]) :-
	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair).
complete_task(use_computer, P) :-
	type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Use restroom
get_relevant(use_restroom, [FAUCET1, HANDSBOTH1, TOILETPAPER1, TOILET1, SINK1, CLOTHESDRESS1]) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress).
complete_task(use_restroom, P) :-
	type(FAUCET1, faucet), type(HANDSBOTH1, handsboth), type(TOILETPAPER1, toiletpaper), type(TOILET1, toilet), type(SINK1, sink), type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), wash([HANDSBOTH1]), wipe([character1])], P).

% Use toilet
get_relevant(use_toilet, [TOILET1]) :-
	type(TOILET1, toilet).
complete_task(use_toilet, P) :-
	type(TOILET1, toilet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([TOILET1]), eaten([])], P).

% Vacuum
get_relevant(vacuum, [VACUUMCLEANER1]) :-
	type(VACUUMCLEANER1, vacuumcleaner).
complete_task(vacuum, P) :-
	type(VACUUMCLEANER1, vacuumcleaner),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([VACUUMCLEANER1]), push([VACUUMCLEANER1])], P).

% Visit
get_relevant(visit, [CHAIR3, WOMAN1, CHAIR1, CHAIR2, WOMAN2]) :-
	type(CHAIR3, chair), type(WOMAN1, woman), type(CHAIR1, chair), type(CHAIR2, chair), type(WOMAN2, woman).
complete_task(visit, P) :-
	type(CHAIR3, chair), type(WOMAN1, woman), type(CHAIR1, chair), type(CHAIR2, chair), type(WOMAN2, woman),
	transform([close([]), holds([]), sat_on([CHAIR3]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1, WOMAN2])], P).

% Visit neighbors
get_relevant(visit_neighbors, [WOMAN2, WOMAN1, COUCH1]) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch).
complete_task(visit_neighbors, P) :-
	type(WOMAN2, woman), type(WOMAN1, woman), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN2, WOMAN1])], P).

% Visit with friends while engaging in games
get_relevant(visit_with_friends_while_engaging_in_games, [MAN2, TABLE1, BOARDGAME1, MAN1, COUCH1]) :-
	type(MAN2, man), type(TABLE1, tabl), type(BOARDGAME1, boardgame), type(MAN1, man), type(COUCH1, couch).
complete_task(visit_with_friends_while_engaging_in_games, P) :-
	type(MAN2, man), type(TABLE1, tabl), type(BOARDGAME1, boardgame), type(MAN1, man), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOARDGAME1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN2, MAN1]), play([BOARDGAME1])], P).

% Wait
get_relevant(wait, [WALLCLOCK1, LEGSBOTH1, COUCH1]) :-
	type(WALLCLOCK1, wallclock), type(LEGSBOTH1, legsboth), type(COUCH1, couch).
complete_task(wait, P) :-
	type(WALLCLOCK1, wallclock), type(LEGSBOTH1, legsboth), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), stretch([LEGSBOTH1]), wait([character1])], P).

% Wake kids up
get_relevant(wake_kids_up, [CHILD1]) :-
	type(CHILD1, child).
complete_task(wake_kids_up, P) :-
	type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD1]), touch([CHILD1]), wash([CHILD1])], P).

% Wake me up
get_relevant(wake_me_up, [MAN1, WALLCLOCK1, BED1]) :-
	type(MAN1, man), type(WALLCLOCK1, wallclock), type(BED1, bed).
complete_task(wake_me_up, P) :-
	type(MAN1, man), type(WALLCLOCK1, wallclock), type(BED1, bed),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), squeeze([MAN1]), touch([MAN1])], P).

% Wash clothes
get_relevant(wash_clothes, [CLOTHESPANTS1, LAUNDRYDETERGENT1, WASHINGMACHINE1]) :-
	type(CLOTHESPANTS1, clothespants), type(LAUNDRYDETERGENT1, laundrydetergent), type(WASHINGMACHINE1, washingmachine).
complete_task(wash_clothes, P) :-
	type(CLOTHESPANTS1, clothespants), type(LAUNDRYDETERGENT1, laundrydetergent), type(WASHINGMACHINE1, washingmachine),
	transform([close([]), holds([LAUNDRYDETERGENT1]), sat_on([]), on_top_of([[CLOTHESPANTS1, WASHINGMACHINE1]]), inside([]), on([WASHINGMACHINE1]), laid_on([]), used([]), eaten([]), closed([WASHINGMACHINE1]), pour([LAUNDRYDETERGENT1])], P).

% Wash dirty dishes
get_relevant(wash_dirty_dishes, [DISHSOAP1, FAUCET1, PLATE1, DISHRACK1, SPONGE1, SINK1, PLATE2]) :-
	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate).
complete_task(wash_dirty_dishes, P) :-
	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHRACK1], [SPONGE1, DISHRACK1], [PLATE2, DISHRACK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([DISHSOAP1]), rinse([PLATE1, SPONGE1, PLATE2]), scrub([PLATE1, PLATE2])], P).

% Wash dishes
get_relevant(wash_dishes, [DISHSOAP1, FAUCET1, PLATE1, DISHRACK1, SPONGE1, SINK1, PLATE2]) :-
	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate).
complete_task(wash_dishes, P) :-
	type(DISHSOAP1, dishsoap), type(FAUCET1, faucet), type(PLATE1, plate), type(DISHRACK1, dishrack), type(SPONGE1, sponge), type(SINK1, sink), type(PLATE2, plate),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, DISHRACK1], [SPONGE1, DISHRACK1], [PLATE2, DISHRACK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([DISHSOAP1]), rinse([PLATE1, PLATE2]), wash([PLATE1, PLATE2])], P).

% Wash face
get_relevant(wash_face, [SOAP1, FAUCET1, WATER1, FACE1, SINK1]) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(WATER1, water), type(FACE1, face), type(SINK1, sink).
complete_task(wash_face, P) :-
	type(SOAP1, soap), type(FAUCET1, faucet), type(WATER1, water), type(FACE1, face), type(SINK1, sink),
	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([SOAP1]), eaten([]), wash([FACE1])], P).

% Wash hair
get_relevant(wash_hair, [SOAP1, SHOWER1, WATER1]) :-
	type(SOAP1, soap), type(SHOWER1, shower), type(WATER1, water).
complete_task(wash_hair, P) :-
	type(SOAP1, soap), type(SHOWER1, shower), type(WATER1, water),
	transform([close([]), holds([SOAP1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1]), rinse([WATER1])], P).

% Wash hands
get_relevant(wash_hands, [HANDSBOTH2, FAUCET1, SINK1]) :-
	type(HANDSBOTH2, handsboth), type(FAUCET1, faucet), type(SINK1, sink).
complete_task(wash_hands, P) :-
	type(HANDSBOTH2, handsboth), type(FAUCET1, faucet), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), wash([HANDSBOTH2])], P).

% Wash sink
get_relevant(wash_sink, [CLEANINGSOLUTION1, FAUCET1, SINK1]) :-
	type(CLEANINGSOLUTION1, cleaningsolution), type(FAUCET1, faucet), type(SINK1, sink).
complete_task(wash_sink, P) :-
	type(CLEANINGSOLUTION1, cleaningsolution), type(FAUCET1, faucet), type(SINK1, sink),
	transform([close([]), holds([CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([FAUCET1]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wash([SINK1])], P).

% Wash teeth
get_relevant(wash_teeth, [Toothbrush, Toothpaste, Faucet]) :-
    type(Toothbrush, toothbrush), type(Toothpaste, toothpaste), type(Faucet, faucet).
complete_task(wash_teeth, P) :-
    type(Toothbrush, toothbrush), type(Toothpaste, toothpaste), type(Faucet, faucet),
    transform([close([]), holds([Toothbrush, Toothpaste]), sat_on([]), on_top_of([]), inside([]), on([Faucet]), laid_on([]), used([Toothpaste, Toothbrush]), eaten([])], P).

% Watch TV
get_relevant(watch_tv, [REMOTECONTROL1, COUCH1, TELEVISION1]) :-
	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television).
complete_task(watch_tv, P) :-
	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television),
	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), watch([TELEVISION1])], P).

% Watch fly
get_relevant(watch_fly, [FLY1]) :-
	type(FLY1, fly).
complete_task(watch_fly, P) :-
	type(FLY1, fly),
	transform([close([FLY1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Watch movie
get_relevant(watch_movie, [REMOTECONTROL1, COUCH1, TELEVISION1]) :-
	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television).
complete_task(watch_movie, P) :-
	type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch), type(TELEVISION1, television),
	transform([close([]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), watch([TELEVISION1])], P).

% Watch youtube
get_relevant(watch_youtube, [CELLPHONE1]) :-
	type(CELLPHONE1, cellphone).
complete_task(watch_youtube, P) :-
	type(CELLPHONE1, cellphone),
	transform([close([]), holds([CELLPHONE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Wave at people walking by through window
get_relevant(wave_at_people_walking_by_through_window, [MAN1, WOMAN1, CURTAIN1]) :-
	type(MAN1, man), type(WOMAN1, woman), type(CURTAIN1, curtain).
complete_task(wave_at_people_walking_by_through_window, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(CURTAIN1, curtain),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN1]), crawl([CURTAIN1]), greet([MAN1, WOMAN1]), jump([character1])], P).

% Whine
get_relevant(whine, [WOMAN1, FOODDONUT1]) :-
	type(WOMAN1, woman), type(FOODDONUT1, fooddonut).
complete_task(whine, P) :-
	type(WOMAN1, woman), type(FOODDONUT1, fooddonut),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1])], P).

% Wipe down counter
get_relevant(wipe_down_counter, [KITCHENCOUNTER1, RAG1, FAUCET1, SINK1]) :-
	type(KITCHENCOUNTER1, kitchencounter), type(RAG1, rag), type(FAUCET1, faucet), type(SINK1, sink).
complete_task(wipe_down_counter, P) :-
	type(KITCHENCOUNTER1, kitchencounter), type(RAG1, rag), type(FAUCET1, faucet), type(SINK1, sink),
	transform([close([]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), rinse([RAG1]), squeeze([RAG1]), wipe([KITCHENCOUNTER1])], P).

% Wipe feet
get_relevant(wipe_feet, [SHOES1, FEETBOTH1, CARPET1]) :-
	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CARPET1, carpet).
complete_task(wipe_feet, P) :-
	type(SHOES1, shoes), type(FEETBOTH1, feetboth), type(CARPET1, carpet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FEETBOTH1])], P).

% Wipe off shoes
get_relevant(wipe_off_shoes, [MAT1, SHOES1]) :-
	type(MAT1, mat), type(SHOES1, shoes).
complete_task(wipe_off_shoes, P) :-
	type(MAT1, mat), type(SHOES1, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([SHOES1])], P).

% Work
get_relevant(work, [KEYBOARD1, CHAIR1, MOUSE1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer).
complete_task(work, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer),
	transform([close([]), holds([KEYBOARD1, MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([])], P).

% Workout
get_relevant(workout, [TELEVISION1, LEGSBOTH1, ARMSBOTH1]) :-
	type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth).
complete_task(workout, P) :-
	type(TELEVISION1, television), type(LEGSBOTH1, legsboth), type(ARMSBOTH1, armsboth),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([]), jump([character1]), stretch([LEGSBOTH1, ARMSBOTH1])], P).

% Write  school paper
get_relevant(write__school_paper, [COMPUTER1]) :-
	type(COMPUTER1, computer).
complete_task(write__school_paper, P) :-
	type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1])], P).

% Write an email
get_relevant(write_an_email, [KEYBOARD1, CHAIR1, MOUSE1, COMPUTER1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer).
complete_task(write_an_email, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(MOUSE1, mouse), type(COMPUTER1, computer),
	transform([close([]), holds([KEYBOARD1, MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Write book
get_relevant(write_book, [NOTEPAD1, PEN1, CHAIR1]) :-
	type(NOTEPAD1, notepad), type(PEN1, pen), type(CHAIR1, chair).
complete_task(write_book, P) :-
	type(NOTEPAD1, notepad), type(PEN1, pen), type(CHAIR1, chair),
	transform([close([]), holds([NOTEPAD1, PEN1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([NOTEPAD1]), write([NOTEPAD1])], P).

% Write in your diary
get_relevant(write_in_your_diary, [PEN1, SOFA1, DIARY1]) :-
	type(PEN1, pen), type(SOFA1, sofa), type(DIARY1, diary).
complete_task(write_in_your_diary, P) :-
	type(PEN1, pen), type(SOFA1, sofa), type(DIARY1, diary),
	transform([close([]), holds([PEN1, DIARY1]), sat_on([SOFA1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DIARY1]), write([DIARY1])], P).

% Write letter
get_relevant(write_letter, [PEN1, ADDRESSBOOK1, ENVELOPE1, STAMP1, CHAIR1, PAPER1, DESK1]) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(STAMP1, stamp), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk).
complete_task(write_letter, P) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(STAMP1, stamp), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[ADDRESSBOOK1, DESK1], [ENVELOPE1, DESK1], [STAMP1, ENVELOPE1], [PAPER1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([PAPER1]), open([DESK1]), write([ENVELOPE1, PAPER1])], P).

% Write research paper
get_relevant(write_research_paper, [KEYBOARD1, CHAIR1, LAPTOP1, TEXTBOOK1, NOTES1, DESK1]) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(LAPTOP1, laptop), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk).
complete_task(write_research_paper, P) :-
	type(KEYBOARD1, keyboard), type(CHAIR1, chair), type(LAPTOP1, laptop), type(TEXTBOOK1, textbook), type(NOTES1, notes), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[TEXTBOOK1, DESK1], [NOTES1, DESK1]]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), read([TEXTBOOK1, NOTES1]), type([KEYBOARD1])], P).

% Write story
get_relevant(write_story, [LAPTOP1, KEYBOARD1, CHAIR1]) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(CHAIR1, chair).
complete_task(write_story, P) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), pull([LAPTOP1]), type([KEYBOARD1])], P).

% Write thank you notes
get_relevant(write_thank_you_notes, [PEN1, ADDRESSBOOK1, ENVELOPE1, CHAIR1, PAPER1, DESK1]) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk).
complete_task(write_thank_you_notes, P) :-
	type(PEN1, pen), type(ADDRESSBOOK1, addressbook), type(ENVELOPE1, envelope), type(CHAIR1, chair), type(PAPER1, paper), type(DESK1, desk),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[ENVELOPE1, DESK1], [PAPER1, ENVELOPE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([PAPER1]), open([DESK1]), write([ENVELOPE1, PAPER1])], P).

% Yoga
get_relevant(yoga, [CLOTHESSHIRT1, ARMSBOTH1, CLOSET1, MAT1, CLOTHESPANTS1, FLOOR1]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(ARMSBOTH1, armsboth), type(CLOSET1, closet), type(MAT1, rug), type(CLOTHESPANTS1, clothespants), type(FLOOR1, floor).
complete_task(yoga, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(ARMSBOTH1, armsboth), type(CLOSET1, closet), type(MAT1, rug), type(CLOTHESPANTS1, clothespants), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([MAT1]), used([]), eaten([]), stretch([ARMSBOTH1])], P).

% complete school work
get_relevant(complete_school_work, [CHAIR1, NOTEBOOK1, TEXTBOOK1, PENCIL1, NOTES1, DESK1]) :-
	type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil), type(NOTES1, notes), type(DESK1, desk).
complete_task(complete_school_work, P) :-
	type(CHAIR1, chair), type(NOTEBOOK1, notebook), type(TEXTBOOK1, textbook), type(PENCIL1, pencil), type(NOTES1, notes), type(DESK1, desk),
	transform([close([]), holds([NOTEBOOK1, PENCIL1, NOTES1]), sat_on([CHAIR1]), on_top_of([[TEXTBOOK1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1]), read([TEXTBOOK1, NOTES1]), write([NOTEBOOK1])], P).

% Test set
% Add paper to printer
get_relevant(add_paper_to_printer, [DESK1, PRINTINGPAPER1, PRINTER1]) :-
	type(DESK1, desk), type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer).
complete_task(add_paper_to_printer, P) :-
	type(DESK1, desk), type(PRINTINGPAPER1, printingpaper), type(PRINTER1, printer),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PRINTINGPAPER1, PRINTER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Admire art
get_relevant(admire_art, [PAINTING2, PAINTING1]) :-
	type(PAINTING2, painting), type(PAINTING1, painting).
complete_task(admire_art, P) :-
	type(PAINTING2, painting), type(PAINTING1, painting),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Answer door
get_relevant(answer_door, [MAN1]) :-
	type(MAN1, man).
complete_task(answer_door, P) :-
	type(MAN1, man),
	transform([close([MAN1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1])], P).

% Answer emails
get_relevant(answer_emails, [CHAIR1, LAPTOP1, MAIL1, KEYBOARD1]) :-
	type(CHAIR1, chair), type(LAPTOP1, laptop), type(MAIL1, mail), type(KEYBOARD1, keyboard).
complete_task(answer_emails, P) :-
	type(CHAIR1, chair), type(LAPTOP1, laptop), type(MAIL1, mail), type(KEYBOARD1, keyboard),
	transform([close([]), holds([MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAPTOP1]), read([MAIL1]), type([KEYBOARD1])], P).

% Answer phone
get_relevant(answer_phone, [PHONE1, COUCH1]) :-
	type(PHONE1, phone), type(COUCH1, couch).
complete_task(answer_phone, P) :-
	type(PHONE1, phone), type(COUCH1, couch),
	transform([close([]), holds([PHONE1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), standup([character1]), talk([character1])], P).

% Arrange furniture
get_relevant(arrange_furniture, [COUCH1, COUCH2, COFFEETABLE1, CABINET1]) :-
	type(COUCH1, couch), type(COUCH2, couch), type(COFFEETABLE1, coffeetable), type(CABINET1, cabinet).
complete_task(arrange_furniture, P) :-
	type(COUCH1, couch), type(COUCH2, couch), type(COFFEETABLE1, coffeetable), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([COUCH1, COUCH2, COFFEETABLE1, CABINET1])], P).

% Arrange shoes
get_relevant(arrange_shoes, [SHOES4, SHOES2, SHOES3, SHOES1, SHOES5, SHOERACK1]) :-
	type(SHOES4, shoes), type(SHOES2, shoes), type(SHOES3, shoes), type(SHOES1, shoes), type(SHOES5, shoes), type(SHOERACK1, shoerack).
complete_task(arrange_shoes, P) :-
	type(SHOES4, shoes), type(SHOES2, shoes), type(SHOES3, shoes), type(SHOES1, shoes), type(SHOES5, shoes), type(SHOERACK1, shoerack),
	transform([close([]), holds([SHOES4, SHOES2, SHOES3, SHOES1, SHOES5]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([SHOERACK1]), drop([SHOES4, SHOES2, SHOES3, SHOES1, SHOES5])], P).

% Arrange sofa
get_relevant(arrange_sofa, [PILLOW2, BLANKET1, PILLOW1, SOFA1]) :-
	type(PILLOW2, pillow), type(BLANKET1, blanket), type(PILLOW1, pillow), type(SOFA1, sofa).
complete_task(arrange_sofa, P) :-
	type(PILLOW2, pillow), type(BLANKET1, blanket), type(PILLOW1, pillow), type(SOFA1, sofa),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PILLOW2, SOFA1], [BLANKET1, SOFA1], [PILLOW1, SOFA1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Brew coffee
get_relevant(brew_coffee, [TABLE1, GROUNDCOFFEE1, COFFEECUP1, KITCHENCABINET1, COFFEEFILTER1, COFFEE1, SINK1, FAUCET1, COFFEMAKER1]) :-
	type(TABLE1, tabl), type(GROUNDCOFFEE1, groundcoffee), type(COFFEECUP1, coffeecup), type(KITCHENCABINET1, kitchencabinet), type(COFFEEFILTER1, coffeefilter), type(COFFEE1, coffee), type(SINK1, sink), type(FAUCET1, faucet), type(COFFEMAKER1, coffemaker).
complete_task(brew_coffee, P) :-
	type(TABLE1, tabl), type(GROUNDCOFFEE1, groundcoffee), type(COFFEECUP1, coffeecup), type(KITCHENCABINET1, kitchencabinet), type(COFFEEFILTER1, coffeefilter), type(COFFEE1, coffee), type(SINK1, sink), type(FAUCET1, faucet), type(COFFEMAKER1, coffemaker),
	transform([close([]), holds([]), sat_on([]), on_top_of([[COFFEECUP1, TABLE1], [COFFEEFILTER1, COFFEMAKER1], [COFFEE1, TABLE1], [COFFEMAKER1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, COFFEMAKER1]), off([FAUCET1, COFFEMAKER1]), plugin([COFFEMAKER1]), pour([COFFEE1])], P).

% Bring leftovers in kitchen
get_relevant(bring_leftovers_in_kitchen, [BOWL2, TABLE1, FRIDGE1, BOWL1]) :-
	type(BOWL2, bowl), type(TABLE1, tabl), type(FRIDGE1, fridge), type(BOWL1, bowl).
complete_task(bring_leftovers_in_kitchen, P) :-
	type(BOWL2, bowl), type(TABLE1, tabl), type(FRIDGE1, fridge), type(BOWL1, bowl),
	transform([close([]), holds([BOWL2, BOWL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), putin([BOWL2, BOWL1])], P).

% Bring me red cookbook
get_relevant(bring_me_red_cookbook, [BOOK1, BOOKSHELF1, TABLE1]) :-
	type(BOOK1, book), type(BOOKSHELF1, bookshelf), type(TABLE1, tabl).
complete_task(bring_me_red_cookbook, P) :-
	type(BOOK1, book), type(BOOKSHELF1, bookshelf), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Build lego house
get_relevant(build_lego_house, [BOARDGAME1, BED1, CABINET1]) :-
	type(BOARDGAME1, boardgame), type(BED1, bed), type(CABINET1, cabinet).
complete_task(build_lego_house, P) :-
	type(BOARDGAME1, boardgame), type(BED1, bed), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([BED1]), on_top_of([[BOARDGAME1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), play([character1])], P).

% Call client
get_relevant(call_client, [ADDRESSBOOK1, DESK1, CHAIR1, TELEPHONE1]) :-
	type(ADDRESSBOOK1, addressbook), type(DESK1, desk), type(CHAIR1, chair), type(TELEPHONE1, telephone).
complete_task(call_client, P) :-
	type(ADDRESSBOOK1, addressbook), type(DESK1, desk), type(CHAIR1, chair), type(TELEPHONE1, telephone),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), open([DESK1]), speak([character1])], P).

% Call family member with skype application
get_relevant(call_family_member_with_skype_application, [CHAIR1, COMPUTER1, KEYBOARD1, MOUSE1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse).
complete_task(call_family_member_with_skype_application, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse),
	transform([close([]), holds([MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Call mother
get_relevant(call_mother, [CHAIR1, WOMAN1, TELEPHONE1]) :-
	type(CHAIR1, chair), type(WOMAN1, woman), type(TELEPHONE1, telephone).
complete_task(call_mother, P) :-
	type(CHAIR1, chair), type(WOMAN1, woman), type(TELEPHONE1, telephone),
	transform([close([]), holds([TELEPHONE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), greet([WOMAN1])], P).

% Card
get_relevant(card, [TABLE1, CHAIR1, POT1, CARDS1, PEN1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(POT1, pot), type(CARDS1, cards), type(PEN1, pen).
complete_task(card, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(POT1, pot), type(CARDS1, cards), type(PEN1, pen),
	transform([close([]), holds([CARDS1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1]), write([CARDS1])], P).

% Care for houseplants
get_relevant(care_for_houseplants, [WATER1]) :-
	type(WATER1, water).
complete_task(care_for_houseplants, P) :-
	type(WATER1, water),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([WATER1])], P).

% Carry groceries to kitchen
get_relevant(carry_groceries_to_kitchen, [TABLE1, SHOES1, GROCERIES1]) :-
	type(TABLE1, tabl), type(SHOES1, shoes), type(GROCERIES1, groceries).
complete_task(carry_groceries_to_kitchen, P) :-
	type(TABLE1, tabl), type(SHOES1, shoes), type(GROCERIES1, groceries),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Change TV channels
get_relevant(change_tv_channels, [TELEVISION1, REMOTECONTROL1, COUCH1]) :-
	type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch).
complete_task(change_tv_channels, P) :-
	type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol), type(COUCH1, couch),
	transform([close([REMOTECONTROL1, COUCH1]), holds([REMOTECONTROL1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([REMOTECONTROL1]), watch([TELEVISION1])], P).

% Change bedding
get_relevant(change_bedding, [SHEETS2, BED1, BASKETFORCLOTHES1, CLOSET1, SHEETS1, BLANKET2, BLANKET1]) :-
	type(SHEETS2, sheets), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET2, blanket), type(BLANKET1, blanket).
complete_task(change_bedding, P) :-
	type(SHEETS2, sheets), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET2, blanket), type(BLANKET1, blanket),
	transform([close([SHEETS2, BED1, CLOSET1, BLANKET2]), holds([SHEETS2, BLANKET2]), sat_on([]), on_top_of([[SHEETS1, BASKETFORCLOTHES1], [BLANKET1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), cover([BED1])], P).

% Change sheets and pillow cases
get_relevant(change_sheets_and_pillow_cases, [PILLOW1]) :-
	type(PILLOW1, pillow).
complete_task(change_sheets_and_pillow_cases, P) :-
	type(PILLOW1, pillow),
	transform([close([]), holds([PILLOW1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Change sheets on bed
get_relevant(change_sheets_on_bed, [SHEETS2, SHEETS1, BED1]) :-
	type(SHEETS2, sheets), type(SHEETS1, sheets), type(BED1, bed).
complete_task(change_sheets_on_bed, P) :-
	type(SHEETS2, sheets), type(SHEETS1, sheets), type(BED1, bed),
	transform([close([]), holds([SHEETS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([BED1]), fold([SHEETS2])], P).

% Change shower curtain
get_relevant(change_shower_curtain, [CURTAIN1, SHOWER1]) :-
	type(CURTAIN1, curtain), type(SHOWER1, shower).
complete_task(change_shower_curtain, P) :-
	type(CURTAIN1, curtain), type(SHOWER1, shower),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CURTAIN1]), sew([CURTAIN1])], P).

% Change toilet paper roll
get_relevant(change_toilet_paper_roll, [TRASHCAN1, TOILETPAPER2, TOILETPAPER1]) :-
	type(TRASHCAN1, trashcan), type(TOILETPAPER2, toiletpaper), type(TOILETPAPER1, toiletpaper).
complete_task(change_toilet_paper_roll, P) :-
	type(TRASHCAN1, trashcan), type(TOILETPAPER2, toiletpaper), type(TOILETPAPER1, toiletpaper),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOILETPAPER2, TRASHCAN1], [TOILETPAPER1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([])], P).

% Change toothbrush
get_relevant(change_toothbrush, [TRASHCAN1, TOOTHBRUSH1, TOOTHBRUSH2, TOOTHBRUSHHOLDER1]) :-
	type(TRASHCAN1, trashcan), type(TOOTHBRUSH1, toothbrush), type(TOOTHBRUSH2, toothbrush), type(TOOTHBRUSHHOLDER1, toothbrushholder).
complete_task(change_toothbrush, P) :-
	type(TRASHCAN1, trashcan), type(TOOTHBRUSH1, toothbrush), type(TOOTHBRUSH2, toothbrush), type(TOOTHBRUSHHOLDER1, toothbrushholder),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOOTHBRUSH1, TRASHCAN1], [TOOTHBRUSH2, TOOTHBRUSHHOLDER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([]), unwrap([TOOTHBRUSH2])], P).

% Check appearance in mirror
get_relevant(check_appearance_in_mirror, [HAIR1, CLOTHESDRESS1, FACE1, MIRROR1]) :-
	type(HAIR1, hair), type(CLOTHESDRESS1, clothesdress), type(FACE1, face), type(MIRROR1, mirror).
complete_task(check_appearance_in_mirror, P) :-
	type(HAIR1, hair), type(CLOTHESDRESS1, clothesdress), type(FACE1, face), type(MIRROR1, mirror),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Clean glasses
get_relevant(clean_glasses, [DISHSOAP1, DISHRACK1, WINEGLASS2, SINK1, FAUCET1, SPONGE1, WINEGLASS1]) :-
	type(DISHSOAP1, dishsoap), type(DISHRACK1, dishrack), type(WINEGLASS2, wineglass), type(SINK1, sink), type(FAUCET1, faucet), type(SPONGE1, sponge), type(WINEGLASS1, wineglass).
complete_task(clean_glasses, P) :-
	type(DISHSOAP1, dishsoap), type(DISHRACK1, dishrack), type(WINEGLASS2, wineglass), type(SINK1, sink), type(FAUCET1, faucet), type(SPONGE1, sponge), type(WINEGLASS1, wineglass),
	transform([close([]), holds([]), sat_on([]), on_top_of([[WINEGLASS2, DISHRACK1], [WINEGLASS1, DISHRACK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([DISHSOAP1]), rinse([WINEGLASS2, WINEGLASS1]), wash([WINEGLASS2, WINEGLASS1])], P).

% Clean large jacuzzi tub
get_relevant(clean_large_jacuzzi_tub, [BATHTUB1, BRUSH1, FAUCET1, CLEANINGSOLUTION1]) :-
	type(BATHTUB1, bathtub), type(BRUSH1, brush), type(FAUCET1, faucet), type(CLEANINGSOLUTION1, cleaningsolution).
complete_task(clean_large_jacuzzi_tub, P) :-
	type(BATHTUB1, bathtub), type(BRUSH1, brush), type(FAUCET1, faucet), type(CLEANINGSOLUTION1, cleaningsolution),
	transform([close([]), holds([BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), pour([CLEANINGSOLUTION1]), rinse([BATHTUB1, BRUSH1]), scrub([BATHTUB1])], P).

% Clean screen
get_relevant(clean_screen, [RAG1, COMPUTER1]) :-
	type(RAG1, rag), type(COMPUTER1, computer).
complete_task(clean_screen, P) :-
	type(RAG1, rag), type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([COMPUTER1])], P).

% Close curtains
get_relevant(close_curtains, [CURTAIN2, CURTAIN1, COUCH1, CURTAIN3]) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain), type(COUCH1, couch), type(CURTAIN3, curtain).
complete_task(close_curtains, P) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain), type(COUCH1, couch), type(CURTAIN3, curtain),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN2, CURTAIN1, CURTAIN3]), pull([CURTAIN2, CURTAIN1, CURTAIN3])], P).

% Close shower curtain
get_relevant(close_shower_curtain, [CURTAIN1, SHOWER1]) :-
	type(CURTAIN1, curtain), type(SHOWER1, shower).
complete_task(close_shower_curtain, P) :-
	type(CURTAIN1, curtain), type(SHOWER1, shower),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CURTAIN1]), pull([CURTAIN1])], P).

% Collect napkin rings
get_relevant(collect_napkin_rings, [BASKETFORCLOTHES1]) :-
	type(BASKETFORCLOTHES1, basketforclothes).
complete_task(collect_napkin_rings, P) :-
	type(BASKETFORCLOTHES1, basketforclothes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([BASKETFORCLOTHES1])], P).

% Color
get_relevant(color, [CRAYON1, DESK1, DRAWING1, BOOK1]) :-
	type(CRAYON1, crayon), type(DESK1, desk), type(DRAWING1, drawing), type(BOOK1, book).
complete_task(color, P) :-
	type(CRAYON1, crayon), type(DESK1, desk), type(DRAWING1, drawing), type(BOOK1, book),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), write([DRAWING1])], P).

% Come home
get_relevant(come_home, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(come_home, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Complete surveys on amazon turk
get_relevant(complete_surveys_on_amazon_turk, [CHAIR1, COMPUTER1, DOCUMENT1, KEYBOARD1, MOUSE1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(MOUSE1, mouse).
complete_task(complete_surveys_on_amazon_turk, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(KEYBOARD1, keyboard), type(MOUSE1, mouse),
	transform([close([]), holds([DOCUMENT1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1]), type([KEYBOARD1])], P).

% Compute
get_relevant(comput, [DESK1, CHAIR1, COMPUTER1, KEYBOARD1]) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard).
complete_task(comput, P) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Computer work
get_relevant(computer_work, [CHAIR1, COMPUTER1, KEYBOARD1, MOUSE1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse).
complete_task(computer_work, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard), type(MOUSE1, mouse),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Cut bread
get_relevant(cut_bread, [FOODBREAD1, PLATE1, KNIFE1, TABLE1, KITCHENCABINET1, FRIDGE1]) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge).
complete_task(cut_bread, P) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, PLATE1], [PLATE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), cut([FOODBREAD1])], P).

% Cut toenails
get_relevant(cut_toenails, [TRASHCAN1, BED1, DRESSER1, FEETBOTH1, TOWEL1]) :-
	type(TRASHCAN1, trashcan), type(BED1, bed), type(DRESSER1, dresser), type(FEETBOTH1, feetboth), type(TOWEL1, towel).
complete_task(cut_toenails, P) :-
	type(TRASHCAN1, trashcan), type(BED1, bed), type(DRESSER1, dresser), type(FEETBOTH1, feetboth), type(TOWEL1, towel),
	transform([close([]), holds([TOWEL1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([TOWEL1]), shake([TOWEL1]), standup([character1]), unfold([TOWEL1])], P).

% Cutting
get_relevant(cutting, [FOODVEGETABLE1, FOODVEGETABLE2, CUTTINGBOARD1, TABLE1, CHEFKNIFE1, FRIDGE1, CUPBOARD1]) :-
	type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE2, foodvegetable), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard).
complete_task(cutting, P) :-
	type(FOODVEGETABLE1, foodvegetable), type(FOODVEGETABLE2, foodvegetable), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, CUTTINGBOARD1], [FOODVEGETABLE2, CUTTINGBOARD1], [CUTTINGBOARD1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), cut([FOODVEGETABLE1, FOODVEGETABLE2])], P).

% Dance for table as we eat
get_relevant(dance_for_table_as_we_eat, [RADIO1, TABLE1]) :-
	type(RADIO1, radio), type(TABLE1, tabl).
complete_task(dance_for_table_as_we_eat, P) :-
	type(RADIO1, radio), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1])], P).

% De-wrinkle sheet
get_relevant(dewrinkle_sheet, [BED1, COMFORTER1, BASKETFORCLOTHES1, SHEETS1, BLANKET1]) :-
	type(BED1, bed), type(COMFORTER1, comforter), type(BASKETFORCLOTHES1, basketforclothes), type(SHEETS1, sheets), type(BLANKET1, blanket).
complete_task(dewrinkle_sheet, P) :-
	type(BED1, bed), type(COMFORTER1, comforter), type(BASKETFORCLOTHES1, basketforclothes), type(SHEETS1, sheets), type(BLANKET1, blanket),
	transform([close([]), holds([]), sat_on([]), on_top_of([[COMFORTER1, BASKETFORCLOTHES1], [BLANKET1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([SHEETS1]), touch([SHEETS1])], P).

% Designing crafts with family
get_relevant(designing_crafts_with_family, [CHILD2, CRAYON1, TABLE1, CHAIR1, DRAWING1, CHILD1, SCISSORS1, CABINET1]) :-
	type(CHILD2, child), type(CRAYON1, crayon), type(TABLE1, tabl), type(CHAIR1, chair), type(DRAWING1, drawing), type(CHILD1, child), type(SCISSORS1, scissors), type(CABINET1, cabinet).
complete_task(designing_crafts_with_family, P) :-
	type(CHILD2, child), type(CRAYON1, crayon), type(TABLE1, tabl), type(CHAIR1, chair), type(DRAWING1, drawing), type(CHILD1, child), type(SCISSORS1, scissors), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[DRAWING1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), cut([DRAWING1]), fold([DRAWING1]), greet([CHILD2, CHILD1]), unfold([DRAWING1]), unwrap([CRAYON1]), write([DRAWING1])], P).

% Do free-style dance routine
get_relevant(do_freestyle_dance_routine, [COUCH1, TABLE1, RADIO1]) :-
	type(COUCH1, couch), type(TABLE1, tabl), type(RADIO1, radio).
complete_task(do_freestyle_dance_routine, P) :-
	type(COUCH1, couch), type(TABLE1, tabl), type(RADIO1, radio),
	transform([close([RADIO1]), holds([RADIO1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), climb([COUCH1]), dance([character1]), jump([character1]), off([RADIO1]), plugin([RADIO1]), run([COUCH1, RADIO1])], P).

% Do work
get_relevant(do_work, [BOOK1]) :-
	type(BOOK1, book).
complete_task(do_work, P) :-
	type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([BOOK1])], P).

% Do work on computer
get_relevant(do_work_on_computer, [CHAIR1, COMPUTER1, KEYBOARD1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard).
complete_task(do_work_on_computer, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), standup([character1]), type([KEYBOARD1])], P).

% Do yoga
get_relevant(do_yoga, [CARPET1, ARMSBOTH1, LEGSBOTH1, RADIO1, MAT1]) :-
	type(CARPET1, carpet), type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(RADIO1, radio), type(MAT1, mat).
complete_task(do_yoga, P) :-
	type(CARPET1, carpet), type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(RADIO1, radio), type(MAT1, mat),
	transform([close([]), holds([]), sat_on([]), on_top_of([[MAT1, CARPET1]]), inside([]), on([RADIO1]), laid_on([MAT1]), used([]), eaten([]), stretch([ARMSBOTH1, LEGSBOTH1])], P).

% Dry soap bottles
get_relevant(dry_soap_bottles, [SHAMPOO1, SHAMPOO2, SOAP1, TOWEL1]) :-
	type(SHAMPOO1, shampoo), type(SHAMPOO2, shampoo), type(SOAP1, soap), type(TOWEL1, towel).
complete_task(dry_soap_bottles, P) :-
	type(SHAMPOO1, shampoo), type(SHAMPOO2, shampoo), type(SOAP1, soap), type(TOWEL1, towel),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([SHAMPOO1, SHAMPOO2, SOAP1])], P).

% Eat ice cream
get_relevant(eat_ice_cream, [SPOON1, TABLE1, FOODICECREAM1, CHAIR1, KITCHENCABINET1, BOWL1, FREEZER1]) :-
	type(SPOON1, spoon), type(TABLE1, tabl), type(FOODICECREAM1, foodicecream), type(CHAIR1, chair), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl), type(FREEZER1, freezer).
complete_task(eat_ice_cream, P) :-
	type(SPOON1, spoon), type(TABLE1, tabl), type(FOODICECREAM1, foodicecream), type(CHAIR1, chair), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl), type(FREEZER1, freezer),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[SPOON1, TABLE1], [BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([BOWL1]), closed([FOODICECREAM1, KITCHENCABINET1, FREEZER1])], P).

% Eat while watching TV
get_relevant(eat_while_watching_tv, [PLATE1, FOODFOOD1, COOKINGPOT1, TELEVISION1, COUCH1, STOVE1, CUPBOARD1, REMOTECONTROL1]) :-
	type(PLATE1, plate), type(FOODFOOD1, foodfood), type(COOKINGPOT1, cookingpot), type(TELEVISION1, television), type(COUCH1, couch), type(STOVE1, stove), type(CUPBOARD1, cupboard), type(REMOTECONTROL1, remotecontrol).
complete_task(eat_while_watching_tv, P) :-
	type(PLATE1, plate), type(FOODFOOD1, foodfood), type(COOKINGPOT1, cookingpot), type(TELEVISION1, television), type(COUCH1, couch), type(STOVE1, stove), type(CUPBOARD1, cupboard), type(REMOTECONTROL1, remotecontrol),
	transform([close([]), holds([PLATE1]), sat_on([COUCH1]), on_top_of([[FOODFOOD1, PLATE1]]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([PLATE1]), closed([CUPBOARD1]), uncover([COOKINGPOT1]), watch([TELEVISION1])], P).

% Enter home
get_relevant(enter_home, [WOMAN1]) :-
	type(WOMAN1, woman).
complete_task(enter_home, P) :-
	type(WOMAN1, woman),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([WOMAN1]), standup([character1])], P).

% Fan magazines on coffee table
get_relevant(fan_magazines_on_coffee_table, [COFFEE1]) :-
	type(COFFEE1, coffee).
complete_task(fan_magazines_on_coffee_table, P) :-
	type(COFFEE1, coffee),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([COFFEE1]), stir([COFFEE1])], P).

% Feed dog
get_relevant(feed_dog, [FLOOR1, DOG1, FOODFOOD1, BOWL1]) :-
	type(FLOOR1, floor), type(DOG1, dog), type(FOODFOOD1, foodfood), type(BOWL1, bowl).
complete_task(feed_dog, P) :-
	type(FLOOR1, floor), type(DOG1, dog), type(FOODFOOD1, foodfood), type(BOWL1, bowl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODFOOD1, FLOOR1], [BOWL1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([FOODFOOD1]), touch([DOG1])], P).

% Find dictionary
get_relevant(find_dictionary, [BOOKSHELF1, BOOK1]) :-
	type(BOOKSHELF1, bookshelf), type(BOOK1, book).
complete_task(find_dictionary, P) :-
	type(BOOKSHELF1, bookshelf), type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Fix bowl of cereal
get_relevant(fix_bowl_of_cereal, [TABLE1, MILK1, FOODCEREAL1, FRIDGE1, BOWL1, CUPBOARD1]) :-
	type(TABLE1, tabl), type(MILK1, milk), type(FOODCEREAL1, foodcereal), type(FRIDGE1, fridge), type(BOWL1, bowl), type(CUPBOARD1, cupboard).
complete_task(fix_bowl_of_cereal, P) :-
	type(TABLE1, tabl), type(MILK1, milk), type(FOODCEREAL1, foodcereal), type(FRIDGE1, fridge), type(BOWL1, bowl), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), pour([MILK1, FOODCEREAL1])], P).

% Fix sandwich
get_relevant(fix_sandwich, [FOODBREAD1, PLATE1, TABLE1, KITCHENCABINET1, FRIDGE1, FOODCHEESE1, FOODBREAD2]) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese), type(FOODBREAD2, foodbread).
complete_task(fix_sandwich, P) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese), type(FOODBREAD2, foodbread),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, PLATE1], [PLATE1, TABLE1], [FOODCHEESE1, PLATE1], [FOODBREAD2, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), spread([FOODCHEESE1])], P).

% Fix snack
get_relevant(fix_snack, [PLATE1, FOODVEGETABLE1, TABLE1, KITCHENCABINET1, FRIDGE1, FOODCARROT1]) :-
	type(PLATE1, plate), type(FOODVEGETABLE1, foodvegetable), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCARROT1, foodcarrot).
complete_task(fix_snack, P) :-
	type(PLATE1, plate), type(FOODVEGETABLE1, foodvegetable), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODCARROT1, foodcarrot),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [FOODVEGETABLE1, PLATE1], [FOODCARROT1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1])], P).

% Gaze out window
get_relevant(gaze_out_window, [WINDOW1]) :-
	type(WINDOW1, window).
complete_task(gaze_out_window, P) :-
	type(WINDOW1, window),
	transform([close([WINDOW1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Get in way of guests trying to leave
get_relevant(get_in_way_of_guests_trying_to_leave, [MAN1, WOMAN1]) :-
	type(MAN1, man), type(WOMAN1, woman).
complete_task(get_in_way_of_guests_trying_to_leave, P) :-
	type(MAN1, man), type(WOMAN1, woman),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), crawl([MAN1, WOMAN1]), dance([character1]), jump([character1]), pull([MAN1, WOMAN1])], P).

% Get mail ready
get_relevant(get_mail_ready, [STAMP1, DESK1, MAIL1, ENVELOPE1]) :-
	type(STAMP1, stamp), type(DESK1, desk), type(MAIL1, mail), type(ENVELOPE1, envelope).
complete_task(get_mail_ready, P) :-
	type(STAMP1, stamp), type(DESK1, desk), type(MAIL1, mail), type(ENVELOPE1, envelope),
	transform([close([]), holds([]), sat_on([]), on_top_of([[STAMP1, ENVELOPE1], [MAIL1, ENVELOPE1], [ENVELOPE1, DESK1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([ENVELOPE1]), fold([MAIL1]), open([DESK1])], P).

% Get ready for bed
get_relevant(get_ready_for_bed, [LIGHT1, BED1, BASKETFORCLOTHES1, CLOSET1, CLOTHESDRESS1, PAJAMAS1]) :-
	type(LIGHT1, light), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PAJAMAS1, pajamas).
complete_task(get_ready_for_bed, P) :-
	type(LIGHT1, light), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PAJAMAS1, pajamas),
	transform([close([]), holds([PAJAMAS1]), sat_on([]), on_top_of([[CLOTHESDRESS1, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), climb([BED1]), closed([CLOSET1]), off([LIGHT1]), puton([PAJAMAS1]), uncover([BED1])], P).

% Get ready for day
get_relevant(get_ready_for_day, [CLOSET1, CLOTHESDRESS1, PURSE1, SHOES1]) :-
	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PURSE1, purse), type(SHOES1, shoes).
complete_task(get_ready_for_day, P) :-
	type(CLOSET1, closet), type(CLOTHESDRESS1, clothesdress), type(PURSE1, purse), type(SHOES1, shoes),
	transform([close([]), holds([CLOTHESDRESS1, PURSE1, SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), puton([CLOTHESDRESS1, SHOES1])], P).

% Get ready for school
get_relevant(get_ready_for_school, [CLOTHESDRESS1, DRESSER1]) :-
	type(CLOTHESDRESS1, clothesdress), type(DRESSER1, dresser).
complete_task(get_ready_for_school, P) :-
	type(CLOTHESDRESS1, clothesdress), type(DRESSER1, dresser),
	transform([close([]), holds([CLOTHESDRESS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DRESSER1]), puton([CLOTHESDRESS1])], P).

% Get ready to leave
get_relevant(get_ready_to_leave, [KEYS1, SHOES1]) :-
	type(KEYS1, keys), type(SHOES1, shoes).
complete_task(get_ready_to_leave, P) :-
	type(KEYS1, keys), type(SHOES1, shoes),
	transform([close([]), holds([KEYS1, SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).

% Get something to drink
get_relevant(get_something_to_drink, [MILK1, GLASS1, FRIDGE1, CUPBOARD1]) :-
	type(MILK1, milk), type(GLASS1, glass), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard).
complete_task(get_something_to_drink, P) :-
	type(MILK1, milk), type(GLASS1, glass), type(FRIDGE1, fridge), type(CUPBOARD1, cupboard),
	transform([close([]), holds([MILK1, GLASS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), drink([GLASS1]), pour([MILK1])], P).

% Give children bath
get_relevant(give_children_bath, [CHILD2, BED2, BED1, BATHTUB1, TOWEL2, CHILD1, FAUCET1, TOWEL1]) :-
	type(CHILD2, child), type(BED2, bed), type(BED1, bed), type(BATHTUB1, bathtub), type(TOWEL2, towel), type(CHILD1, child), type(FAUCET1, faucet), type(TOWEL1, towel).
complete_task(give_children_bath, P) :-
	type(CHILD2, child), type(BED2, bed), type(BED1, bed), type(BATHTUB1, bathtub), type(TOWEL2, towel), type(CHILD1, child), type(FAUCET1, faucet), type(TOWEL1, towel),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CHILD2, BED2], [TOWEL2, BED2], [CHILD1, BED1], [TOWEL1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), cover([CHILD2, CHILD1]), off([FAUCET1]), wash([CHILD2, CHILD1])], P).

% Give me bath
get_relevant(give_me_bath, [ARMSBOTH1, LEGSBOTH1, SOAP1, FACE1, FEETBOTH1, FAUCET1, SHOWER1, TOWEL1]) :-
	type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(SOAP1, soap), type(FACE1, face), type(FEETBOTH1, feetboth), type(FAUCET1, faucet), type(SHOWER1, shower), type(TOWEL1, towel).
complete_task(give_me_bath, P) :-
	type(ARMSBOTH1, armsboth), type(LEGSBOTH1, legsboth), type(SOAP1, soap), type(FACE1, face), type(FEETBOTH1, feetboth), type(FAUCET1, faucet), type(SHOWER1, shower), type(TOWEL1, towel),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1]), off([FAUCET1]), rinse([ARMSBOTH1, LEGSBOTH1, FEETBOTH1]), scrub([ARMSBOTH1, LEGSBOTH1, FEETBOTH1]), wash([FACE1]), wipe([ARMSBOTH1, LEGSBOTH1, FACE1, FEETBOTH1])], P).

% Give your child bath
get_relevant(give_your_child_bath, [BATHTUB1, FLOOR1, SOAP1, CHILD1, FAUCET1, TOWEL1]) :-
	type(BATHTUB1, bathtub), type(FLOOR1, floor), type(SOAP1, soap), type(CHILD1, child), type(FAUCET1, faucet), type(TOWEL1, towel).
complete_task(give_your_child_bath, P) :-
	type(BATHTUB1, bathtub), type(FLOOR1, floor), type(SOAP1, soap), type(CHILD1, child), type(FAUCET1, faucet), type(TOWEL1, towel),
	transform([close([]), holds([TOWEL1]), sat_on([]), on_top_of([[CHILD1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([FAUCET1]), rinse([CHILD1]), scrub([CHILD1]), wipe([CHILD1]), wrap([CHILD1])], P).

% Go to bathroom
get_relevant(go_to_bathroom, [TOILET1, SOAP1, HANDSBOTH1, CLOTHESDRESS1, SINK1, TOILETPAPER1, FAUCET1]) :-
	type(TOILET1, toilet), type(SOAP1, soap), type(HANDSBOTH1, handsboth), type(CLOTHESDRESS1, clothesdress), type(SINK1, sink), type(TOILETPAPER1, toiletpaper), type(FAUCET1, faucet).
complete_task(go_to_bathroom, P) :-
	type(TOILET1, toilet), type(SOAP1, soap), type(HANDSBOTH1, handsboth), type(CLOTHESDRESS1, clothesdress), type(SINK1, sink), type(TOILETPAPER1, toiletpaper), type(FAUCET1, faucet),
	transform([close([]), holds([]), sat_on([TOILET1]), on_top_of([[CLOTHESDRESS1, TOILET1], [TOILETPAPER1, TOILET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([CLOTHESDRESS1]), flush([TOILET1]), off([FAUCET1]), standup([character1]), wash([HANDSBOTH1])], P).

% Grab some juice
get_relevant(grab_some_juice, [TABLE1, GLASS1, FRIDGE1, JUICE1, CUPBOARD1]) :-
	type(TABLE1, tabl), type(GLASS1, glass), type(FRIDGE1, fridge), type(JUICE1, juice), type(CUPBOARD1, cupboard).
complete_task(grab_some_juice, P) :-
	type(TABLE1, tabl), type(GLASS1, glass), type(FRIDGE1, fridge), type(JUICE1, juice), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GLASS1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), pour([JUICE1])], P).

% Grab things
get_relevant(grab_things, [BOOK1]) :-
	type(BOOK1, book).
complete_task(grab_things, P) :-
	type(BOOK1, book),
	transform([close([]), holds([BOOK1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Hang car keys
get_relevant(hang_car_keys, [HANGER1, TABLE1, WALL1, KEYS1]) :-
	type(HANGER1, hanger), type(TABLE1, tabl), type(WALL1, wall), type(KEYS1, keys).
complete_task(hang_car_keys, P) :-
	type(HANGER1, hanger), type(TABLE1, tabl), type(WALL1, wall), type(KEYS1, keys),
	transform([close([]), holds([]), sat_on([]), on_top_of([[KEYS1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Hang keys
get_relevant(hang_keys, [DRESSER1, PURSE1, BOWL1, KEYS1]) :-
	type(DRESSER1, dresser), type(PURSE1, purse), type(BOWL1, bowl), type(KEYS1, keys).
complete_task(hang_keys, P) :-
	type(DRESSER1, dresser), type(PURSE1, purse), type(BOWL1, bowl), type(KEYS1, keys),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PURSE1, BOWL1], [KEYS1, BOWL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).

% Hang pictures
get_relevant(hang_pictures, [WALL1, DRAWING1, PAINTING1]) :-
	type(WALL1, wall), type(DRAWING1, drawing), type(PAINTING1, painting).
complete_task(hang_pictures, P) :-
	type(WALL1, wall), type(DRAWING1, drawing), type(PAINTING1, painting),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DRAWING1, WALL1], [PAINTING1, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Hang up car keys
get_relevant(hang_up_car_keys, [PURSE1, KEYS1]) :-
	type(PURSE1, purse), type(KEYS1, keys).
complete_task(hang_up_car_keys, P) :-
	type(PURSE1, purse), type(KEYS1, keys),
	transform([close([]), holds([KEYS1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([PURSE1])], P).

% Hang up poster
get_relevant(hang_up_poster, [PAPER1, WALL1, TAPE1]) :-
	type(PAPER1, paper), type(WALL1, wall), type(TAPE1, tape).
complete_task(hang_up_poster, P) :-
	type(PAPER1, paper), type(WALL1, wall), type(TAPE1, tape),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPER1, WALL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), break([TAPE1]), pull([TAPE1]), push([PAPER1])], P).

% Have dinner
get_relevant(have_dinner, [FORK1, PLATE1, NAPKIN1, TABLE1, CHAIR1, FOODFOOD1, CUPBOARD1]) :-
	type(FORK1, fork), type(PLATE1, plate), type(NAPKIN1, napkin), type(TABLE1, tabl), type(CHAIR1, chair), type(FOODFOOD1, foodfood), type(CUPBOARD1, cupboard).
complete_task(have_dinner, P) :-
	type(FORK1, fork), type(PLATE1, plate), type(NAPKIN1, napkin), type(TABLE1, tabl), type(CHAIR1, chair), type(FOODFOOD1, foodfood), type(CUPBOARD1, cupboard),
	transform([close([]), holds([FORK1]), sat_on([CHAIR1]), on_top_of([[PLATE1, TABLE1], [NAPKIN1, TABLE1], [FOODFOOD1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([PLATE1]), closed([CUPBOARD1])], P).

% Have ice coffee
get_relevant(have_ice_coffee, [CUP1, SPOON1, TABLE1, CHAIR1, COFFEEPOT1, KITCHENCABINET1, COFFEE1, FRIDGE1, COFFEMAKER1, ICE1]) :-
	type(CUP1, cup), type(SPOON1, spoon), type(TABLE1, tabl), type(CHAIR1, chair), type(COFFEEPOT1, coffeepot), type(KITCHENCABINET1, kitchencabinet), type(COFFEE1, coffee), type(FRIDGE1, fridge), type(COFFEMAKER1, coffemaker), type(ICE1, ice).
complete_task(have_ice_coffee, P) :-
	type(CUP1, cup), type(SPOON1, spoon), type(TABLE1, tabl), type(CHAIR1, chair), type(COFFEEPOT1, coffeepot), type(KITCHENCABINET1, kitchencabinet), type(COFFEE1, coffee), type(FRIDGE1, fridge), type(COFFEMAKER1, coffemaker), type(ICE1, ice),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[CUP1, TABLE1], [SPOON1, TABLE1], [COFFEE1, TABLE1], [ICE1, CUP1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), drink([CUP1]), pour([COFFEE1]), stir([COFFEE1])], P).

% Have party
get_relevant(have_party, [MAN1, MAN2, RADIO1, WOMAN1, WINEGLASS1, WOMAN2]) :-
	type(MAN1, man), type(MAN2, man), type(RADIO1, radio), type(WOMAN1, woman), type(WINEGLASS1, wineglass), type(WOMAN2, woman).
complete_task(have_party, P) :-
	type(MAN1, man), type(MAN2, man), type(RADIO1, radio), type(WOMAN1, woman), type(WINEGLASS1, wineglass), type(WOMAN2, woman),
	transform([close([]), holds([WINEGLASS1]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([]), dance([character1]), drink([WINEGLASS1]), greet([MAN1, MAN2, WOMAN1, WOMAN2])], P).

% Have tea party
get_relevant(have_tea_party, [CHILD2, CUP1, SPOON1, CHAIR1, TEA1, CHILD1, POT1, FOODSUGAR1]) :-
	type(CHILD2, child), type(CUP1, cup), type(SPOON1, spoon), type(CHAIR1, chair), type(TEA1, tea), type(CHILD1, child), type(POT1, pot), type(FOODSUGAR1, foodsugar).
complete_task(have_tea_party, P) :-
	type(CHILD2, child), type(CUP1, cup), type(SPOON1, spoon), type(CHAIR1, chair), type(TEA1, tea), type(CHILD1, child), type(POT1, pot), type(FOODSUGAR1, foodsugar),
	transform([close([]), holds([CUP1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drink([CUP1]), greet([CHILD2, CHILD1]), pour([TEA1, FOODSUGAR1]), stir([TEA1])], P).

% Help kids with homework
get_relevant(help_kids_with_homework, [CHILD2, NOTEBOOK1, TABLE1, CHILD1, BOOK2, PENCIL1, BOOK1, NOTEBOOK2]) :-
	type(CHILD2, child), type(NOTEBOOK1, notebook), type(TABLE1, tabl), type(CHILD1, child), type(BOOK2, book), type(PENCIL1, pencil), type(BOOK1, book), type(NOTEBOOK2, notebook).
complete_task(help_kids_with_homework, P) :-
	type(CHILD2, child), type(NOTEBOOK1, notebook), type(TABLE1, tabl), type(CHILD1, child), type(BOOK2, book), type(PENCIL1, pencil), type(BOOK1, book), type(NOTEBOOK2, notebook),
	transform([close([]), holds([]), sat_on([]), on_top_of([[NOTEBOOK1, TABLE1], [BOOK2, TABLE1], [PENCIL1, TABLE1], [BOOK1, TABLE1], [NOTEBOOK2, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD2, CHILD1]), read([BOOK2, BOOK1]), write([NOTEBOOK1, NOTEBOOK2])], P).

% Help with quiz shows
get_relevant(help_with_quiz_shows, [PAPER1]) :-
	type(PAPER1, paper).
complete_task(help_with_quiz_shows, P) :-
	type(PAPER1, paper),
	transform([close([]), holds([PAPER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([PAPER1])], P).

% Hold coats and umbrellas
get_relevant(hold_coats_and_umbrellas, [MAN1, WOMAN1, CLOTHESJACKET2, CLOTHESJACKET1]) :-
	type(MAN1, man), type(WOMAN1, woman), type(CLOTHESJACKET2, clothesjacket), type(CLOTHESJACKET1, clothesjacket).
complete_task(hold_coats_and_umbrellas, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(CLOTHESJACKET2, clothesjacket), type(CLOTHESJACKET1, clothesjacket),
	transform([close([]), holds([CLOTHESJACKET2, CLOTHESJACKET1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dance([character1]), greet([MAN1, WOMAN1])], P).

% Juggling
get_relevant(juggling, [COMPUTER1]) :-
	type(COMPUTER1, computer).
complete_task(juggling, P) :-
	type(COMPUTER1, computer),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), touch([COMPUTER1]), watch([COMPUTER1])], P).

% Keep cats out of room
get_relevant(keep_cats_out_of_room, [CAT1, CAT2]) :-
	type(CAT1, cat), type(CAT2, cat).
complete_task(keep_cats_out_of_room, P) :-
	type(CAT1, cat), type(CAT2, cat),
	transform([close([CAT1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Leave home
get_relevant(leave_home, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(leave_home, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), puton([SHOES1])], P).

% Light candle
get_relevant(light_candle, [LIGHTER1, CANDLE1, TABLE1]) :-
	type(LIGHTER1, lighter), type(CANDLE1, candle), type(TABLE1, tabl).
complete_task(light_candle, P) :-
	type(LIGHTER1, lighter), type(CANDLE1, candle), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CANDLE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LIGHTER1])], P).

% Light candles
get_relevant(light_candles, [LAMP2, LAMP1]) :-
	type(LAMP2, lamp), type(LAMP1, lamp).
complete_task(light_candles, P) :-
	type(LAMP2, lamp), type(LAMP1, lamp),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP2, LAMP1]), laid_on([]), used([]), eaten([])], P).

% Look at mirror
get_relevant(look_at_mirror, [MIRROR1]) :-
	type(MIRROR1, mirror).
complete_task(look_at_mirror, P) :-
	type(MIRROR1, mirror),
	transform([close([MIRROR1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Look at painting
get_relevant(look_at_painting, [PAINTING1]) :-
	type(PAINTING1, painting).
complete_task(look_at_painting, P) :-
	type(PAINTING1, painting),
	transform([close([PAINTING1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Make banana bread
get_relevant(make_banana_bread, [TABLE1, FOODBANANA1, TRAY1, KITCHENCABINET1, FRIDGE1, BOWL1, DOUGH1, OVEN1]) :-
	type(TABLE1, tabl), type(FOODBANANA1, foodbanana), type(TRAY1, tray), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(BOWL1, bowl), type(DOUGH1, dough), type(OVEN1, oven).
complete_task(make_banana_bread, P) :-
	type(TABLE1, tabl), type(FOODBANANA1, foodbanana), type(TRAY1, tray), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(BOWL1, bowl), type(DOUGH1, dough), type(OVEN1, oven),
	transform([close([]), holds([TRAY1]), sat_on([]), on_top_of([[FOODBANANA1, BOWL1], [BOWL1, TABLE1], [DOUGH1, TRAY1]]), inside([]), on([OVEN1]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), open([OVEN1]), putin([TRAY1]), spread([DOUGH1])], P).

% Make iced coffee
get_relevant(make_iced_coffee, [SPOON1, TABLE1, MILK1, COFFEE1, GLASS1, FOODSUGAR1, ICE1]) :-
	type(SPOON1, spoon), type(TABLE1, tabl), type(MILK1, milk), type(COFFEE1, coffee), type(GLASS1, glass), type(FOODSUGAR1, foodsugar), type(ICE1, ice).
complete_task(make_iced_coffee, P) :-
	type(SPOON1, spoon), type(TABLE1, tabl), type(MILK1, milk), type(COFFEE1, coffee), type(GLASS1, glass), type(FOODSUGAR1, foodsugar), type(ICE1, ice),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SPOON1, GLASS1], [MILK1, TABLE1], [COFFEE1, GLASS1], [GLASS1, TABLE1], [FOODSUGAR1, GLASS1], [ICE1, GLASS1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([MILK1, COFFEE1, FOODSUGAR1]), stir([COFFEE1])], P).

% Make kid's bed
get_relevant(make_kids_bed, [BED1, COMFORTER1, PILLOW2, CLOSET1, SHEETS1, PILLOW1]) :-
	type(BED1, bed), type(COMFORTER1, comforter), type(PILLOW2, pillow), type(CLOSET1, closet), type(SHEETS1, sheets), type(PILLOW1, pillow).
complete_task(make_kids_bed, P) :-
	type(BED1, bed), type(COMFORTER1, comforter), type(PILLOW2, pillow), type(CLOSET1, closet), type(SHEETS1, sheets), type(PILLOW1, pillow),
	transform([close([]), holds([]), sat_on([]), on_top_of([[COMFORTER1, BED1], [PILLOW2, BED1], [SHEETS1, BED1], [PILLOW1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), cover([BED1]), unfold([SHEETS1])], P).

% Make peanut butter sandwich
get_relevant(make_peanut_butter_sandwich, [FOODBREAD1, PLATE1, KNIFE1, FOODPEANUTBUTTER1, TABLE1]) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(TABLE1, tabl).
complete_task(make_peanut_butter_sandwich, P) :-
	type(FOODBREAD1, foodbread), type(PLATE1, plate), type(KNIFE1, knife), type(FOODPEANUTBUTTER1, foodpeanutbutter), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, PLATE1], [PLATE1, TABLE1], [KNIFE1, PLATE1], [FOODPEANUTBUTTER1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([KNIFE1]), spread([FOODPEANUTBUTTER1])], P).

% Make phone call
get_relevant(make_phone_call, [CHAIR1, TELEPHONE1]) :-
	type(CHAIR1, chair), type(TELEPHONE1, telephone).
complete_task(make_phone_call, P) :-
	type(CHAIR1, chair), type(TELEPHONE1, telephone),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([TELEPHONE1])], P).

% Make place cards
get_relevant(make_place_cards, [TABLE1, CHAIR1, PAPER2, PAPER1, PEN1, PAPER3, CABINET1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(PAPER2, paper), type(PAPER1, paper), type(PEN1, pen), type(PAPER3, paper), type(CABINET1, cabinet).
complete_task(make_place_cards, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(PAPER2, paper), type(PAPER1, paper), type(PEN1, pen), type(PAPER3, paper), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[PAPER2, TABLE1], [PAPER1, TABLE1], [PEN1, TABLE1], [PAPER3, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), fold([PAPER2, PAPER1, PAPER3]), pull([CHAIR1]), standup([character1]), write([PAPER2, PAPER1, PAPER3])], P).

% Make popcorn
get_relevant(make_popcorn, [FOODFOOD1, MICROWAVE1]) :-
	type(FOODFOOD1, foodfood), type(MICROWAVE1, microwave).
complete_task(make_popcorn, P) :-
	type(FOODFOOD1, foodfood), type(MICROWAVE1, microwave),
	transform([close([]), holds([FOODFOOD1]), sat_on([]), on_top_of([]), inside([]), on([MICROWAVE1]), laid_on([]), used([]), eaten([]), closed([MICROWAVE1]), putin([FOODFOOD1])], P).

% Make tomato sauce
get_relevant(make_tomato_sauce, [SPOON1, KITCHENCABINET1, FRIDGE1, COOKINGPOT1, FOODFOOD1, STOVE1]) :-
	type(SPOON1, spoon), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(COOKINGPOT1, cookingpot), type(FOODFOOD1, foodfood), type(STOVE1, stove).
complete_task(make_tomato_sauce, P) :-
	type(SPOON1, spoon), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(COOKINGPOT1, cookingpot), type(FOODFOOD1, foodfood), type(STOVE1, stove),
	transform([close([]), holds([SPOON1]), sat_on([]), on_top_of([[COOKINGPOT1, STOVE1], [FOODFOOD1, COOKINGPOT1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), off([STOVE1]), squeeze([FOODFOOD1])], P).

% Make tutu
get_relevant(make_tutu, [GLUE1, BED1, CABINET1, PAPER1, SCISSORS1]) :-
	type(GLUE1, glue), type(BED1, bed), type(CABINET1, cabinet), type(PAPER1, paper), type(SCISSORS1, scissors).
complete_task(make_tutu, P) :-
	type(GLUE1, glue), type(BED1, bed), type(CABINET1, cabinet), type(PAPER1, paper), type(SCISSORS1, scissors),
	transform([close([]), holds([]), sat_on([BED1]), on_top_of([[PAPER1, BED1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), cut([PAPER1]), fold([PAPER1])], P).

% Make up bed for guest on couch
get_relevant(make_up_bed_for_guest_on_couch, [CLOSET1, SHEETS1, BLANKET1, COUCH1, PILLOW1]) :-
	type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET1, blanket), type(COUCH1, couch), type(PILLOW1, pillow).
complete_task(make_up_bed_for_guest_on_couch, P) :-
	type(CLOSET1, closet), type(SHEETS1, sheets), type(BLANKET1, blanket), type(COUCH1, couch), type(PILLOW1, pillow),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SHEETS1, COUCH1], [BLANKET1, COUCH1], [PILLOW1, COUCH1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), cover([COUCH1])], P).

% Manage documents
get_relevant(manage_documents, [DOCUMENT1, FOLDER1, FOLDER2, FOLDER3, DOCUMENT2, FILINGCABINET1, DOCUMENT3]) :-
	type(DOCUMENT1, document), type(FOLDER1, folder), type(FOLDER2, folder), type(FOLDER3, folder), type(DOCUMENT2, document), type(FILINGCABINET1, filingcabinet), type(DOCUMENT3, document).
complete_task(manage_documents, P) :-
	type(DOCUMENT1, document), type(FOLDER1, folder), type(FOLDER2, folder), type(FOLDER3, folder), type(DOCUMENT2, document), type(FILINGCABINET1, filingcabinet), type(DOCUMENT3, document),
	transform([close([]), holds([DOCUMENT1, FOLDER1, FOLDER2, FOLDER3, DOCUMENT2, DOCUMENT3]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FOLDER1, FOLDER2, FOLDER3]), open([FILINGCABINET1]), putin([DOCUMENT1, FOLDER1, FOLDER2, FOLDER3, DOCUMENT2, DOCUMENT3])], P).

% Manage emails
get_relevant(manage_emails, [DESK1, CHAIR1, COMPUTER1, MAIL1, KEYBOARD1]) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(MAIL1, mail), type(KEYBOARD1, keyboard).
complete_task(manage_emails, P) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(MAIL1, mail), type(KEYBOARD1, keyboard),
	transform([close([]), holds([MAIL1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1]), read([MAIL1]), type([KEYBOARD1])], P).

% Oil dining room
get_relevant(oil_dining_room, [TABLE1, CHAIR1, RAG1, CLEANINGSOLUTION1, CABINET1]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution), type(CABINET1, cabinet).
complete_task(oil_dining_room, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), wipe([CHAIR1, CABINET1])], P).

% Open bathroom window
get_relevant(open_bathroom_window, [WINDOW1]) :-
	type(WINDOW1, window).
complete_task(open_bathroom_window, P) :-
	type(WINDOW1, window),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([WINDOW1])], P).

% Open door and great guests
get_relevant(open_door_and_great_guests, [MAN1, WOMAN1, CHILD1]) :-
	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child).
complete_task(open_door_and_great_guests, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([MAN1, WOMAN1, CHILD1]), jump([character1]), run([])], P).

% Open window
get_relevant(open_window, [WINDOW1]) :-
	type(WINDOW1, window).
complete_task(open_window, P) :-
	type(WINDOW1, window),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([WINDOW1])], P).

% Order office suplies
get_relevant(order_office_suplies, [CHAIR1, COMPUTER1, PENCIL1, KEYBOARD1, NOTEPAD1]) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad).
complete_task(order_office_suplies, P) :-
	type(CHAIR1, chair), type(COMPUTER1, computer), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([NOTEPAD1]), type([KEYBOARD1]), write([NOTEPAD1])], P).

% Organize files
get_relevant(organize_files, [DESK1, FOLDER1, FOLDER2, FILINGCABINET1]) :-
	type(DESK1, desk), type(FOLDER1, folder), type(FOLDER2, folder), type(FILINGCABINET1, filingcabinet).
complete_task(organize_files, P) :-
	type(DESK1, desk), type(FOLDER1, folder), type(FOLDER2, folder), type(FILINGCABINET1, filingcabinet),
	transform([close([]), holds([FOLDER1, FOLDER2]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([FILINGCABINET1]), putin([FOLDER1, FOLDER2])], P).

% Organize pantry
get_relevant(organize_pantry, [PANTRY1, DRYPASTA1, FOODVEGETABLE1, GARBAGECAN1, FOODFOOD1, FOODNOODLES1, CRACKERS1]) :-
	type(PANTRY1, pantry), type(DRYPASTA1, drypasta), type(FOODVEGETABLE1, foodvegetable), type(GARBAGECAN1, garbagecan), type(FOODFOOD1, foodfood), type(FOODNOODLES1, foodnoodles), type(CRACKERS1, crackers).
complete_task(organize_pantry, P) :-
	type(PANTRY1, pantry), type(DRYPASTA1, drypasta), type(FOODVEGETABLE1, foodvegetable), type(GARBAGECAN1, garbagecan), type(FOODFOOD1, foodfood), type(FOODNOODLES1, foodnoodles), type(CRACKERS1, crackers),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, GARBAGECAN1], [FOODFOOD1, GARBAGECAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CRACKERS1])], P).

% Paint ceiling
get_relevant(paint_ceiling, [PAINTING1]) :-
	type(PAINTING1, painting).
complete_task(paint_ceiling, P) :-
	type(PAINTING1, painting),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([PAINTING1]), watch([PAINTING1])], P).

% Peel kiwi
get_relevant(peel_kiwi, [KNIFE1, CUTTINGBOARD1, TABLE1, KITCHENCABINET1, FRIDGE1, FOODKIWI1]) :-
	type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODKIWI1, foodkiwi).
complete_task(peel_kiwi, P) :-
	type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge), type(FOODKIWI1, foodkiwi),
	transform([close([]), holds([]), sat_on([]), on_top_of([[KNIFE1, TABLE1], [CUTTINGBOARD1, TABLE1], [FOODKIWI1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), cut([FOODKIWI1])], P).

% Peel potatoes
get_relevant(peel_potatoes, [KNIFE1, TABLE1, FOODPOTATO2, FRIDGE1, FOODPOTATO1, BOWL1, CUPBOARD1]) :-
	type(KNIFE1, knife), type(TABLE1, tabl), type(FOODPOTATO2, foodpotato), type(FRIDGE1, fridge), type(FOODPOTATO1, foodpotato), type(BOWL1, bowl), type(CUPBOARD1, cupboard).
complete_task(peel_potatoes, P) :-
	type(KNIFE1, knife), type(TABLE1, tabl), type(FOODPOTATO2, foodpotato), type(FRIDGE1, fridge), type(FOODPOTATO1, foodpotato), type(BOWL1, bowl), type(CUPBOARD1, cupboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[KNIFE1, BOWL1], [FOODPOTATO1, BOWL1], [BOWL1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1, CUPBOARD1]), cut([FOODPOTATO2])], P).

% Pick toys
get_relevant(pick_toys, [TOY2, TOY1, TOY3, CLOSET1, TOY4]) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CLOSET1, closet), type(TOY4, toy).
complete_task(pick_toys, P) :-
	type(TOY2, toy), type(TOY1, toy), type(TOY3, toy), type(CLOSET1, closet), type(TOY4, toy),
	transform([close([]), holds([TOY2, TOY1, TOY3, TOY4]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([TOY2, TOY1, TOY3, TOY4])], P).

% Pick up all trash
get_relevant(pick_up_all_trash, [NAPKIN1, PAPERTOWEL1, TRASHCAN1]) :-
	type(NAPKIN1, napkin), type(PAPERTOWEL1, papertowel), type(TRASHCAN1, trashcan).
complete_task(pick_up_all_trash, P) :-
	type(NAPKIN1, napkin), type(PAPERTOWEL1, papertowel), type(TRASHCAN1, trashcan),
	transform([close([]), holds([]), sat_on([]), on_top_of([[NAPKIN1, TRASHCAN1], [PAPERTOWEL1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Pick up cat hair
get_relevant(pick_up_cat_hair, [CAT1]) :-
	type(CAT1, cat).
complete_task(pick_up_cat_hair, P) :-
	type(CAT1, cat),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CAT1]), run([])], P).

% Pick up dishes
get_relevant(pick_up_dishes, [PLATE1, TABLE1, GLASS2, PLATE2, GLASS1, SINK1]) :-
	type(PLATE1, plate), type(TABLE1, tabl), type(GLASS2, glass), type(PLATE2, plate), type(GLASS1, glass), type(SINK1, sink).
complete_task(pick_up_dishes, P) :-
	type(PLATE1, plate), type(TABLE1, tabl), type(GLASS2, glass), type(PLATE2, plate), type(GLASS1, glass), type(SINK1, sink),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, SINK1], [GLASS2, SINK1], [PLATE2, SINK1], [GLASS1, SINK1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Pick up spare change on dresser
get_relevant(pick_up_spare_change_on_dresser, [CUP1, COIN1, DRESSER1, COIN3, COIN2]) :-
	type(CUP1, cup), type(COIN1, coin), type(DRESSER1, dresser), type(COIN3, coin), type(COIN2, coin).
complete_task(pick_up_spare_change_on_dresser, P) :-
	type(CUP1, cup), type(COIN1, coin), type(DRESSER1, dresser), type(COIN3, coin), type(COIN2, coin),
	transform([close([]), holds([]), sat_on([]), on_top_of([[COIN1, CUP1], [COIN3, CUP1], [COIN2, CUP1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Place bathmat
get_relevant(place_bathmat, [BATHTUB1, MAT1]) :-
	type(BATHTUB1, bathtub), type(MAT1, mat).
complete_task(place_bathmat, P) :-
	type(BATHTUB1, bathtub), type(MAT1, mat),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), shake([MAT1])], P).

% Place centerpiece
get_relevant(place_centerpiece, [CENTERPIECE1, TABLE1]) :-
	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl).
complete_task(place_centerpiece, P) :-
	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl),
	transform([close([]), holds([CENTERPIECE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CENTERPIECE1])], P).

% Place table
get_relevant(place_table, [TABLE1, FLOOR1, CENTERPIECE1, CABINET1]) :-
	type(TABLE1, tabl), type(FLOOR1, floor), type(CENTERPIECE1, centerpiece), type(CABINET1, cabinet).
complete_task(place_table, P) :-
	type(TABLE1, tabl), type(FLOOR1, floor), type(CENTERPIECE1, centerpiece), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1])], P).

% Play fetch with dog
get_relevant(play_fetch_with_dog, [TOY1, DOG1, COUCH1]) :-
	type(TOY1, toy), type(DOG1, dog), type(COUCH1, couch).
complete_task(play_fetch_with_dog, P) :-
	type(TOY1, toy), type(DOG1, dog), type(COUCH1, couch),
	transform([close([]), holds([TOY1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), throw([TOY1])], P).

% Play on laptop
get_relevant(play_on_laptop, [LAPTOP1, KEYBOARD1, COUCH1]) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch).
complete_task(play_on_laptop, P) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([LAPTOP1]), type([KEYBOARD1])], P).

% Play piano
get_relevant(play_piano, [INSTRUMENTPIANO1, PIANOBENCH1]) :-
	type(INSTRUMENTPIANO1, instrumentpiano), type(PIANOBENCH1, pianobench).
complete_task(play_piano, P) :-
	type(INSTRUMENTPIANO1, instrumentpiano), type(PIANOBENCH1, pianobench),
	transform([close([]), holds([]), sat_on([PIANOBENCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), play([character1]), touch([INSTRUMENTPIANO1])], P).

% Play with toys
get_relevant(play_with_toys, [BED1, TOY1, CABINET1]) :-
	type(BED1, bed), type(TOY1, toy), type(CABINET1, cabinet).
complete_task(play_with_toys, P) :-
	type(BED1, bed), type(TOY1, toy), type(CABINET1, cabinet),
	transform([close([]), holds([TOY1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), shake([TOY1])], P).

% Playtime lunch with dolls
get_relevant(playtime_lunch_with_dolls, [MUG2, PLATE1, TABLE1, CHAIR1, TOY1, MUG3, PLATE3, TOY2, PLATE2, CHAIR3, MUG1, FOODFOOD1, POT1, CHAIR2]) :-
	type(MUG2, mug), type(PLATE1, plate), type(TABLE1, tabl), type(CHAIR1, chair), type(TOY1, toy), type(MUG3, mug), type(PLATE3, plate), type(TOY2, toy), type(PLATE2, plate), type(CHAIR3, chair), type(MUG1, mug), type(FOODFOOD1, foodfood), type(POT1, pot), type(CHAIR2, chair).
complete_task(playtime_lunch_with_dolls, P) :-
	type(MUG2, mug), type(PLATE1, plate), type(TABLE1, tabl), type(CHAIR1, chair), type(TOY1, toy), type(MUG3, mug), type(PLATE3, plate), type(TOY2, toy), type(PLATE2, plate), type(CHAIR3, chair), type(MUG1, mug), type(FOODFOOD1, foodfood), type(POT1, pot), type(CHAIR2, chair),
	transform([close([]), holds([]), sat_on([CHAIR3]), on_top_of([[MUG2, TABLE1], [PLATE1, TABLE1], [TOY1, CHAIR1], [MUG3, TABLE1], [PLATE3, TABLE1], [TOY2, CHAIR2], [PLATE2, TABLE1], [MUG1, TABLE1], [FOODFOOD1, TABLE1], [POT1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Plug in nightlight
get_relevant(plug_in_nightlight, [ELECTRICALOUTLET1, LIGHT1, DRESSER1]) :-
	type(ELECTRICALOUTLET1, electricaloutlet), type(LIGHT1, light), type(DRESSER1, dresser).
complete_task(plug_in_nightlight, P) :-
	type(ELECTRICALOUTLET1, electricaloutlet), type(LIGHT1, light), type(DRESSER1, dresser),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([LIGHT1])], P).

% Polish table
get_relevant(polish_table, [TRASHCAN1, TABLE1, PAPERTOWEL1, CLEANINGBOTTLE1]) :-
	type(TRASHCAN1, trashcan), type(TABLE1, tabl), type(PAPERTOWEL1, papertowel), type(CLEANINGBOTTLE1, cleaningbottle).
complete_task(polish_table, P) :-
	type(TRASHCAN1, trashcan), type(TABLE1, tabl), type(PAPERTOWEL1, papertowel), type(CLEANINGBOTTLE1, cleaningbottle),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PAPERTOWEL1, TRASHCAN1], [CLEANINGBOTTLE1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGBOTTLE1]), squeeze([CLEANINGBOTTLE1])], P).

% Polish tea pot
get_relevant(polish_tea_pot, [POT1, CLEANINGBOTTLE1, RAG1, CLEANINGSOLUTION1]) :-
	type(POT1, pot), type(CLEANINGBOTTLE1, cleaningbottle), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution).
complete_task(polish_tea_pot, P) :-
	type(POT1, pot), type(CLEANINGBOTTLE1, cleaningbottle), type(RAG1, rag), type(CLEANINGSOLUTION1, cleaningsolution),
	transform([close([]), holds([POT1, CLEANINGSOLUTION1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([CLEANINGSOLUTION1]), squeeze([CLEANINGBOTTLE1]), wipe([POT1])], P).

% Pour cup of coffee
get_relevant(pour_cup_of_coffee, [COFFEEPOT1, COFFEECUP1, COFFEE1]) :-
	type(COFFEEPOT1, coffeepot), type(COFFEECUP1, coffeecup), type(COFFEE1, coffee).
complete_task(pour_cup_of_coffee, P) :-
	type(COFFEEPOT1, coffeepot), type(COFFEECUP1, coffeecup), type(COFFEE1, coffee),
	transform([close([]), holds([COFFEEPOT1, COFFEECUP1, COFFEE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([COFFEE1])], P).

% Praying
get_relevant(praying, [EYESBOTH1, MAN1, CHILD1]) :-
	type(EYESBOTH1, eyesboth), type(MAN1, man), type(CHILD1, child).
complete_task(praying, P) :-
	type(EYESBOTH1, eyesboth), type(MAN1, man), type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([EYESBOTH1]), greet([MAN1, CHILD1]), touch([MAN1, CHILD1])], P).

% Print out document
get_relevant(print_out_document, [PRINTINGPAPER1, CHAIR1, COMPUTER1, DOCUMENT1, PRINTER1, KEYBOARD1]) :-
	type(PRINTINGPAPER1, printingpaper), type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(PRINTER1, printer), type(KEYBOARD1, keyboard).
complete_task(print_out_document, P) :-
	type(PRINTINGPAPER1, printingpaper), type(CHAIR1, chair), type(COMPUTER1, computer), type(DOCUMENT1, document), type(PRINTER1, printer), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[PRINTINGPAPER1, PRINTER1], [DOCUMENT1, PRINTER1]]), inside([]), on([COMPUTER1, PRINTER1]), laid_on([]), used([]), eaten([]), read([DOCUMENT1]), standup([character1]), type([KEYBOARD1])], P).

% Push all chairs in
get_relevant(push_all_chairs_in, [TABLE1, CHAIR1, CHAIR3, CHAIR4, CHAIR2]) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(CHAIR3, chair), type(CHAIR4, chair), type(CHAIR2, chair).
complete_task(push_all_chairs_in, P) :-
	type(TABLE1, tabl), type(CHAIR1, chair), type(CHAIR3, chair), type(CHAIR4, chair), type(CHAIR2, chair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1, CHAIR3, CHAIR4, CHAIR2])], P).

% Push in desk chair
get_relevant(push_in_desk_chair, [DESK1, CHAIR1]) :-
	type(DESK1, desk), type(CHAIR1, chair).
complete_task(push_in_desk_chair, P) :-
	type(DESK1, desk), type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1]), touch([CHAIR1])], P).

% Push in dining room chair
get_relevant(push_in_dining_room_chair, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(push_in_dining_room_chair, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([CHAIR1]), standup([character1]), touch([CHAIR1])], P).

% Put alarm clock in bedroom
get_relevant(put_alarm_clock_in_bedroom, [ALARMCLOCK1, DRESSER1]) :-
	type(ALARMCLOCK1, alarmclock), type(DRESSER1, dresser).
complete_task(put_alarm_clock_in_bedroom, P) :-
	type(ALARMCLOCK1, alarmclock), type(DRESSER1, dresser),
	transform([close([]), holds([]), sat_on([]), on_top_of([[ALARMCLOCK1, DRESSER1]]), inside([]), on([ALARMCLOCK1]), laid_on([]), used([]), eaten([]), open([DRESSER1])], P).

% Put away blankets
get_relevant(put_away_blankets, [BASKETFORCLOTHES1, BLANKET1, BLANKET2]) :-
	type(BASKETFORCLOTHES1, basketforclothes), type(BLANKET1, blanket), type(BLANKET2, blanket).
complete_task(put_away_blankets, P) :-
	type(BASKETFORCLOTHES1, basketforclothes), type(BLANKET1, blanket), type(BLANKET2, blanket),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BLANKET1, BASKETFORCLOTHES1], [BLANKET2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([BLANKET1, BLANKET2])], P).

% Put away clothes
get_relevant(put_away_clothes, [CLOTHESDRESS2, BASKETFORCLOTHES1, CLOTHESDRESS1, CABINET1]) :-
	type(CLOTHESDRESS2, clothesdress), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESDRESS1, clothesdress), type(CABINET1, cabinet).
complete_task(put_away_clothes, P) :-
	type(CLOTHESDRESS2, clothesdress), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESDRESS1, clothesdress), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESDRESS2, CABINET1], [CLOTHESDRESS1, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), fold([CLOTHESDRESS2, CLOTHESDRESS1])], P).

% Put away dishes
get_relevant(put_away_dishes, [PLATE1, CUP1, PLATE2, DISHWASHER1, KITCHENCABINET1, BOWL1]) :-
	type(PLATE1, plate), type(CUP1, cup), type(PLATE2, plate), type(DISHWASHER1, dishwasher), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl).
complete_task(put_away_dishes, P) :-
	type(PLATE1, plate), type(CUP1, cup), type(PLATE2, plate), type(DISHWASHER1, dishwasher), type(KITCHENCABINET1, kitchencabinet), type(BOWL1, bowl),
	transform([close([]), holds([PLATE1, CUP1, PLATE2, BOWL1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([DISHWASHER1, KITCHENCABINET1]), putin([PLATE1, CUP1, PLATE2, BOWL1])], P).

% Put away jackets
get_relevant(put_away_jackets, [HANGER1, CLOTHESJACKET1, CLOSET1]) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet).
complete_task(put_away_jackets, P) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket), type(CLOSET1, closet),
	transform([close([]), holds([HANGER1]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([HANGER1])], P).

% Put away keys
get_relevant(put_away_keys, [BAG1, KEYS1]) :-
	type(BAG1, bag), type(KEYS1, keys).
complete_task(put_away_keys, P) :-
	type(BAG1, bag), type(KEYS1, keys),
	transform([close([]), holds([]), sat_on([]), on_top_of([[KEYS1, BAG1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([BAG1])], P).

% Put down bags
get_relevant(put_down_bags, [GROCERIES1, TABLE1]) :-
	type(GROCERIES1, groceries), type(TABLE1, tabl).
complete_task(put_down_bags, P) :-
	type(GROCERIES1, groceries), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GROCERIES1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put in chair
get_relevant(put_in_chair, [CHAIR1, FLOOR1]) :-
	type(CHAIR1, chair), type(FLOOR1, floor).
complete_task(put_in_chair, P) :-
	type(CHAIR1, chair), type(FLOOR1, floor),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CHAIR1, FLOOR1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put mail away
get_relevant(put_mail_away, [DESK1, MAIL1, MAIL2, COFFEETABLE1, MAIL4, MAIL3]) :-
	type(DESK1, desk), type(MAIL1, mail), type(MAIL2, mail), type(COFFEETABLE1, coffeetable), type(MAIL4, mail), type(MAIL3, mail).
complete_task(put_mail_away, P) :-
	type(DESK1, desk), type(MAIL1, mail), type(MAIL2, mail), type(COFFEETABLE1, coffeetable), type(MAIL4, mail), type(MAIL3, mail),
	transform([close([DESK1, MAIL1, MAIL2, COFFEETABLE1, MAIL4, MAIL3]), holds([]), sat_on([]), on_top_of([[MAIL1, COFFEETABLE1], [MAIL2, COFFEETABLE1], [MAIL4, COFFEETABLE1], [MAIL3, COFFEETABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([DESK1])], P).

% Put on coat and shoes
get_relevant(put_on_coat_and_shoes, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(put_on_coat_and_shoes, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).

% Put out flowers
get_relevant(put_out_flowers, [CENTERPIECE1, TABLE1]) :-
	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl).
complete_task(put_out_flowers, P) :-
	type(CENTERPIECE1, centerpiece), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CENTERPIECE1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Put shoes and coats
get_relevant(put_shoes_and_coats, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(put_shoes_and_coats, P) :-
	type(SHOES1, shoes),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([SHOES1])], P).

% Put shoes in shoe rack
get_relevant(put_shoes_in_shoe_rack, [CLOSET1, SHOES1]) :-
	type(CLOSET1, closet), type(SHOES1, shoes).
complete_task(put_shoes_in_shoe_rack, P) :-
	type(CLOSET1, closet), type(SHOES1, shoes),
	transform([close([]), holds([SHOES1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1])], P).

% Put slippers in closet
get_relevant(put_slippers_in_closet, [SHOES1, CLOSET1, SHOES2]) :-
	type(SHOES1, shoes), type(CLOSET1, closet), type(SHOES2, shoes).
complete_task(put_slippers_in_closet, P) :-
	type(SHOES1, shoes), type(CLOSET1, closet), type(SHOES2, shoes),
	transform([close([]), holds([SHOES1, SHOES2]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), putin([SHOES1, SHOES2])], P).

% Put up feet
get_relevant(put_up_feet, [COFFEETABLE1, FEETBOTH1, COUCH1]) :-
	type(COFFEETABLE1, coffeetable), type(FEETBOTH1, feetboth), type(COUCH1, couch).
complete_task(put_up_feet, P) :-
	type(COFFEETABLE1, coffeetable), type(FEETBOTH1, feetboth), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), sleep([character1])], P).

% Put washed clothes in almirah
get_relevant(put_washed_clothes_in_almirah, [HANGER1]) :-
	type(HANGER1, hanger).
complete_task(put_washed_clothes_in_almirah, P) :-
	type(HANGER1, hanger),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([HANGER1]), wipe([HANGER1])], P).

% Rain welcome
get_relevant(rain_welcome, [TOWEL1, FACE1, HAIR1]) :-
	type(TOWEL1, towel), type(FACE1, face), type(HAIR1, hair).
complete_task(rain_welcome, P) :-
	type(TOWEL1, towel), type(FACE1, face), type(HAIR1, hair),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wipe([FACE1, HAIR1])], P).

% Raise blinds
get_relevant(raise_blinds, [CURTAIN2, CURTAIN1]) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain).
complete_task(raise_blinds, P) :-
	type(CURTAIN2, curtain), type(CURTAIN1, curtain),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([CURTAIN2, CURTAIN1]), pull([CURTAIN2, CURTAIN1])], P).

% Read magazine
get_relevant(read_magazine, [MAGAZINE1]) :-
	type(MAGAZINE1, magazine).
complete_task(read_magazine, P) :-
	type(MAGAZINE1, magazine),
	transform([close([]), holds([MAGAZINE1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([MAGAZINE1])], P).

% Read text message
get_relevant(read_text_message, [CELLPHONE1]) :-
	type(CELLPHONE1, cellphone).
complete_task(read_text_message, P) :-
	type(CELLPHONE1, cellphone),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), text([CELLPHONE1])], P).

% Recycle items
get_relevant(recycle_items, [PLATE1, NAPKIN1, TRASHCAN1, PAPERTOWEL1, PLATE2, NAPKIN2]) :-
	type(PLATE1, plate), type(NAPKIN1, napkin), type(TRASHCAN1, trashcan), type(PAPERTOWEL1, papertowel), type(PLATE2, plate), type(NAPKIN2, napkin).
complete_task(recycle_items, P) :-
	type(PLATE1, plate), type(NAPKIN1, napkin), type(TRASHCAN1, trashcan), type(PAPERTOWEL1, papertowel), type(PLATE2, plate), type(NAPKIN2, napkin),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TRASHCAN1], [NAPKIN1, TRASHCAN1], [PAPERTOWEL1, TRASHCAN1], [PLATE2, TRASHCAN1], [NAPKIN2, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TRASHCAN1])], P).

% Replace toothpaste
get_relevant(replace_toothpaste, [TRASHCAN1, TOOTHPASTE2, TOOTHPASTE1, TOOTHBRUSHHOLDER1]) :-
	type(TRASHCAN1, trashcan), type(TOOTHPASTE2, toothpaste), type(TOOTHPASTE1, toothpaste), type(TOOTHBRUSHHOLDER1, toothbrushholder).
complete_task(replace_toothpaste, P) :-
	type(TRASHCAN1, trashcan), type(TOOTHPASTE2, toothpaste), type(TOOTHPASTE1, toothpaste), type(TOOTHBRUSHHOLDER1, toothbrushholder),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOOTHPASTE2, TOOTHBRUSHHOLDER1], [TOOTHPASTE1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([])], P).

% Replace towel
get_relevant(replace_towel, [BASKETFORCLOTHES1, TOWEL1]) :-
	type(BASKETFORCLOTHES1, basketforclothes), type(TOWEL1, towel).
complete_task(replace_towel, P) :-
	type(BASKETFORCLOTHES1, basketforclothes), type(TOWEL1, towel),
	transform([close([]), holds([]), sat_on([]), on_top_of([[TOWEL1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([TOWEL1]), open([])], P).

% Restock
get_relevant(restock, [BATHTUB1]) :-
	type(BATHTUB1, bathtub).
complete_task(restock, P) :-
	type(BATHTUB1, bathtub),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([BATHTUB1])], P).

% Return from store
get_relevant(return_from_store, [HANGER1, CLOTHESHAT1, TABLE1, PURSE1, KEYS1, CLOTHESJACKET1]) :-
	type(HANGER1, hanger), type(CLOTHESHAT1, clotheshat), type(TABLE1, tabl), type(PURSE1, purse), type(KEYS1, keys), type(CLOTHESJACKET1, clothesjacket).
complete_task(return_from_store, P) :-
	type(HANGER1, hanger), type(CLOTHESHAT1, clotheshat), type(TABLE1, tabl), type(PURSE1, purse), type(KEYS1, keys), type(CLOTHESJACKET1, clothesjacket),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESHAT1, HANGER1], [PURSE1, TABLE1], [KEYS1, TABLE1], [CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Return phone calls
get_relevant(return_phone_calls, [TELEPHONE1]) :-
	type(TELEPHONE1, telephone).
complete_task(return_phone_calls, P) :-
	type(TELEPHONE1, telephone),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), dial([TELEPHONE1]), talk([character1])], P).

% Rotate stock in refrigerator
get_relevant(rotate_stock_in_refrigerator, [FOODBREAD1, FOODVEGETABLE1, FOODCHEESE2, FOODDESSERT1, MILK1, GARBAGECAN1, FRIDGE1, FOODCHEESE1]) :-
	type(FOODBREAD1, foodbread), type(FOODVEGETABLE1, foodvegetable), type(FOODCHEESE2, foodcheese), type(FOODDESSERT1, fooddessert), type(MILK1, milk), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese).
complete_task(rotate_stock_in_refrigerator, P) :-
	type(FOODBREAD1, foodbread), type(FOODVEGETABLE1, foodvegetable), type(FOODCHEESE2, foodcheese), type(FOODDESSERT1, fooddessert), type(MILK1, milk), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(FOODCHEESE1, foodcheese),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODVEGETABLE1, GARBAGECAN1], [FOODCHEESE1, GARBAGECAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), push([FOODDESSERT1])], P).

% Say goodbye
get_relevant(say_goodbye, [CHILD2, MAN1, CHILD1]) :-
	type(CHILD2, child), type(MAN1, man), type(CHILD1, child).
complete_task(say_goodbye, P) :-
	type(CHILD2, child), type(MAN1, man), type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), leave([]), touch([CHILD2, MAN1, CHILD1])], P).

% Say goodbye to guests leaving
get_relevant(say_goodbye_to_guests_leaving, [MAN1, WOMAN1, CHILD1]) :-
	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child).
complete_task(say_goodbye_to_guests_leaving, P) :-
	type(MAN1, man), type(WOMAN1, woman), type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([MAN1, WOMAN1, CHILD1])], P).

% Scrub bottom of feet
get_relevant(scrub_bottom_of_feet, [SHOWER1]) :-
	type(SHOWER1, shower).
complete_task(scrub_bottom_of_feet, P) :-
	type(SHOWER1, shower),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1])], P).

% Scrubbing living room tile floor is once week activity for me
get_relevant(scrubbing_living_room_tile_floor_is_once_week_activity_for_me, [MOP1]) :-
	type(MOP1, mop).
complete_task(scrubbing_living_room_tile_floor_is_once_week_activity_for_me, P) :-
	type(MOP1, mop),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), wash([MOP1])], P).

% Serve cookies
get_relevant(serve_cookies, [PLATE1, TABLE1, CUPBOARD1, CRACKERS1]) :-
	type(PLATE1, plate), type(TABLE1, tabl), type(CUPBOARD1, cupboard), type(CRACKERS1, crackers).
complete_task(serve_cookies, P) :-
	type(PLATE1, plate), type(TABLE1, tabl), type(CUPBOARD1, cupboard), type(CRACKERS1, crackers),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [CRACKERS1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CUPBOARD1]), unwrap([CRACKERS1])], P).

% Serve food
get_relevant(serve_food, [PLATE1, SPOON1, TABLE1, PLATE3, PLATE2, FOODFOOD1]) :-
	type(PLATE1, plate), type(SPOON1, spoon), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood).
complete_task(serve_food, P) :-
	type(PLATE1, plate), type(SPOON1, spoon), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood),
	transform([close([]), holds([]), sat_on([]), on_top_of([[SPOON1, PLATE1], [FOODFOOD1, PLATE3]]), inside([]), on([]), laid_on([]), used([]), eaten([]), uncover([FOODFOOD1])], P).

% Serve meal
get_relevant(serve_meal, [PLATE1, FOODFOOD3, TABLE1, PLATE3, PLATE2, FOODFOOD1, FOODFOOD2]) :-
	type(PLATE1, plate), type(FOODFOOD3, foodfood), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood), type(FOODFOOD2, foodfood).
complete_task(serve_meal, P) :-
	type(PLATE1, plate), type(FOODFOOD3, foodfood), type(TABLE1, tabl), type(PLATE3, plate), type(PLATE2, plate), type(FOODFOOD1, foodfood), type(FOODFOOD2, foodfood),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [FOODFOOD3, PLATE3], [PLATE3, TABLE1], [PLATE2, TABLE1], [FOODFOOD1, PLATE3], [FOODFOOD2, PLATE3]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Set up TV
get_relevant(set_up_tv, [TABLE1, ELECTRICALOUTLET1, COUCH1, TELEVISION1, REMOTECONTROL1]) :-
	type(TABLE1, tabl), type(ELECTRICALOUTLET1, electricaloutlet), type(COUCH1, couch), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol).
complete_task(set_up_tv, P) :-
	type(TABLE1, tabl), type(ELECTRICALOUTLET1, electricaloutlet), type(COUCH1, couch), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([[REMOTECONTROL1, TABLE1]]), inside([]), on([ELECTRICALOUTLET1, TELEVISION1]), laid_on([]), used([]), eaten([]), plugin([TELEVISION1]), unwrap([TELEVISION1])], P).

% Shredding
get_relevant(shredding, [SHREDDER1, DOCUMENT1, FILINGCABINET1]) :-
	type(SHREDDER1, shredder), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet).
complete_task(shredding, P) :-
	type(SHREDDER1, shredder), type(DOCUMENT1, document), type(FILINGCABINET1, filingcabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[DOCUMENT1, SHREDDER1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), plugin([SHREDDER1])], P).

% Shut off alarm
get_relevant(shut_off_alarm, [ALARMCLOCK1]) :-
	type(ALARMCLOCK1, alarmclock).
complete_task(shut_off_alarm, P) :-
	type(ALARMCLOCK1, alarmclock),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([ALARMCLOCK1])], P).

% Sing karaoke
get_relevant(sing_karaoke, [MICROPHONE1, TELEVISION1, CONSOLE1]) :-
	type(MICROPHONE1, microphone), type(TELEVISION1, television), type(CONSOLE1, console).
complete_task(sing_karaoke, P) :-
	type(MICROPHONE1, microphone), type(TELEVISION1, television), type(CONSOLE1, console),
	transform([close([]), holds([MICROPHONE1, CONSOLE1]), sat_on([]), on_top_of([]), inside([]), on([TELEVISION1, CONSOLE1]), laid_on([]), used([]), eaten([]), plugin([MICROPHONE1, CONSOLE1]), sing([character1])], P).

% Sing song
get_relevant(sing_song, [CHILD2, MICROPHONE1, CHILD1]) :-
	type(CHILD2, child), type(MICROPHONE1, microphone), type(CHILD1, child).
complete_task(sing_song, P) :-
	type(CHILD2, child), type(MICROPHONE1, microphone), type(CHILD1, child),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), greet([CHILD2, CHILD1]), sing([character1])], P).

% Sit in chair
get_relevant(sit_in_chair, [CHAIR1]) :-
	type(CHAIR1, chair).
complete_task(sit_in_chair, P) :-
	type(CHAIR1, chair),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pull([CHAIR1])], P).

% Slice apple
get_relevant(slice_apple, [PLATE1, KNIFE1, CUTTINGBOARD1, TABLE1, FOODAPPLE1, KITCHENCABINET1, FRIDGE1]) :-
	type(PLATE1, plate), type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(FOODAPPLE1, foodapple), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge).
complete_task(slice_apple, P) :-
	type(PLATE1, plate), type(KNIFE1, knife), type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(FOODAPPLE1, foodapple), type(KITCHENCABINET1, kitchencabinet), type(FRIDGE1, fridge),
	transform([close([]), holds([]), sat_on([]), on_top_of([[PLATE1, TABLE1], [KNIFE1, TABLE1], [CUTTINGBOARD1, TABLE1], [FOODAPPLE1, PLATE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([KITCHENCABINET1, FRIDGE1]), cut([FOODAPPLE1])], P).

% Sort and fold laundry
get_relevant(sort_and_fold_laundry, [CLOTHESDRESS1]) :-
	type(CLOTHESDRESS1, clothesdress).
complete_task(sort_and_fold_laundry, P) :-
	type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESDRESS1]), wash([CLOTHESDRESS1])], P).

% Sort clothing and care for it
get_relevant(sort_clothing_and_care_for_it, [CLOTHESSHIRT1, BED1, BASKETFORCLOTHES1, CLOTHESSHIRT2, CLOSET1, CLOTHESPANTS1, CLOTHESSKIRT1, CLOTHESSKIRT2, CLOTHESPANTS2]) :-
	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESSKIRT2, clothesskirt), type(CLOTHESPANTS2, clothespants).
complete_task(sort_clothing_and_care_for_it, P) :-
	type(CLOTHESSHIRT1, clothesshirt), type(BED1, bed), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOSET1, closet), type(CLOTHESPANTS1, clothespants), type(CLOTHESSKIRT1, clothesskirt), type(CLOTHESSKIRT2, clothesskirt), type(CLOTHESPANTS2, clothespants),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES1], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESSKIRT1, BASKETFORCLOTHES1], [CLOTHESSKIRT2, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), fold([CLOTHESSHIRT1, CLOTHESSHIRT2, CLOTHESPANTS1, CLOTHESSKIRT1]), putin([CLOTHESSHIRT1, CLOTHESSHIRT2, CLOTHESPANTS1, CLOTHESSKIRT1])], P).

% Sort laundry
get_relevant(sort_laundry, [CLOTHESSHIRT3, CLOTHESSHIRT1, BASKETFORCLOTHES2, BASKETFORCLOTHES1, CLOTHESSHIRT2, CLOTHESPANTS1, CLOTHESPANTS2]) :-
	type(CLOTHESSHIRT3, clothesshirt), type(CLOTHESSHIRT1, clothesshirt), type(BASKETFORCLOTHES2, basketforclothes), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants).
complete_task(sort_laundry, P) :-
	type(CLOTHESSHIRT3, clothesshirt), type(CLOTHESSHIRT1, clothesshirt), type(BASKETFORCLOTHES2, basketforclothes), type(BASKETFORCLOTHES1, basketforclothes), type(CLOTHESSHIRT2, clothesshirt), type(CLOTHESPANTS1, clothespants), type(CLOTHESPANTS2, clothespants),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESSHIRT3, BASKETFORCLOTHES2], [CLOTHESSHIRT1, BASKETFORCLOTHES1], [CLOTHESSHIRT2, BASKETFORCLOTHES2], [CLOTHESPANTS1, BASKETFORCLOTHES1], [CLOTHESPANTS2, BASKETFORCLOTHES2]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Spend family time playing games
get_relevant(spend_family_time_playing_games, [MAN1, TABLE1, CHAIR1, MAN2, CLOSET1, FRIDGE1, FOODSNACK1, CARDS1, DECKOFCARDS1]) :-
	type(MAN1, man), type(TABLE1, tabl), type(CHAIR1, chair), type(MAN2, man), type(CLOSET1, closet), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CARDS1, cards), type(DECKOFCARDS1, deckofcards).
complete_task(spend_family_time_playing_games, P) :-
	type(MAN1, man), type(TABLE1, tabl), type(CHAIR1, chair), type(MAN2, man), type(CLOSET1, closet), type(FRIDGE1, fridge), type(FOODSNACK1, foodsnack), type(CARDS1, cards), type(DECKOFCARDS1, deckofcards),
	transform([close([]), holds([CARDS1]), sat_on([CHAIR1]), on_top_of([[FOODSNACK1, TABLE1], [DECKOFCARDS1, TABLE1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1, FRIDGE1]), fold([CARDS1]), unwrap([DECKOFCARDS1])], P).

% Squeeze lemon
get_relevant(squeeze_lemon, [CUTTINGBOARD1, TABLE1, CHEFKNIFE1, FOODLEMON1, GARBAGECAN1, FRIDGE1, BOWL1, JUICE1]) :-
	type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FOODLEMON1, foodlemon), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(BOWL1, bowl), type(JUICE1, juice).
complete_task(squeeze_lemon, P) :-
	type(CUTTINGBOARD1, cuttingboard), type(TABLE1, tabl), type(CHEFKNIFE1, chefknife), type(FOODLEMON1, foodlemon), type(GARBAGECAN1, garbagecan), type(FRIDGE1, fridge), type(BOWL1, bowl), type(JUICE1, juice),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CUTTINGBOARD1, TABLE1], [CHEFKNIFE1, CUTTINGBOARD1], [FOODLEMON1, GARBAGECAN1], [BOWL1, TABLE1], [JUICE1, GARBAGECAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), cut([FOODLEMON1]), pour([JUICE1]), squeeze([FOODLEMON1])], P).

% Straighten bookshelf
get_relevant(straighten_bookshelf, [DESK1, BOOK3, BOOK2, BOOK4, BOOKSHELF1, BOOK1]) :-
	type(DESK1, desk), type(BOOK3, book), type(BOOK2, book), type(BOOK4, book), type(BOOKSHELF1, bookshelf), type(BOOK1, book).
complete_task(straighten_bookshelf, P) :-
	type(DESK1, desk), type(BOOK3, book), type(BOOK2, book), type(BOOK4, book), type(BOOKSHELF1, bookshelf), type(BOOK1, book),
	transform([close([]), holds([]), sat_on([]), on_top_of([[BOOK3, BOOKSHELF1], [BOOK2, BOOKSHELF1], [BOOK4, BOOKSHELF1], [BOOK1, BOOKSHELF1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), open([BOOKSHELF1])], P).

% Straighten pictures on wall
get_relevant(straighten_pictures_on_wall, [PAINTING2, PAINTING1]) :-
	type(PAINTING2, painting), type(PAINTING1, painting).
complete_task(straighten_pictures_on_wall, P) :-
	type(PAINTING2, painting), type(PAINTING1, painting),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), push([PAINTING2, PAINTING1]), touch([PAINTING2, PAINTING1])], P).

% Surf internet
get_relevant(surf_internet, [LAPTOP1, KEYBOARD1, COUCH1]) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch).
complete_task(surf_internet, P) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch),
	transform([close([]), holds([LAPTOP1]), sat_on([COUCH1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Surf net
get_relevant(surf_net, [BED1, LAPTOP1, DRESSER1, KEYBOARD1]) :-
	type(BED1, bed), type(LAPTOP1, laptop), type(DRESSER1, dresser), type(KEYBOARD1, keyboard).
complete_task(surf_net, P) :-
	type(BED1, bed), type(LAPTOP1, laptop), type(DRESSER1, dresser), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([]), on_top_of([[LAPTOP1, DRESSER1]]), inside([]), on([]), laid_on([BED1]), used([]), eaten([]), off([LAPTOP1]), open([DRESSER1]), sleep([character1]), type([KEYBOARD1])], P).

% Surf web for money legitimate making opportunities
get_relevant(surf_web_for_money_legitimate_making_opportunities, [DESK1, CHAIR1, COMPUTER1, KEYBOARD1]) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard).
complete_task(surf_web_for_money_legitimate_making_opportunities, P) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(KEYBOARD1, keyboard),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Sweep hallway please
get_relevant(sweep_hallway_please, [VACUUMCLEANER1, CLOSET1]) :-
	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet).
complete_task(sweep_hallway_please, P) :-
	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet),
	transform([close([]), holds([VACUUMCLEANER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), off([VACUUMCLEANER1]), plugin([VACUUMCLEANER1]), plugout([VACUUMCLEANER1]), pull([VACUUMCLEANER1]), push([VACUUMCLEANER1]), putin([VACUUMCLEANER1])], P).

% Switch on lamp
get_relevant(switch_on_lamp, [LAMP1]) :-
	type(LAMP1, lamp).
complete_task(switch_on_lamp, P) :-
	type(LAMP1, lamp),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([LAMP1]), laid_on([]), used([]), eaten([])], P).

% Take off coat
get_relevant(take_off_coat, [HANGER1, CLOTHESJACKET1]) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket).
complete_task(take_off_coat, P) :-
	type(HANGER1, hanger), type(CLOTHESJACKET1, clothesjacket),
	transform([close([]), holds([]), sat_on([]), on_top_of([[CLOTHESJACKET1, HANGER1]]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Take shoes off
get_relevant(take_shoes_off, [SHOES1]) :-
	type(SHOES1, shoes).
complete_task(take_shoes_off, P) :-
	type(SHOES1, shoes),
	transform([close([SHOES1]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Tax filing
get_relevant(tax_filing, [DESK1, CHAIR1, COMPUTER1, BILLS1, CHECK1, KEYBOARD1, PEN1]) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(BILLS1, bills), type(CHECK1, check), type(KEYBOARD1, keyboard), type(PEN1, pen).
complete_task(tax_filing, P) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(BILLS1, bills), type(CHECK1, check), type(KEYBOARD1, keyboard), type(PEN1, pen),
	transform([close([]), holds([CHECK1]), sat_on([CHAIR1]), on_top_of([[BILLS1, DESK1]]), inside([]), on([COMPUTER1]), laid_on([]), used([]), eaten([]), open([DESK1]), type([KEYBOARD1]), write([CHECK1])], P).

% Text friend
get_relevant(text_friend, [BED1, CELLPHONE1]) :-
	type(BED1, bed), type(CELLPHONE1, cellphone).
complete_task(text_friend, P) :-
	type(BED1, bed), type(CELLPHONE1, cellphone),
	transform([close([]), holds([CELLPHONE1]), sat_on([BED1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), text([CELLPHONE1])], P).

% Throw away newspaper
get_relevant(throw_away_newspaper, [NEWSPAPER1, TRASHCAN1, TABLE1]) :-
	type(NEWSPAPER1, newspaper), type(TRASHCAN1, trashcan), type(TABLE1, tabl).
complete_task(throw_away_newspaper, P) :-
	type(NEWSPAPER1, newspaper), type(TRASHCAN1, trashcan), type(TABLE1, tabl),
	transform([close([]), holds([]), sat_on([]), on_top_of([[NEWSPAPER1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([TRASHCAN1])], P).

% Throw away paper
get_relevant(throw_away_paper, [TRASHCAN1, DESK1, CHAIR1, PAPER1]) :-
	type(TRASHCAN1, trashcan), type(DESK1, desk), type(CHAIR1, chair), type(PAPER1, paper).
complete_task(throw_away_paper, P) :-
	type(TRASHCAN1, trashcan), type(DESK1, desk), type(CHAIR1, chair), type(PAPER1, paper),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[PAPER1, TRASHCAN1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), squeeze([PAPER1]), standup([character1])], P).

% Toast bread
get_relevant(toast_bread, [FOODBREAD1, TOASTER1, ELECTRICALOUTLET1, FRIDGE1]) :-
	type(FOODBREAD1, foodbread), type(TOASTER1, toaster), type(ELECTRICALOUTLET1, electricaloutlet), type(FRIDGE1, fridge).
complete_task(toast_bread, P) :-
	type(FOODBREAD1, foodbread), type(TOASTER1, toaster), type(ELECTRICALOUTLET1, electricaloutlet), type(FRIDGE1, fridge),
	transform([close([]), holds([]), sat_on([]), on_top_of([[FOODBREAD1, TOASTER1]]), inside([]), on([TOASTER1, ELECTRICALOUTLET1]), laid_on([]), used([]), eaten([]), closed([FRIDGE1]), plugin([TOASTER1])], P).

% Turn off TV
get_relevant(turn_off_tv, [TELEVISION1]) :-
	type(TELEVISION1, television).
complete_task(turn_off_tv, P) :-
	type(TELEVISION1, television),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([TELEVISION1])], P).

% Turn on TV
get_relevant(turn_on_tv, [CHAIR1, TELEVISION1, REMOTECONTROL1]) :-
	type(CHAIR1, chair), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol).
complete_task(turn_on_tv, P) :-
	type(CHAIR1, chair), type(TELEVISION1, television), type(REMOTECONTROL1, remotecontrol),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([TELEVISION1]), laid_on([]), used([]), eaten([])], P).

% Turn on radio
get_relevant(turn_on_radio, [RADIO1]) :-
	type(RADIO1, radio).
complete_task(turn_on_radio, P) :-
	type(RADIO1, radio),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([RADIO1]), laid_on([]), used([]), eaten([])], P).

% Use laptop
get_relevant(use_laptop, [LAPTOP1, KEYBOARD1, COUCH1]) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch).
complete_task(use_laptop, P) :-
	type(LAPTOP1, laptop), type(KEYBOARD1, keyboard), type(COUCH1, couch),
	transform([close([]), holds([]), sat_on([COUCH1]), on_top_of([]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), type([KEYBOARD1])], P).

% Wash and clean all crystal in china cabinet
get_relevant(wash_and_clean_all_crystal_in_china_cabinet, [DISHRACK1, GLASS2, WINEGLASS2, GLASS1, TOWEL1, SINK1, WINEGLASS1, FAUCET1, RAG1, CABINET1]) :-
	type(DISHRACK1, dishrack), type(GLASS2, glass), type(WINEGLASS2, wineglass), type(GLASS1, glass), type(TOWEL1, towel), type(SINK1, sink), type(WINEGLASS1, wineglass), type(FAUCET1, faucet), type(RAG1, rag), type(CABINET1, cabinet).
complete_task(wash_and_clean_all_crystal_in_china_cabinet, P) :-
	type(DISHRACK1, dishrack), type(GLASS2, glass), type(WINEGLASS2, wineglass), type(GLASS1, glass), type(TOWEL1, towel), type(SINK1, sink), type(WINEGLASS1, wineglass), type(FAUCET1, faucet), type(RAG1, rag), type(CABINET1, cabinet),
	transform([close([]), holds([]), sat_on([]), on_top_of([[GLASS2, CABINET1], [WINEGLASS2, CABINET1], [GLASS1, CABINET1], [TOWEL1, CABINET1], [SINK1, DISHRACK1], [WINEGLASS1, CABINET1]]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CABINET1]), off([FAUCET1]), rinse([GLASS2, WINEGLASS2, GLASS1, WINEGLASS1, RAG1]), soak([RAG1]), squeeze([RAG1]), wash([GLASS2, WINEGLASS2, GLASS1, WINEGLASS1]), wipe([GLASS2, WINEGLASS2, GLASS1, WINEGLASS1])], P).

% Wash back
get_relevant(wash_back, [SHOWER1, SPONGE1]) :-
	type(SHOWER1, shower), type(SPONGE1, sponge).
complete_task(wash_back, P) :-
	type(SHOWER1, shower), type(SPONGE1, sponge),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), enter([SHOWER1]), leave([SHOWER1])], P).

% Wash dining table
get_relevant(wash_dining_table, [CLOTHESDRESS1]) :-
	type(CLOTHESDRESS1, clothesdress).
complete_task(wash_dining_table, P) :-
	type(CLOTHESDRESS1, clothesdress),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), fold([CLOTHESDRESS1]), wash([CLOTHESDRESS1])], P).

% Wash monitor
get_relevant(wash_monitor, [NAPKIN1, BRUSH1, COMPUTER1]) :-
	type(NAPKIN1, napkin), type(BRUSH1, brush), type(COMPUTER1, computer).
complete_task(wash_monitor, P) :-
	type(NAPKIN1, napkin), type(BRUSH1, brush), type(COMPUTER1, computer),
	transform([close([]), holds([NAPKIN1, BRUSH1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), drop([BRUSH1]), off([COMPUTER1]), wash([NAPKIN1]), wipe([COMPUTER1])], P).

% Wash table
get_relevant(wash_table, [RAG1, WATER1, TABLE1]) :-
	type(RAG1, rag), type(WATER1, water), type(TABLE1, tabl).
complete_task(wash_table, P) :-
	type(RAG1, rag), type(WATER1, water), type(TABLE1, tabl),
	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([WATER1])], P).

% Water plants
get_relevant(water_plants, [POT1, WATER1, POT3, POT2]) :-
	type(POT1, pot), type(WATER1, water), type(POT3, pot), type(POT2, pot).
complete_task(water_plants, P) :-
	type(POT1, pot), type(WATER1, water), type(POT3, pot), type(POT2, pot),
	transform([close([]), holds([WATER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), pour([WATER1])], P).

% Wipe down baseboards please
get_relevant(wipe_down_baseboards_please, [WALL1, RAG1]) :-
	type(WALL1, wall), type(RAG1, rag).
complete_task(wipe_down_baseboards_please, P) :-
	type(WALL1, wall), type(RAG1, rag),
	transform([close([WALL1]), holds([RAG1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([])], P).

% Wipe room down with lysol
get_relevant(wipe_room_down_with_lysol, [DRESSER1]) :-
	type(DRESSER1, dresser).
complete_task(wipe_room_down_with_lysol, P) :-
	type(DRESSER1, dresser),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), touch([DRESSER1]), wipe([DRESSER1])], P).

% Write
get_relevant(write, [CHAIR1, DESK1, LAPTOP1, PENCIL1, KEYBOARD1, NOTEPAD1]) :-
	type(CHAIR1, chair), type(DESK1, desk), type(LAPTOP1, laptop), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad).
complete_task(write, P) :-
	type(CHAIR1, chair), type(DESK1, desk), type(LAPTOP1, laptop), type(PENCIL1, pencil), type(KEYBOARD1, keyboard), type(NOTEPAD1, notepad),
	transform([close([]), holds([]), sat_on([CHAIR1]), on_top_of([[NOTEPAD1, DESK1]]), inside([]), on([LAPTOP1]), laid_on([]), used([]), eaten([]), open([DESK1]), type([KEYBOARD1]), write([NOTEPAD1])], P).

% Write report
get_relevant(write_report, [DESK1, CHAIR1, COMPUTER1, PRINTER1, MOUSE1, KEYBOARD1]) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(PRINTER1, printer), type(MOUSE1, mouse), type(KEYBOARD1, keyboard).
complete_task(write_report, P) :-
	type(DESK1, desk), type(CHAIR1, chair), type(COMPUTER1, computer), type(PRINTER1, printer), type(MOUSE1, mouse), type(KEYBOARD1, keyboard),
	transform([close([]), holds([MOUSE1]), sat_on([CHAIR1]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), off([COMPUTER1, PRINTER1]), pull([CHAIR1, MOUSE1]), touch([MOUSE1]), type([KEYBOARD1])], P).

% practice own singing
get_relevant(practice_own_singing, [INSTRUMENTPIANO1, MICROPHONE1, BOOK1, CDPLAYER1, MUSICSTAND1, BENCH1]) :-
	type(INSTRUMENTPIANO1, instrumentpiano), type(MICROPHONE1, microphone), type(BOOK1, book), type(CDPLAYER1, cdplayer), type(MUSICSTAND1, musicstand), type(BENCH1, bench).
complete_task(practice_own_singing, P) :-
	type(INSTRUMENTPIANO1, instrumentpiano), type(MICROPHONE1, microphone), type(BOOK1, book), type(CDPLAYER1, cdplayer), type(MUSICSTAND1, musicstand), type(BENCH1, bench),
	transform([close([]), holds([]), sat_on([BENCH1]), on_top_of([[MICROPHONE1, MUSICSTAND1], [BOOK1, MUSICSTAND1], [CDPLAYER1, MUSICSTAND1]]), inside([]), on([MICROPHONE1, CDPLAYER1]), laid_on([]), used([]), eaten([]), plugin([MICROPHONE1, CDPLAYER1]), pull([BENCH1]), sing([character1])], P).

% use bathroom
get_relevant(use_bathroom, [CLOTHESPANTS1, TOILET1]) :-
	type(CLOTHESPANTS1, clothespants), type(TOILET1, toilet).
complete_task(use_bathroom, P) :-
	type(CLOTHESPANTS1, clothespants), type(TOILET1, toilet),
	transform([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), flush([TOILET1]), puton([CLOTHESPANTS1])], P).

% vacuum carpet
get_relevant(vacuum_carpet, [VACUUMCLEANER1, CLOSET1]) :-
	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet).
complete_task(vacuum_carpet, P) :-
	type(VACUUMCLEANER1, vacuumcleaner), type(CLOSET1, closet),
	transform([close([]), holds([VACUUMCLEANER1]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), closed([CLOSET1]), off([VACUUMCLEANER1]), plugin([VACUUMCLEANER1]), plugout([VACUUMCLEANER1]), pull([VACUUMCLEANER1]), push([VACUUMCLEANER1]), putin([VACUUMCLEANER1])], P).
