append([ ], Y, Y).
append([X|L1],L2,[X|L3]) :- append(L1,L2,L3).

remove_all([], _, []).
remove_all([H|T], Remove, Result) :-
    member(H, Remove),
    !,
    remove_all(T, Remove, Result).
remove_all([H|T], Remove, [H|Result]) :-
    remove_all(T, Remove, Result).

rev(L, R) :- trev(L, [], R).
trev([], P, P).
trev([H|T], P, R) :- trev(T, [H|P], R).

% Similar-to Objects
type(character1, character).
% light
type(LIGHT1, light) :- type(LIGHT1, ceilinglamp).
type(LIGHT1, light) :- type(LIGHT1, walllamp).
type(LIGHT1, light) :- type(LIGHT1, tablelamp).
% Lamp
type(Lamp, lamp) :- type(Lamp, ceilinglamp).
type(Lamp, lamp) :- type(Lamp, walllamp).
type(Lamp, lamp) :- type(Lamp, tablelamp).
% Television
type(Television, television) :- type(Television, tv).
% Couch
type(Couch, couch) :- type(Couch, sofa).
type(Couch, couch) :- type(Couch, chair).
type(Couch, couch) :- type(Couch, bed).
% Feet
type(Feet, feet) :- type(Feet, character).
type(Feet, feetboth) :- type(Feet, character).
% printer
type(PRINTER, printer) :- type(PRINTER, officemachine).
% clothesunderwear
type(CLOTHESUNDERWEAR, clothesunderwear) :- type(CLOTHESUNDERWEAR, clothespants).
% cookingpot
type(COOKINGPOT, cookingpot) :- type(COOKINGPOT, fryingpan).
% mail
type(MAIL, mail) :- type(MAIL, paper).
% sponge
type(SPONGE, sponge) :- type(SPONGE, washingsponge).
% printingpaper
type(PRINTINGPAPER, printingpaper) :- type(PRINTINGPAPER, paper).
% cards
type(CARDS, cards) :- type(CARDS, cards).
% fork
type(FORK, fork) :- type(FORK, cutleryfork).
% clothesjacket
type(CLOTHESJACKET, clothesjacket) :- type(CLOTHESJACKET, clothesshirt).
% detergent
type(DETERGENT, detergent) :- type(DETERGENT, barsoap).
% addressbook
type(ADDRESSBOOK, addressbook) :- type(ADDRESSBOOK, book).
% instrumentviolin
type(INSTRUMENTVIOLIN, instrumentviolin) :- type(INSTRUMENTVIOLIN, violin).
% ironingboard
type(IRONINGBOARD, ironingboard) :- type(IRONINGBOARD, coffeetable).
type(IRONINGBOARD, ironingboard) :- type(IRONINGBOARD, kitchentable).
% crayon
type(CRAYON, crayon) :- type(CRAYON, writingutensil).
% faxmachine
type(FAXMACHINE, faxmachine) :- type(FAXMACHINE, officemachine).
% homework
type(HOMEWORK, homework) :- type(HOMEWORK, paper).
% shoeshinekit
type(SHOESHINEKIT, shoeshinekit) :- type(SHOESHINEKIT, cleaningliquid).
% mopbucket
type(MOPBUCKET, mopbucket) :- type(MOPBUCKET, bathtub).
% mechanicalpencil
type(MECHANICALPENCIL, mechanicalpencil) :- type(MECHANICALPENCIL, writingutensil).
% deckofcards
type(DECKOFCARDS, deckofcards) :- type(DECKOFCARDS, cards).
% kettle
type(KETTLE, kettle) :- type(KETTLE, coffeepot).
% foundation
type(FOUNDATION, foundation) :- type(FOUNDATION, makeup).
% water
type(WATER, water) :- type(WATER, waterglass).
% pot
type(POT, pot) :- type(POT, fryingpan).
% diary
type(DIARY, diary) :- type(DIARY, book).
% groceries
type(GROCERIES, groceries) :- food(GROCERIES).
% child
type(CHILD, child) :- type(CHILD, othercharacter).
% cd
type(CD, cd) :- type(CD, disk).
% papertowel
type(PAPERTOWEL, papertowel) :- type(PAPERTOWEL, towel).
% knife
type(KNIFE, knife) :- type(KNIFE, cutleryknife).
% ovenmitts
%type(OVENMITTS, ovenmitts) :- type(OVENMITTS, ovenmitts).
% scrabble
type(SCRABBLE, scrabble) :- type(SCRABBLE, tabletopgame).
% cdplayer
type(CDPLAYER, cdplayer) :- type(CDPLAYER, diskplayer).
% foodbread
type(FOODBREAD, foodbread) :- type(FOODBREAD, breadslice).
% document
type(DOCUMENT, document) :- type(DOCUMENT, paper).
% coffeecup
type(COFFEECUP, coffeecup) :- type(COFFEECUP, waterglass).
% bowl
type(BOWL, bowl) :- type(BOWL, dishbowl).
% man
type(MAN, man) :- type(MAN, othercharacter).
% foodsnack
type(FOODSNACK, foodsnack) :- food(FOODSNACK).
% tray
type(TRAY, tray) :- type(TRAY, oventray).
% shoes
type(SHOES, shoes) :- type(SHOES, shoe).
% foodrice
type(FOODRICE, foodrice) :- type(FOODRICE, breadslice).
% dishrack
type(DISHRACK, dishrack) :- type(DISHRACK, kitchencounter).
% stereo
type(STEREO, stereo) :- type(STEREO, radio).
% instrumentguitar
type(INSTRUMENTGUITAR, instrumentguitar) :- type(INSTRUMENTGUITAR, violin).
% cupboard
type(CUPBOARD, cupboard) :- type(CUPBOARD, kitchencabinet).
type(CUPBOARD, cupboard) :- type(CUPBOARD, cabinet).
type(CUPBOARD, cupboard) :- type(CUPBOARD, bathroomcabinet).
% clothesskirt
type(CLOTHESSKIRT, clothesskirt) :- type(CLOTHESSKIRT, clothespants).
% clothesdress
type(CLOTHESDRESS, clothesdress) :- type(CLOTHESDRESS, clothesshirt).
% iron
%type(IRON, iron) :- type(IRON, iron).
% dog
type(DOG, dog) :- type(DOG, animal).
% laundrydetergent
type(LAUNDRYDETERGENT, laundrydetergent) :- type(LAUNDRYDETERGENT, barsoap).
% dough
%type(DOUGH, dough) :- type(DOUGH, dough).
% coffeefilter
type(COFFEEFILTER, coffeefilter) :- type(COFFEEFILTER, filter).
% groundcoffee
type(GROUNDCOFFEE, groundcoffee) :- type(GROUNDCOFFEE, coffee).
% cleaningbottle
type(CLEANINGBOTTLE, cleaningbottle) :- type(CLEANINGBOTTLE, cleaningliquid).
% textbook
type(TEXTBOOK, textbook) :- type(TEXTBOOK, book).
% dishsoap
type(DISHSOAP, dishsoap) :- type(DISHSOAP, dishwashingsoap).
% facialcleanser
type(FACIALCLEANSER, facialcleanser) :- type(FACIALCLEANSER, barsoap).
% drinkingglass
type(DRINKINGGLASS, drinkingglass) :- type(DRINKINGGLASS, waterglass).
% napkin
type(NAPKIN, napkin) :- type(NAPKIN, towel).
% cleaningsolution
type(CLEANINGSOLUTION, cleaningsolution) :- type(CLEANINGSOLUTION, cleaningliquid).
% picture
type(PICTURE, picture) :- type(PICTURE, wallpictureframe).
% notebook
type(NOTEBOOK, notebook) :- type(NOTEBOOK, book).
% curtain
type(CURTAIN, curtain) :- type(CURTAIN, curtains).
% telephone
type(TELEPHONE, telephone) :- type(TELEPHONE, cellphone).
% foodfruit
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, apple).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, bananas).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, lime).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, peach).
type(FOODFRUIT, foodfruit) :- type(FOODFRUIT, plum).
% keys
%type(KEYS, keys) :- type(KEYS, keys).
% shredder
type(SHREDDER, shredder) :- type(SHREDDER, officemachine).
% creditcard
type(CREDITCARD, creditcard) :- type(CREDITCARD, wallet).
% cuttingboard
type(CUTTINGBOARD, cuttingboard) :- type(CUTTINGBOARD, cuttingboard).
% cup
type(CUP, cup) :- type(CUP, waterglass).
% notes
type(NOTES, notes) :- type(NOTES, paper).
% wine
type(WINE, wine) :- type(WINE, wineglass).
% facesoap
type(FACESOAP, facesoap) :- type(FACESOAP, barsoap).
% foodsteak
type(FOODSTEAK, foodsteak) :- type(FOODSTEAK, salmon).
% teabag
%type(TEABAG, teabag) :- type(TEABAG, teabag).
% lightswitch
has_switch(Lightswitch) :- type(Lightswitch, lightswitch).
% soap
type(SOAP, soap) :- type(SOAP, barsoap).
% armsboth
type(ARMSBOTH, armsboth) :- type(ARMSBOTH, character).
% dvdplayer
type(DVDPLAYER, dvdplayer) :- type(DVDPLAYER, diskplayer).
% foodvegetable
type(FOODVEGETABLE, foodvegetable) :- type(FOODVEGETABLE, bellpepper).
% movie
type(MOVIE, movie) :- type(MOVIE, disk).
% vacuumcleaner
type(VACUUMCLEANER, vacuumcleaner) :- type(VACUUMCLEANER, vacuum).
% coffemaker
type(COFFEMAKER, coffemaker) :- type(COFFEMAKER, coffeemaker).
% hairbrush
type(HAIRBRUSH, hairbrush) :- type(HAIRBRUSH, comb).
% foodegg
type(FOODEGG, foodegg) :- type(FOODEGG, egg).
% needle
type(NEEDLE, needle) :- type(NEEDLE, sewingtools).
% toiletpaper
type(TOILETPAPER, toiletpaper) :- type(TOILETPAPER, paper).
% fooddessert
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, candybar).
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, chocolatesyrup).
type(FOODDESSERT, fooddessert) :- type(FOODDESSERT, whippedcream).
% foodturkey
type(FOODTURKEY, foodturkey) :- type(FOODTURKEY, salmon).
% aftershave
type(AFTERSHAVE, aftershave) :- type(AFTERSHAVE, barsoap).
% tablecloth
%type(TABLECLOTH, tablecloth) :- type(TABLECLOTH, tablecloth).
% foodcarrot
type(FOODCARROT, foodcarrot) :- type(FOODCARROT, carrot).
% milk
%type(MILK, milk) :- type(MILK, milk).
% filingcabinet
type(FILINGCABINET, filingcabinet) :- type(FILINGCABINET, cabinet).
% mat
type(MAT, mat) :- type(MAT, mousemat).
% toothbrushholder
type(TOOTHBRUSHHOLDER, toothbrushholder) :- type(TOOTHBRUSHHOLDER, bathroomcounter).
% clothnapkin
type(CLOTHNAPKIN, clothnapkin) :- type(CLOTHNAPKIN, towel).
% fooddonut
type(FOODDONUT, fooddonut) :- type(FOODDONUT, candybar).
% spoon
type(SPOON, spoon) :- type(SPOON, cutleryfork).
% foodbanana
type(FOODBANANA, foodbanana) :- type(FOODBANANA, bananas).
% cat
type(CAT, cat) :- type(CAT, animal).
% videogameconsole
type(VIDEOGAMECONSOLE, videogameconsole) :- type(VIDEOGAMECONSOLE, diskplayer).
% juice
%type(JUICE, juice) :- type(JUICE, juice).
% chefknife
type(CHEFKNIFE, chefknife) :- type(CHEFKNIFE, cutleryknife).
% shower
%type(SHOWER, shower) :- type(SHOWER, shower).
% ice
%type(ICE, ice) :- type(ICE, ice).
% thread
type(THREAD, thread) :- type(THREAD, sewingtools).
% pen
type(PEN, pen) :- type(PEN, writingutensil).
% fly
type(FLY, fly) :- type(FLY, animal).
% carpet
type(CARPET, carpet) :- type(CARPET, rug).
% face
type(FACE, face) :- type(FACE, character).
% mirror
%type(MIRROR, mirror) :- type(MIRROR, mirror).
% magazine
type(MAGAZINE, magazine) :- type(MAGAZINE, book).
% lightbulb
%type(LIGHTBULB, lightbulb) :- type(LIGHTBULB, lightbulb).
% wallclock
type(WALLCLOCK, wallclock) :- type(WALLCLOCK, clock).
% glass
type(GLASS, glass) :- type(GLASS, waterglass).
% basketforclothes
type(BASKETFORCLOTHES, basketforclothes) :- type(BASKETFORCLOTHES, clothespile).
% laserpointer
type(LASERPOINTER, laserpointer) :- type(LASERPOINTER, toy).
% spectacles
type(SPECTACLES, spectacles) :- type(SPECTACLES, glasses).
% boardgame
type(BOARDGAME, boardgame) :- type(BOARDGAME, tabletopgame).
% broom
type(BROOM, broom) :- type(BROOM, vacuum).
% legsboth
type(LEGSBOTH, legsboth) :- type(LEGSBOTH, character).
% pencil
type(PENCIL, pencil) :- type(PENCIL, writingutensil).
% bookmark
type(BOOKMARK, bookmark) :- type(BOOKMARK, paper).
% foodpeanutbutter
type(FOODPEANUTBUTTER, foodpeanutbutter) :- type(FOODPEANUTBUTTER, peanutbutter).
% blanket
type(BLANKET, blanket) :- type(BLANKET, sheets).
% dishwasher
type(DISHWASHER, dishwasher) :- type(DISHWASHER, washingmachine).
% laptop
type(LAPTOP, laptop) :- type(LAPTOP, computer).
% teeth
type(TEETH, teeth) :- type(TEETH, character).
% foodchicken
type(FOODCHICKEN, foodchicken) :- type(FOODCHICKEN, salmon).
% toy
%type(TOY, toy) :- type(TOY, toy).
% freezer
type(FREEZER, freezer) :- type(FREEZER, fridge).
% painting
type(PAINTING, painting) :- type(PAINTING, wallpictureframe).
% dustpan
type(DUSTPAN, dustpan) :- type(DUSTPAN, garbagecan).
% musicstand
type(MUSICSTAND, musicstand) :- type(MUSICSTAND, coffeetable).
% drawing
type(DRAWING, drawing) :- type(DRAWING, paper).
% newspaper
type(NEWSPAPER, newspaper) :- type(NEWSPAPER, book).
% nailpolish
type(NAILPOLISH, nailpolish) :- type(NAILPOLISH, makeup).
% mop
type(MOP, mop) :- type(MOP, vacuum).
% foodcereal
type(FOODCEREAL, foodcereal) :- type(FOODCEREAL, cereal).
% notepad
type(NOTEPAD, notepad) :- type(NOTEPAD, book).
% foodcheese
type(FOODCHEESE, foodcheese) :- type(FOODCHEESE, cheese).
% foodsalt
type(FOODSALT, foodsalt) :- type(FOODSALT, salt).
% videogamecontroller
type(VIDEOGAMECONTROLLER, videogamecontroller) :- type(VIDEOGAMECONTROLLER, remotecontrol).
% sauce
type(SAUCE, sauce) :- type(SAUCE, chocolatesyrup).
% clotheshat
type(CLOTHESHAT, clotheshat) :- type(CLOTHESHAT, hat).
% scissors
type(SCISSORS, scissors) :- type(SCISSORS, sewingtools).
% duster
type(DUSTER, duster) :- type(DUSTER, vacuum).
% floorlamp
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, ceilinglamp).
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, walllamp).
type(FLOORLAMP, floorlamp) :- type(FLOORLAMP, tablelamp).
% eyesboth
type(EYESBOTH, eyesboth) :- type(EYESBOTH, character).
% button
type(BUTTON, button) :- type(BUTTON, button).
% blowdryer
type(BLOWDRYER, blowdryer) :- type(BLOWDRYER, dryer).
% receipt
type(RECEIPT, receipt) :- type(RECEIPT, paper).
% tea
type(TEA, tea) :- type(TEA, teabag).
% rag
type(RAG, rag) :- type(RAG, towel).
% glue
%type(GLUE, glue) :- type(GLUE, glue).
% trashcan
type(TRASHCAN, trashcan) :- type(TRASHCAN, garbagecan).
% purse
type(PURSE, purse) :- type(PURSE, bag).
% foodfood
type(FOODFOOD, foodfood) :- food(FOODFOOD).
% hairdryer
type(HAIRDRYER, hairdryer) :- type(HAIRDRYER, dryer).
% stamp
%type(STAMP, stamp) :- type(STAMP, stamp).
% woman
type(WOMAN, woman) :- type(WOMAN, othercharacter).
% razor
%type(RAZOR, razor) :- type(RAZOR, razor).
% dirt
%type(DIRT, dirt) :- type(DIRT, dirt).
% phone
type(PHONE, phone) :- type(PHONE, cellphone).
% bills
type(BILLS, bills) :- type(BILLS, paper).
% placemat
type(PLACEMAT, placemat) :- type(PLACEMAT, tablecloth).
% tabl
%type(TABL, tabl) :- type(TABL, coffeetable).
type(TABL, tabl) :- type(TABL, kitchentable).
% oven
type(OVEN, oven) :- type(OVEN, stove).
% handsboth
type(HANDSBOTH, handsboth) :- type(HANDSBOTH, character).
% brush
type(BRUSH1, brush) :- type(BRUSH1, towel).
% dishsoap
type(DISHSOAP1, dishsoap) :- type(DISHSOAP1, dishwashingliquid).
% hair
type(HAIR1, hair) :- type(HAIR1, character).
% drinkable
eatable(X) :- drinkable(X).
type(W, water) :- drinkable(W).
type(W, wineglass) :- drinkable(W).
type(W, waterglass) :- drinkable(W).
% Eatable
eatable(X) :- type(X, plate).
eatable(X) :- type(X, bowl).


