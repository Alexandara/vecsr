import scaspharness
import simulator
import logging

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    # Create simulator
    simulat = simulator.VirtualHomeSimulator(environment=0) # VirtualHome Simulator
    # simulat = simulator.MockVirtualHomeSimulator() # Mock VirtualHome Simulator
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_without_time.pl")
    # Take Actions
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("walk", "remotecontrol1"))
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("grab", "remotecontrol1"))
    # program.take_action(("walk", "clothes4"))
    # program.take_action(("grab", "clothes4"))
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("walk", "television2"))
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("put", "television2"))
    # program.take_action(("put", "television2"))
    # program.get_scasp()
    # program.print_rules_to_file()

    # Full loop
    results = program.run_query([("complete_task",
                       "use_phone_on_couch", "P")])[0]
    actions = results['P'].strip('][ ').split(',')
    for action in actions:
        a = action.strip(")").split("(")
        program.take_action(tuple(a))
    program.get_scasp()
    program.print_rules_to_file()