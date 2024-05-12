cooked(Food) :- receptacle(Pan), temperature(Pan, hot), type(Pan, pan), in(Food, Pan), materialcontains(Food, 'food').
materialcontains(Item, Material) :- madeof(Item, L), findinlist(Material, L).
findinlist(Material, [Material|_]).
findinlist(Material, [_|T]) :- findinlist(Material, T).
temperature(Item, hot) :- in(Item, Heatsource), heatsource(Heatsource), toggled(Heatsource).
temperature(Item, hot) :- in(Item, Heatsource), heatsource(Heatsource), toggled(Control), controls(Control, Heatsource).
type(apple_3fef4551, apple).
temperature(apple_3fef4551, roomtemp).
sliceable(apple_3fef4551).
pickupable(apple_3fef4551).
hasmass(apple_3fef4551, 0.20000000298023224).
madeof(apple_3fef4551, ['food']).
type(book_e5ef3174, book).
temperature(book_e5ef3174, roomtemp).
openable(book_e5ef3174).
pickupable(book_e5ef3174).
hasmass(book_e5ef3174, 0.5).
madeof(book_e5ef3174, ['paper']).
type(bottle_4e73f712, bottle).
breakable(bottle_4e73f712).
canfillwithliquid(bottle_4e73f712).
temperature(bottle_4e73f712, roomtemp).
pickupable(bottle_4e73f712).
hasmass(bottle_4e73f712, 0.20000000298023224).
madeof(bottle_4e73f712, ['glass']).
type(bowl_208f368b, bowl).
receptacle(bowl_208f368b).
breakable(bowl_208f368b).
canfillwithliquid(bowl_208f368b).
dirtyable(bowl_208f368b).
temperature(bowl_208f368b, roomtemp).
pickupable(bowl_208f368b).
hasmass(bowl_208f368b, 0.4699999988079071).
madeof(bowl_208f368b, ['ceramic']).
type(bread_c6b4566e, bread).
temperature(bread_c6b4566e, roomtemp).
sliceable(bread_c6b4566e).
pickupable(bread_c6b4566e).
hasmass(bread_c6b4566e, 0.699999988079071).
madeof(bread_c6b4566e, ['food']).
type(butterknife_4ae287b7, butterknife).
temperature(butterknife_4ae287b7, roomtemp).
pickupable(butterknife_4ae287b7).
hasmass(butterknife_4ae287b7, 0.07999999821186066).
madeof(butterknife_4ae287b7, ['metal']).
type(cabinet_07bf9f23, cabinet).
receptacle(cabinet_07bf9f23).
temperature(cabinet_07bf9f23, roomtemp).
openable(cabinet_07bf9f23).
hasmass(cabinet_07bf9f23, 0.0).
type(cabinet_7d7a3425, cabinet).
receptacle(cabinet_7d7a3425).
temperature(cabinet_7d7a3425, roomtemp).
openable(cabinet_7d7a3425).
hasmass(cabinet_7d7a3425, 0.0).
type(cabinet_67e9cbea, cabinet).
receptacle(cabinet_67e9cbea).
temperature(cabinet_67e9cbea, roomtemp).
openable(cabinet_67e9cbea).
hasmass(cabinet_67e9cbea, 0.0).
type(cabinet_b69a8cbf, cabinet).
receptacle(cabinet_b69a8cbf).
temperature(cabinet_b69a8cbf, roomtemp).
openable(cabinet_b69a8cbf).
hasmass(cabinet_b69a8cbf, 0.0).
type(cabinet_83d77a74, cabinet).
visible(cabinet_83d77a74).
interactable(cabinet_83d77a74).
receptacle(cabinet_83d77a74).
temperature(cabinet_83d77a74, roomtemp).
openable(cabinet_83d77a74).
hasmass(cabinet_83d77a74, 0.0).
type(cabinet_41c7fc3b, cabinet).
receptacle(cabinet_41c7fc3b).
temperature(cabinet_41c7fc3b, roomtemp).
openable(cabinet_41c7fc3b).
hasmass(cabinet_41c7fc3b, 0.0).
type(cabinet_4223545f, cabinet).
receptacle(cabinet_4223545f).
temperature(cabinet_4223545f, roomtemp).
openable(cabinet_4223545f).
hasmass(cabinet_4223545f, 0.0).
type(cabinet_64c8b7ce, cabinet).
receptacle(cabinet_64c8b7ce).
temperature(cabinet_64c8b7ce, roomtemp).
openable(cabinet_64c8b7ce).
hasmass(cabinet_64c8b7ce, 0.0).
type(cabinet_afbfa706, cabinet).
receptacle(cabinet_afbfa706).
temperature(cabinet_afbfa706, roomtemp).
openable(cabinet_afbfa706).
hasmass(cabinet_afbfa706, 0.0).
type(coffeemachine_19c6af8e, coffeemachine).
visible(coffeemachine_19c6af8e).
interactable(coffeemachine_19c6af8e).
receptacle(coffeemachine_19c6af8e).
toggleable(coffeemachine_19c6af8e).
temperature(coffeemachine_19c6af8e, roomtemp).
heatsource(coffeemachine_19c6af8e).
moveable(coffeemachine_19c6af8e).
hasmass(coffeemachine_19c6af8e, 5.0).
madeof(coffeemachine_19c6af8e, ['plastic']).
type(countertop_2fe78146, countertop).
receptacle(countertop_2fe78146).
temperature(countertop_2fe78146, roomtemp).
hasmass(countertop_2fe78146, 0.0).
type(countertop_203f0cf4, countertop).
receptacle(countertop_203f0cf4).
temperature(countertop_203f0cf4, roomtemp).
hasmass(countertop_203f0cf4, 0.0).
type(countertop_978a4b41, countertop).
receptacle(countertop_978a4b41).
temperature(countertop_978a4b41, roomtemp).
hasmass(countertop_978a4b41, 0.0).
type(creditcard_5e829d70, creditcard).
temperature(creditcard_5e829d70, roomtemp).
pickupable(creditcard_5e829d70).
hasmass(creditcard_5e829d70, 0.005999999586492777).
madeof(creditcard_5e829d70, ['plastic']).
type(cup_4c1ceda2, cup).
receptacle(cup_4c1ceda2).
breakable(cup_4c1ceda2).
canfillwithliquid(cup_4c1ceda2).
dirtyable(cup_4c1ceda2).
temperature(cup_4c1ceda2, roomtemp).
pickupable(cup_4c1ceda2).
hasmass(cup_4c1ceda2, 0.4000000059604645).
madeof(cup_4c1ceda2, ['glass']).
type(dishsponge_2f93679b, dishsponge).
temperature(dishsponge_2f93679b, roomtemp).
pickupable(dishsponge_2f93679b).
hasmass(dishsponge_2f93679b, 0.029999997466802597).
madeof(dishsponge_2f93679b, ['sponge']).
type(drawer_454fdaaf, drawer).
receptacle(drawer_454fdaaf).
temperature(drawer_454fdaaf, roomtemp).
openable(drawer_454fdaaf).
hasmass(drawer_454fdaaf, 0.0).
type(drawer_814ccbab, drawer).
receptacle(drawer_814ccbab).
temperature(drawer_814ccbab, roomtemp).
openable(drawer_814ccbab).
hasmass(drawer_814ccbab, 0.0).
type(drawer_b7714dd0, drawer).
receptacle(drawer_b7714dd0).
temperature(drawer_b7714dd0, roomtemp).
openable(drawer_b7714dd0).
hasmass(drawer_b7714dd0, 0.0).
type(drawer_8f754799, drawer).
receptacle(drawer_8f754799).
temperature(drawer_8f754799, roomtemp).
openable(drawer_8f754799).
hasmass(drawer_8f754799, 0.0).
type(drawer_14af4910, drawer).
receptacle(drawer_14af4910).
temperature(drawer_14af4910, roomtemp).
openable(drawer_14af4910).
hasmass(drawer_14af4910, 0.0).
type(drawer_45b02cbc, drawer).
receptacle(drawer_45b02cbc).
temperature(drawer_45b02cbc, roomtemp).
openable(drawer_45b02cbc).
hasmass(drawer_45b02cbc, 0.0).
type(drawer_feba4efa, drawer).
receptacle(drawer_feba4efa).
temperature(drawer_feba4efa, roomtemp).
openable(drawer_feba4efa).
hasmass(drawer_feba4efa, 0.0).
type(drawer_f0dcbe39, drawer).
receptacle(drawer_f0dcbe39).
temperature(drawer_f0dcbe39, roomtemp).
openable(drawer_f0dcbe39).
hasmass(drawer_f0dcbe39, 0.0).
type(drawer_51f98f55, drawer).
receptacle(drawer_51f98f55).
temperature(drawer_51f98f55, roomtemp).
openable(drawer_51f98f55).
hasmass(drawer_51f98f55, 0.0).
type(egg_67211636, egg).
breakable(egg_67211636).
temperature(egg_67211636, cold).
sliceable(egg_67211636).
pickupable(egg_67211636).
hasmass(egg_67211636, 0.054999999701976776).
madeof(egg_67211636, ['food']).
type(faucet_1000141d, faucet).
toggleable(faucet_1000141d).
temperature(faucet_1000141d, roomtemp).
hasmass(faucet_1000141d, 0.0).
type(floor_86781be7, floor).
receptacle(floor_86781be7).
temperature(floor_86781be7, roomtemp).
hasmass(floor_86781be7, 1.0).
madeof(floor_86781be7, ['wood']).
type(fork_c3e63e06, fork).
temperature(fork_c3e63e06, roomtemp).
pickupable(fork_c3e63e06).
hasmass(fork_c3e63e06, 0.03999999910593033).
madeof(fork_c3e63e06, ['metal']).
type(fridge_e92350c6, fridge).
visible(fridge_e92350c6).
interactable(fridge_e92350c6).
receptacle(fridge_e92350c6).
temperature(fridge_e92350c6, roomtemp).
coldsource(fridge_e92350c6).
openable(fridge_e92350c6).
hasmass(fridge_e92350c6, 0.0).
type(garbagecan_a3dd7762, garbagecan).
visible(garbagecan_a3dd7762).
interactable(garbagecan_a3dd7762).
receptacle(garbagecan_a3dd7762).
temperature(garbagecan_a3dd7762, roomtemp).
moveable(garbagecan_a3dd7762).
hasmass(garbagecan_a3dd7762, 0.699999988079071).
madeof(garbagecan_a3dd7762, ['plastic']).
type(houseplant_cc99edda, houseplant).
canfillwithliquid(houseplant_cc99edda).
temperature(houseplant_cc99edda, roomtemp).
moveable(houseplant_cc99edda).
hasmass(houseplant_cc99edda, 3.0).
madeof(houseplant_cc99edda, ['ceramic', 'organic']).
type(kettle_2aef2274, kettle).
canfillwithliquid(kettle_2aef2274).
temperature(kettle_2aef2274, roomtemp).
openable(kettle_2aef2274).
pickupable(kettle_2aef2274).
hasmass(kettle_2aef2274, 0.800000011920929).
madeof(kettle_2aef2274, ['metal', 'plastic']).
type(knife_28c8fc57, knife).
temperature(knife_28c8fc57, roomtemp).
pickupable(knife_28c8fc57).
hasmass(knife_28c8fc57, 0.18000000715255737).
madeof(knife_28c8fc57, ['metal', 'plastic']).
type(lettuce_2d8f3ab9, lettuce).
temperature(lettuce_2d8f3ab9, roomtemp).
sliceable(lettuce_2d8f3ab9).
pickupable(lettuce_2d8f3ab9).
hasmass(lettuce_2d8f3ab9, 0.4699999988079071).
madeof(lettuce_2d8f3ab9, ['food']).
type(lightswitch_cfaab6e3, lightswitch).
toggleable(lightswitch_cfaab6e3).
toggled(lightswitch_cfaab6e3).
temperature(lightswitch_cfaab6e3, roomtemp).
hasmass(lightswitch_cfaab6e3, 0.0).
type(microwave_cf90fa06, microwave).
receptacle(microwave_cf90fa06).
toggleable(microwave_cf90fa06).
temperature(microwave_cf90fa06, roomtemp).
heatsource(microwave_cf90fa06).
openable(microwave_cf90fa06).
moveable(microwave_cf90fa06).
hasmass(microwave_cf90fa06, 6.999999523162842).
madeof(microwave_cf90fa06, ['metal', 'glass']).
type(mug_e7fad100, mug).
receptacle(mug_e7fad100).
breakable(mug_e7fad100).
canfillwithliquid(mug_e7fad100).
dirtyable(mug_e7fad100).
temperature(mug_e7fad100, roomtemp).
pickupable(mug_e7fad100).
hasmass(mug_e7fad100, 1.0).
madeof(mug_e7fad100, ['ceramic']).
type(pan_21173d15, pan).
receptacle(pan_21173d15).
dirtyable(pan_21173d15).
temperature(pan_21173d15, roomtemp).
pickupable(pan_21173d15).
hasmass(pan_21173d15, 0.6700000166893005).
madeof(pan_21173d15, ['metal']).
type(papertowelroll_511cdc3f, papertowelroll).
temperature(papertowelroll_511cdc3f, roomtemp).
pickupable(papertowelroll_511cdc3f).
hasmass(papertowelroll_511cdc3f, 0.2199999988079071).
madeof(papertowelroll_511cdc3f, ['paper']).
type(peppershaker_948fdf26, peppershaker).
temperature(peppershaker_948fdf26, roomtemp).
pickupable(peppershaker_948fdf26).
hasmass(peppershaker_948fdf26, 0.14000000059604645).
madeof(peppershaker_948fdf26, ['metal', 'glass']).
type(plate_82b647b0, plate).
receptacle(plate_82b647b0).
breakable(plate_82b647b0).
dirtyable(plate_82b647b0).
temperature(plate_82b647b0, roomtemp).
pickupable(plate_82b647b0).
hasmass(plate_82b647b0, 0.6200000047683716).
madeof(plate_82b647b0, ['ceramic']).
type(pot_5c47f775, pot).
receptacle(pot_5c47f775).
canfillwithliquid(pot_5c47f775).
dirtyable(pot_5c47f775).
temperature(pot_5c47f775, roomtemp).
pickupable(pot_5c47f775).
hasmass(pot_5c47f775, 0.5699999928474426).
madeof(pot_5c47f775, ['metal']).
type(potato_4dee147d, potato).
cookable(potato_4dee147d).
temperature(potato_4dee147d, roomtemp).
sliceable(potato_4dee147d).
pickupable(potato_4dee147d).
hasmass(potato_4dee147d, 0.18000000715255737).
madeof(potato_4dee147d, ['food']).
type(saltshaker_ccf73c67, saltshaker).
temperature(saltshaker_ccf73c67, roomtemp).
pickupable(saltshaker_ccf73c67).
hasmass(saltshaker_ccf73c67, 0.4000000059604645).
madeof(saltshaker_ccf73c67, ['metal', 'glass']).
type(shelf_bf36c881, shelf).
receptacle(shelf_bf36c881).
temperature(shelf_bf36c881, roomtemp).
hasmass(shelf_bf36c881, 0.0).
type(shelf_957b2e88, shelf).
receptacle(shelf_957b2e88).
temperature(shelf_957b2e88, roomtemp).
hasmass(shelf_957b2e88, 0.0).
type(shelf_9d7816a7, shelf).
receptacle(shelf_9d7816a7).
temperature(shelf_9d7816a7, roomtemp).
hasmass(shelf_9d7816a7, 0.0).
type(shelvingunit_11057823, shelvingunit).
temperature(shelvingunit_11057823, roomtemp).
moveable(shelvingunit_11057823).
hasmass(shelvingunit_11057823, 22.0).
madeof(shelvingunit_11057823, ['wood']).
type(sink_41af8f72, sink).
temperature(sink_41af8f72, roomtemp).
hasmass(sink_41af8f72, 0.0).
type(sinkbasin_3138b92f, sinkbasin).
receptacle(sinkbasin_3138b92f).
temperature(sinkbasin_3138b92f, roomtemp).
hasmass(sinkbasin_3138b92f, 0.0).
type(soapbottle_4540124e, soapbottle).
temperature(soapbottle_4540124e, roomtemp).
pickupable(soapbottle_4540124e).
hasmass(soapbottle_4540124e, 0.4000000059604645).
madeof(soapbottle_4540124e, ['glass', 'metal']).
type(spatula_6667745e, spatula).
temperature(spatula_6667745e, roomtemp).
pickupable(spatula_6667745e).
hasmass(spatula_6667745e, 0.06499999761581421).
madeof(spatula_6667745e, ['metal', 'plastic']).
type(spoon_ea8b29ee, spoon).
temperature(spoon_ea8b29ee, roomtemp).
pickupable(spoon_ea8b29ee).
hasmass(spoon_ea8b29ee, 0.03999999910593033).
madeof(spoon_ea8b29ee, ['metal']).
type(statue_32e151a8, statue).
breakable(statue_32e151a8).
temperature(statue_32e151a8, roomtemp).
pickupable(statue_32e151a8).
hasmass(statue_32e151a8, 1.0).
madeof(statue_32e151a8, ['stone']).
type(stool_b084fe8e, stool).
receptacle(stool_b084fe8e).
temperature(stool_b084fe8e, roomtemp).
moveable(stool_b084fe8e).
hasmass(stool_b084fe8e, 3.180000066757202).
madeof(stool_b084fe8e, ['wood']).
type(stool_6ad82f78, stool).
receptacle(stool_6ad82f78).
temperature(stool_6ad82f78, roomtemp).
moveable(stool_6ad82f78).
hasmass(stool_6ad82f78, 3.180000066757202).
madeof(stool_6ad82f78, ['wood']).
type(stoveburner_08a5798f, stoveburner).
receptacle(stoveburner_08a5798f).
temperature(stoveburner_08a5798f, roomtemp).
heatsource(stoveburner_08a5798f).
hasmass(stoveburner_08a5798f, 0.0).
type(stoveburner_3397cbe3, stoveburner).
receptacle(stoveburner_3397cbe3).
temperature(stoveburner_3397cbe3, roomtemp).
heatsource(stoveburner_3397cbe3).
hasmass(stoveburner_3397cbe3, 0.0).
type(stoveburner_a0b460e5, stoveburner).
receptacle(stoveburner_a0b460e5).
temperature(stoveburner_a0b460e5, roomtemp).
heatsource(stoveburner_a0b460e5).
hasmass(stoveburner_a0b460e5, 0.0).
type(stoveburner_d506dac6, stoveburner).
receptacle(stoveburner_d506dac6).
temperature(stoveburner_d506dac6, roomtemp).
heatsource(stoveburner_d506dac6).
hasmass(stoveburner_d506dac6, 0.0).
type(stoveknob_e0c0e452, stoveknob).
toggleable(stoveknob_e0c0e452).
temperature(stoveknob_e0c0e452, roomtemp).
hasmass(stoveknob_e0c0e452, 0.0).
type(stoveknob_39559252, stoveknob).
toggleable(stoveknob_39559252).
temperature(stoveknob_39559252, roomtemp).
hasmass(stoveknob_39559252, 0.0).
type(stoveknob_61f5d5b9, stoveknob).
toggleable(stoveknob_61f5d5b9).
temperature(stoveknob_61f5d5b9, roomtemp).
hasmass(stoveknob_61f5d5b9, 0.0).
type(stoveknob_b57953af, stoveknob).
toggleable(stoveknob_b57953af).
temperature(stoveknob_b57953af, roomtemp).
hasmass(stoveknob_b57953af, 0.0).
type(toaster_f30a9b32, toaster).
visible(toaster_f30a9b32).
interactable(toaster_f30a9b32).
receptacle(toaster_f30a9b32).
toggleable(toaster_f30a9b32).
temperature(toaster_f30a9b32, roomtemp).
heatsource(toaster_f30a9b32).
moveable(toaster_f30a9b32).
hasmass(toaster_f30a9b32, 5.0).
madeof(toaster_f30a9b32, ['metal']).
type(tomato_caaae6b0, tomato).
temperature(tomato_caaae6b0, roomtemp).
sliceable(tomato_caaae6b0).
pickupable(tomato_caaae6b0).
hasmass(tomato_caaae6b0, 0.11999998986721039).
madeof(tomato_caaae6b0, ['food']).
type(vase_b2bf6b9c, vase).
breakable(vase_b2bf6b9c).
temperature(vase_b2bf6b9c, roomtemp).
pickupable(vase_b2bf6b9c).
hasmass(vase_b2bf6b9c, 1.0).
madeof(vase_b2bf6b9c, ['ceramic']).
type(vase_a3ef2efe, vase).
breakable(vase_a3ef2efe).
temperature(vase_a3ef2efe, roomtemp).
pickupable(vase_a3ef2efe).
hasmass(vase_a3ef2efe, 1.0).
madeof(vase_a3ef2efe, ['glass']).
type(window_98e9c41a, window).
breakable(window_98e9c41a).
temperature(window_98e9c41a, roomtemp).
hasmass(window_98e9c41a, 0.0).
type(winebottle_39d61bf0, winebottle).
breakable(winebottle_39d61bf0).
canfillwithliquid(winebottle_39d61bf0).
temperature(winebottle_39d61bf0, roomtemp).
pickupable(winebottle_39d61bf0).
hasmass(winebottle_39d61bf0, 1.2000000476837158).
madeof(winebottle_39d61bf0, ['glass']).
in(plate_82b647b0, cabinet_b69a8cbf).
in(cup_4c1ceda2, cabinet_41c7fc3b).
in(dishsponge_2f93679b, cabinet_4223545f).
in(winebottle_39d61bf0, cabinet_afbfa706).
in(pan_21173d15, countertop_2fe78146).
in(kettle_2aef2274, countertop_2fe78146).
in(spatula_6667745e, countertop_2fe78146).
in(peppershaker_948fdf26, countertop_2fe78146).
in(saltshaker_ccf73c67, countertop_2fe78146).
in(book_e5ef3174, countertop_203f0cf4).
in(bowl_208f368b, countertop_203f0cf4).
in(creditcard_5e829d70, countertop_203f0cf4).
in(apple_3fef4551, countertop_203f0cf4).
in(bread_c6b4566e, countertop_203f0cf4).
in(butterknife_4ae287b7, countertop_203f0cf4).
in(tomato_caaae6b0, countertop_203f0cf4).
in(toaster_f30a9b32, countertop_978a4b41).
in(coffeemachine_19c6af8e, countertop_978a4b41).
in(mug_e7fad100, countertop_978a4b41).
in(lettuce_2d8f3ab9, countertop_978a4b41).
in(papertowelroll_511cdc3f, countertop_978a4b41).
in(pot_5c47f775, countertop_978a4b41).
in(potato_4dee147d, countertop_978a4b41).
in(houseplant_cc99edda, countertop_978a4b41).
in(soapbottle_4540124e, countertop_978a4b41).
in(spoon_ea8b29ee, drawer_814ccbab).
in(fork_c3e63e06, drawer_814ccbab).
in(knife_28c8fc57, drawer_51f98f55).
in(stool_6ad82f78, floor_86781be7).
in(stool_b084fe8e, floor_86781be7).
in(shelvingunit_11057823, floor_86781be7).
in(fridge_e92350c6, floor_86781be7).
in(garbagecan_a3dd7762, floor_86781be7).
in(egg_67211636, fridge_e92350c6).
in(statue_32e151a8, shelf_bf36c881).
in(bottle_4e73f712, shelf_957b2e88).
in(vase_a3ef2efe, shelf_9d7816a7).
in(vase_b2bf6b9c, shelf_9d7816a7).
controls(stoveknob_e0c0e452, stoveburner_08a5798f).
controls(stoveknob_39559252, stoveburner_d506dac6).
controls(stoveknob_61f5d5b9, stoveburner_a0b460e5).
controls(stoveknob_b57953af, stoveburner_3397cbe3).

?- toggled(stoveknob_39559252).