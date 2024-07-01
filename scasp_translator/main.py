import scaspharness
import simulator
import logging

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.DEBUG)
    # Create simulator
    # simulat = simulator.VirtualHomeSimulator(environment=0) # VirtualHome Simulator
    simulat = simulator.MockVirtualHomeSimulator() # Mock VirtualHome Simulator
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_with_time.pl")
    # Take Actions
    program.get_scasp()
    program.print_rules_to_file()
    # program.take_action(("walk", "remotecontrol1"))
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("grab", "remotecontrol1"))
    # program.take_action(("walk", "clothes4"))
    # program.take_action(("grab", "clothes4"))
    # # program.get_scasp()
    # # program.print_rules_to_file()
    # program.take_action(("walk", "television2"))
    # program.get_scasp()
    # program.print_rules_to_file()
    # program.take_action(("put", "television2"))
    # program.take_action(("put", "television2"))
    # program.get_scasp()
    # program.print_rules_to_file()