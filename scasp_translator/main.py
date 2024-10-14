import scaspharness
import simulator
import logging
import time
import datetime
import os

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    real_simulator = False
    optimize_rules = False
    task_selection = 0
    tasks = ["use_phone_on_couch", "grab_remote_and_clothes", "grab_remote"]
    start_time = time.time()
    logging.info("Start Time: %s", datetime.datetime.now())
    # Create simulator
    if real_simulator:
        simulat = simulator.VirtualHomeSimulator(environment=0) # VirtualHome Simulator
    else:
        simulat = simulator.MockVirtualHomeSimulator() # Mock VirtualHome Simulator
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_without_time.pl", optimize_rules=optimize_rules)
    logging.info("Program Initialized Time: %s seconds" % (time.time() - start_time))
    start_time = time.time()
    # Full loop
    results = program.run_query([("complete_task", tasks[task_selection], "P")])
    logging.info("s(CASP) Query Run: %s seconds" % (time.time() - start_time))
    start_time = time.time()
    if results:
        results = results[0]
    else:
        logging.warning("No valid results found.")
        exit(0)
    actions = results['P'].strip('][ ').split(',')
    for action in actions:
        a = action.strip(")").split("(")
        program.take_action(tuple(a))
    logging.info("Actions taken in simulation: %s seconds" % (time.time() - start_time))
    logging.info("End Time: %s", datetime.datetime.now())