get_data(walk(X), X).
get_data(grab(X), X).
get_data(sit(X), X).
get_data(lie(X), X).
get_data(put(X,Y), X).
get_data(switchon(X), X).
get_data(use(X), X).
get_data(eat(X), X).
% putin, drop, puton, throw, pour
get_data(putin(X), X).
get_action(putin(_), X, putin(X)).
similar_action(putin(_), put(_, down)).
% type
get_data(type(X), X).
get_action(type(_), X, type(X)).
similar_action(type(_), use(_)).
% drop
get_data(drop(X), X).
get_action(drop(_), X, drop(X)).
similar_action(drop(_), put(_, down)).
% puton
get_data(puton(X), X).
get_action(puton(_), X, puton(X)).
similar_action(puton(_), use(_)).
% off
get_data(off(X), X).
get_action(off(_), X, off(X)).
similar_action(off(_), use(_)).
% throw
get_data(throw(X), X).
get_action(throw(_), X, throw(X)).
similar_action(throw(_), use(_)).
% pour
get_data(pour(X), X).
get_action(pour(_), X, pour(X)).
similar_action(pour(_), put(_, down)).
% pour
get_data(pour(X), X).
get_action(pour(_), X, pour(X)).
similar_action(pour(_), use(_)).
% Read
get_data(read(X), X).
get_action(read(_), X, read(X)).
similar_action(read(_), use(_)).
% Watch
get_data(watch(X), X).
get_action(watch(_), X, watch(X)).
similar_action(watch(_), use(_)).
% dust
get_data(dust(X), X).
get_action(dust(_), X, dust(X)).
similar_action(dust(_), use(_)).
% fold
get_data(fold(X), X).
get_action(fold(_), X, fold(X)).
similar_action(fold(_), use(_)).
% laugh
get_data(laugh(X), X).
get_action(laugh(_), X, laugh(X)).
similar_action(laugh(_), use(_)).
% dial
get_data(dial(X), X).
get_action(dial(_), X, dial(X)).
similar_action(dial(_), use(_)).
% rinse
get_data(rinse(X), X).
get_action(rinse(_), X, rinse(X)).
similar_action(rinse(_), use(_)).
% sweep
get_data(sweep(X), X).
get_action(sweep(_), X, sweep(X)).
similar_action(sweep(_), use(_)).
% write
get_data(write(X), X).
get_action(write(_), X, write(X)).
similar_action(write(_), use(_)).
% push
get_data(push(X), X).
get_action(push(_), X, push(X)).
similar_action(push(_), use(_)).
% speak
get_data(speak(X), X).
get_action(speak(_), X, speak(X)).
similar_action(speak(_), use(_)).
% cover
get_data(cover(X), X).
get_action(cover(_), X, cover(X)).
similar_action(cover(_), use(_)).
% play
get_data(play(X), X).
get_action(play(_), X, play(X)).
similar_action(play(_), use(_)).
% sleep
get_data(sleep(X), X).
get_action(sleep(_), X, sleep(X)).
similar_action(sleep(_), use(_)).
% unfold
get_data(unfold(X), X).
get_action(unfold(_), X, unfold(X)).
similar_action(unfold(_), use(_)).
% cut
get_data(cut(X), X).
get_action(cut(_), X, cut(X)).
similar_action(cut(_), use(_)).
% closed
get_data(closed(X), X).
get_action(closed(_), X, closed(X)).
similar_action(closed(_), use(_)).
% stretch
get_data(stretch(X), X).
get_action(stretch(_), X, stretch(X)).
similar_action(stretch(_), use(_)).
% wash
get_data(wash(X), X).
get_action(wash(_), X, wash(X)).
similar_action(wash(_), use(_)).
% jump
get_data(jump(X), X).
get_action(jump(_), X, jump(X)).
similar_action(jump(_), use(_)).
% wipe
get_data(wipe(X), X).
get_action(wipe(_), X, wipe(X)).
similar_action(wipe(_), use(_)).
% wakeup
get_data(wakeup(X), X).
get_action(wakeup(_), X, wakeup(X)).
similar_action(wakeup(_), use(_)).
% talk
get_data(talk(X), X).
get_action(talk(_), X, talk(X)).
similar_action(talk(_), use(_)).
% greet
get_data(greet(X), X).
get_action(greet(_), X, greet(X)).
similar_action(greet(_), use(_)).
% sew
get_data(sew(X), X).
get_action(sew(_), X, sew(X)).
similar_action(sew(_), use(_)).
% wrap
get_data(wrap(X), X).
get_action(wrap(_), X, wrap(X)).
similar_action(wrap(_), use(_)).
% brush
get_data(brush(X), X).
get_action(brush(_), X, brush(X)).
similar_action(brush(_), use(_)).
% pull
get_data(pull(X), X).
get_action(pull(_), X, pull(X)).
similar_action(pull(_), use(_)).
% dance
get_data(dance(X), X).
get_action(dance(_), X, dance(X)).
similar_action(dance(_), use(_)).
% soak
get_data(soak(X), X).
get_action(soak(_), X, soak(X)).
similar_action(soak(_), use(_)).
% scrub
get_data(scrub(X), X).
get_action(scrub(_), X, scrub(X)).
similar_action(scrub(_), use(_)).
% flush
get_data(flush(X), X).
get_action(flush(_), X, flush(X)).
similar_action(flush(_), use(_)).
% shake
get_data(shake(X), X).
get_action(shake(_), X, shake(X)).
similar_action(shake(_), use(_)).
% wait
get_data(wait(X), X).
get_action(wait(_), X, wait(X)).
similar_action(wait(_), use(_)).
% spread
get_data(spread(X), X).
get_action(spread(_), X, spread(X)).
similar_action(spread(_), use(_)).
% open
get_data(open(X), X).
get_action(open(_), X, open(X)).
similar_action(open(_), use(_)).
% touch
get_data(touch(X), X).
get_action(touch(_), X, touch(X)).
similar_action(touch(_), use(_)).
% squeeze
get_data(squeeze(X), X).
get_action(squeeze(_), X, squeeze(X)).
similar_action(squeeze(_), grab(_)).
% uncover
get_data(uncover(X), X).
get_action(uncover(_), X, uncover(X)).
similar_action(uncover(_), use(_)).
% leave
get_data(leave(X), X).
get_action(leave(_), X, leave(X)).
similar_action(leave(_), walk(_)).
% enter
get_data(enter(X), X).
get_action(enter(_), X, enter(X)).
similar_action(enter(_), walk(_)).
% run
get_data(run(X), X).
get_action(run(_), X, run(X)).
similar_action(run(_), walk(_)).
% crawl
get_data(crawl(X), X).
get_action(crawl(_), X, crawl(X)).
similar_action(crawl(_), walk(_)).
% plugin
get_data(plugin(X), X).
get_action(plugin(_), X, plugin(X)).
similar_action(plugin(_), switchon(_)).
% plugin
get_data(plugin(X), X).
get_action(plugin(_), X, plugin(X)).
similar_action(plugin(_), use(_)).
% climb
get_data(climb(X), X).
get_action(climb(_), X, climb(X)).
similar_action(climb(_), sit(_)).
% drink
get_data(drink(X), X).
get_action(drink(_), X, drink(X)).
similar_action(drink(_), use(_)).
% standup
get_data(standup(X), X).
get_action(standup(_), X, standup(X)).
similar_action(standup(_), standup).


