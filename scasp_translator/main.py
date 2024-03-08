import translator
import subprocess

if __name__ == '__main__':
    """
    cooked(Food) :- receptacle(Pan), temperature(Pan, hot), type(Pan, pan),
                in(Food, Pan), materialcontains(Food, 'food').

    materialcontains(Item, Material) :- madeof(Item, L), findinlist(Material, L).
    findinlist(Material, [Material|_]).
    findinlist(Material, [_|T]) :- findinlist(Material, T).

    temperature(Item, hot) :- in(Item, Heatsource), heatsource(Heatsource), toggled(Heatsource).
    """
    initial_rules = [
        [["cooked", "Food"],
            ["receptacle", "Pan"],["temperature", "Pan", "hot"], ["type", "Pan", "pan"],
            ["in", "Food", "Pan"], ["materialcontains", "Food", "'food'"]],

        [["materialcontains", "Item", "Material"],
            ["madeof", "Item", "L"], ["findinlist", "Material", "L"]],
        [["findinlist", "Material", "[Material|_]"]],
        [["findinlist", "Material", "[_|T]"],
            ["findinlist", "Material", "T"]],

        [["temperature", "Item", "hot"],
            ["in", "Item", "Heatsource"], ["heatsource", "Heatsource"], ["toggled", "Heatsource"]]
    ]
    program = translator.Translator(initial_rules=initial_rules)
    program.get_metadata()
    program.print_rules_to_file()
    program.run_query([["temperature", "X", "Y"]])
    program.get_counterfactuals([["cooked", "Food"]])