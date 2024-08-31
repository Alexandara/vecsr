import scaspharness
import simulator
import logging

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    real_simulator = False
    # Create simulator
    if real_simulator:
        simulat = simulator.VirtualHomeSimulator(environment=0) # VirtualHome Simulator
    else:
        simulat = simulator.MockVirtualHomeSimulator() # Mock VirtualHome Simulator
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_without_time.pl")

    # Full loop
    if real_simulator:
        results = program.run_query([("complete_task", "use_phone_on_couch", "P")])
    else:
        results = program.run_query([("complete_task", "grab_remote", "P")])
    if results:
        results = results[0]
    else:
        logging.warning("No valid results found.")
        exit(0)
    actions = results['P'].strip('][ ').split(',')
    for action in actions:
        a = action.strip(")").split("(")
        program.take_action(tuple(a))