%check_close(_, C, C).
%check_holds(_, H, H).
%check_sat_on(_, S, S).
%check_on_top_of(_, O, O).
%check_inside(_, I, I).
%check_on(_, O, O).
%check_laid_on(_, L, L).
%check_used(Action, U, UF) :- similar_action(Action, use(_)), get_data(Action, X), remove_all(U, X, UF).
%check_used(_, U, U).
%check_eaten(_, E, E).

% These functions perturb and unperturb the final expected state, to accomodate
% unknown actions requiring analogy
% perturb(FinalStateOriginal, PerturbedFinalState) where PerturbedFinalState only has core state in it
% perturb([close([]), holds([]), sat_on([]), on_top_of([]), inside([]), on([]), laid_on([]), used([]), eaten([]), read([book])], PerturbedFinalState).
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | []],
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).

perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | T],
    PerturbedFinalState)
        :- perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
            T, PerturbedFinalState).

perturb(State, [], FinalState).

% use
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)])
        :- similar_action(Action, use(_)), get_data(Action, X), append(Used, X, UsedX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)]).
% eat
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(UsedX), eaten(Eaten)])
        :- similar_action(Action, eat(_)), get_data(Action, X), append(Eaten, X, EatenX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(EatenX)]).
% grab
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(Close), holds(HoldsX), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)])
        :- similar_action(Action, grab(_)), get_data(Action, X), append(Holds, X, HoldsX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(Close), holds(HoldsX), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
% walk
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(CloseX), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)])
        :- similar_action(Action, walk(_)), get_data(Action, X), append(Close, X, CloseX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(CloseX), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).
