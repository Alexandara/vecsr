cooked(Food) :- receptacle(Pan), temperature(Pan, hot), type(Pan, pan),
                in(Food, Pan), materialcontains(Food, 'food').

materialcontains(Item, Material) :- madeof(Item, L), findinlist(Material, L).
findinlist(Material, [Material|_]).
findinlist(Material, [_|T]) :- findinlist(Material, T).

temperature(Item, hot) :- in(Item, Heatsource), heatsource(Heatsource), toggled(Heatsource).