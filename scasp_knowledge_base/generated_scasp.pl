type(apple_3fef4551, apple).
madeof(apple_3fef4551, ['food']).
type(book_e5ef3174, book).
madeof(book_e5ef3174, ['paper']).
type(bottle_4e73f712, bottle).
madeof(bottle_4e73f712, ['glass']).
type(bowl_208f368b, bowl).
madeof(bowl_208f368b, ['ceramic']).
type(bread_c6b4566e, bread).
madeof(bread_c6b4566e, ['food']).
type(butterknife_4ae287b7, butterknife).
madeof(butterknife_4ae287b7, ['metal']).
type(cabinet_07bf9f23, cabinet).
type(cabinet_7d7a3425, cabinet).
type(cabinet_67e9cbea, cabinet).
type(cabinet_b69a8cbf, cabinet).
type(cabinet_83d77a74, cabinet).
type(cabinet_41c7fc3b, cabinet).
type(cabinet_4223545f, cabinet).
type(cabinet_64c8b7ce, cabinet).
type(cabinet_afbfa706, cabinet).
type(coffeemachine_19c6af8e, coffeemachine).
madeof(coffeemachine_19c6af8e, ['plastic']).
type(countertop_2fe78146, countertop).
type(countertop_203f0cf4, countertop).
type(countertop_978a4b41, countertop).
type(creditcard_5e829d70, creditcard).
madeof(creditcard_5e829d70, ['plastic']).
type(cup_4c1ceda2, cup).
madeof(cup_4c1ceda2, ['glass']).
type(dishsponge_2f93679b, dishsponge).
madeof(dishsponge_2f93679b, ['sponge']).
type(drawer_454fdaaf, drawer).
type(drawer_814ccbab, drawer).
type(drawer_b7714dd0, drawer).
type(drawer_8f754799, drawer).
type(drawer_14af4910, drawer).
type(drawer_45b02cbc, drawer).
type(drawer_feba4efa, drawer).
type(drawer_f0dcbe39, drawer).
type(drawer_51f98f55, drawer).
type(egg_67211636, egg).
madeof(egg_67211636, ['food']).
type(faucet_1000141d, faucet).
type(floor_86781be7, floor).
madeof(floor_86781be7, ['wood']).
type(fork_c3e63e06, fork).
madeof(fork_c3e63e06, ['metal']).
type(fridge_e92350c6, fridge).
type(garbagecan_a3dd7762, garbagecan).
madeof(garbagecan_a3dd7762, ['plastic']).
type(houseplant_cc99edda, houseplant).
madeof(houseplant_cc99edda, ['ceramic', 'organic']).
type(kettle_2aef2274, kettle).
madeof(kettle_2aef2274, ['metal', 'plastic']).
type(knife_28c8fc57, knife).
madeof(knife_28c8fc57, ['metal', 'plastic']).
type(lettuce_2d8f3ab9, lettuce).
madeof(lettuce_2d8f3ab9, ['food']).
type(lightswitch_cfaab6e3, lightswitch).
type(microwave_cf90fa06, microwave).
madeof(microwave_cf90fa06, ['metal', 'glass']).
type(mug_e7fad100, mug).
madeof(mug_e7fad100, ['ceramic']).
type(pan_21173d15, pan).
madeof(pan_21173d15, ['metal']).
type(papertowelroll_511cdc3f, papertowelroll).
madeof(papertowelroll_511cdc3f, ['paper']).
type(peppershaker_948fdf26, peppershaker).
madeof(peppershaker_948fdf26, ['metal', 'glass']).
type(plate_82b647b0, plate).
madeof(plate_82b647b0, ['ceramic']).
type(pot_5c47f775, pot).
madeof(pot_5c47f775, ['metal']).
type(potato_4dee147d, potato).
madeof(potato_4dee147d, ['food']).
type(saltshaker_ccf73c67, saltshaker).
madeof(saltshaker_ccf73c67, ['metal', 'glass']).
type(shelf_bf36c881, shelf).
type(shelf_957b2e88, shelf).
type(shelf_9d7816a7, shelf).
type(shelvingunit_11057823, shelvingunit).
madeof(shelvingunit_11057823, ['wood']).
type(sink_41af8f72, sink).
type(sinkbasin_3138b92f, sinkbasin).
type(soapbottle_4540124e, soapbottle).
madeof(soapbottle_4540124e, ['glass', 'metal']).
type(spatula_6667745e, spatula).
madeof(spatula_6667745e, ['metal', 'plastic']).
type(spoon_ea8b29ee, spoon).
madeof(spoon_ea8b29ee, ['metal']).
type(statue_32e151a8, statue).
madeof(statue_32e151a8, ['stone']).
type(stool_b084fe8e, stool).
madeof(stool_b084fe8e, ['wood']).
type(stool_6ad82f78, stool).
madeof(stool_6ad82f78, ['wood']).
type(stoveburner_08a5798f, stoveburner).
type(stoveburner_3397cbe3, stoveburner).
type(stoveburner_a0b460e5, stoveburner).
type(stoveburner_d506dac6, stoveburner).
type(stoveknob_e0c0e452, stoveknob).
type(stoveknob_39559252, stoveknob).
type(stoveknob_61f5d5b9, stoveknob).
type(stoveknob_b57953af, stoveknob).
type(toaster_f30a9b32, toaster).
madeof(toaster_f30a9b32, ['metal']).
type(tomato_caaae6b0, tomato).
madeof(tomato_caaae6b0, ['food']).
type(vase_b2bf6b9c, vase).
madeof(vase_b2bf6b9c, ['ceramic']).
type(vase_a3ef2efe, vase).
madeof(vase_a3ef2efe, ['glass']).
type(window_98e9c41a, window).
type(winebottle_39d61bf0, winebottle).
madeof(winebottle_39d61bf0, ['glass']).

cooked(Food) :- receptacle(Pan), temperature(Pan, hot), type(Pan, pan),
                in(Food, Pan), materialcontains(Food, 'food').

materialcontains(Item, Material) :- madeof(Item, L), findinlist(Material, L).
findinlist(Material, [Material|_]).
findinlist(Material, [_|T]) :- findinlist(Material, T).

temperature(Item, hot) :- in(Item, Heatsource), heatsource(Heatsource), toggled(Heatsource).

?- temperature(X, hot).