% switchon
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(OnX), laid_on(Laid), used(Used), eaten(Eaten)])
        :- similar_action(Action, switchon(_)), get_data(Action, X), append(On, X, OnX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(OnX), laid_on(Laid), used(Used), eaten(Eaten)]).
% sit
perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
    [Action | T],
    [close(Close), holds(Holds), sat_on(SatX), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)])
        :- similar_action(Action, sit(_)), get_data(Action, X), append(Sat, X, SatX),
        perturb([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
        T,
        [close(Close), holds(Holds), sat_on(SatX), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]).

perturb(State, [A | T], FinalState) :- perturb(State, T, FinalState).

% unperturb_state(FinalStateOriginal, PerturbedState, UnperterbedState) reverses the previous using information from the original state
%unperturb_state([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | []],
%    State, State).
%unperturb_state([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | T],
%    PerturbedState, UnperturbedState)
%        :- unperturb_state(T, PerturbedState, PerturbedState, UnperturbedState).
%unperturb_state(_, [], _, UnperturbedState, UnperturbedState).
%unperturb_state([Action | T],
%    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)],
%    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | NewT],
%    UnperturbedState)
%        :- check_close(Action, Close, C), check_holds(Action, H, H), check_sat_on(Action, S, S), check_on_top_of(Action, O, O),
%        check_inside(Action, I, I), check_on(Action, O, O), check_laid_on(Action, L, L), check_used(Action, U, U), check_eaten(Action, E, E).

% unperturb_actions(FinalState, PerturbedPlan, FinalPlan) takes the actions that were performed on an analogized object and fixes them
unperturb_actions([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | []], Plan, Plan).
unperturb_actions([close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten) | T],
    PerturbedPlan, Plan) :- unperturb_actions(T, PerturbedPlan, [], Plan).
unperturb_actions(_, [], Plan, RevPlan) :- rev(Plan, RevPlan).
unperturb_actions(UnusualActions, [Action1 | T], Plan, FinalPlan)
        :- in_unusual(UnusualActions, Action1, Action), unperturb_actions(UnusualActions, T, [Action | Plan], FinalPlan).

in_unusual([], Action, Action).
in_unusual([FirstUnusual | T], Action1, Action)
        :- similar_action(FirstUnusual, Action1), get_data(Action1, X), get_action(FirstUnusual, X, Action).
in_unusual([FirstUnusual | T], Action1, Action) :- in_unusual(T, Action1, Action).
