import scaspharness
import simulator
import logging
import time
import datetime
import os

def run(task):
    start_time = time.time()
    logging.info("Task: " + task)
    logging.info("Task received: %s seconds" % start_time)
    results = program.run_query([("complete_task", task, "P")])
    logging.info("s(CASP) Query Run: %s seconds" % (time.time() - start_time))
    if results:
        results = results[0]
    else:
        logging.warning("No valid results found.")
    actions = results['P'].strip('][ ').split(')')
    for action in actions:
        a = action.replace("(", " ").replace(",", " ").split()
        if a:
            program.take_action(tuple(a))
    logging.info("Actions taken in simulation: %s seconds" % (time.time() - start_time))
    logging.info("Task End Time: %s", datetime.datetime.now())

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    real_simulator = True
    optimize_rules = True
    dynamic = False
    task_selection = 12
    tasks = ["use_phone_on_couch",              # 0
             "grab_remote_and_clothes",         # 1
             "grab_remote",                     # 2
             "set_remote_on_coffee_table",      # 3
             "turn_on_tv",                      # 4
             "go_to_sleep",                     # 5
             "browse_internet",                 # 6
             "wash_teeth",                      # 7
             "brush_teeth",                     # 8
             "vacuum",                          # 9
             "change_sheets_and_pillow_cases",  # 10 non-terminating
             "wash_dirty_dishes",               # 11
             "feed_me",                         # 12
             "breakfast",                       # 13
             "read"                             # 14
             ]
    rooms = None
    if task_selection in [6, 14]:
        rooms = [74] # bedroom
    elif task_selection in [7,8]:
        rooms = [11] # bathroom
    elif task_selection in [10]:
        rooms = [74, 336] # bedroom, livingroom
    elif task_selection in [11]:
        rooms = [207, 74] # kitchen, bedroom
    elif task_selection in [12, 13]:
        rooms = [207] # kitchen
    start_time = time.time()
    logging.info("Start Time: %s", datetime.datetime.now())
    # Create simulator
    if real_simulator:
        simulat = simulator.VirtualHomeSimulator(environment=0) # VirtualHome Simulator
    else:
        simulat = simulator.MockVirtualHomeSimulator() # Mock VirtualHome Simulator
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_without_time.pl", optimize_rules=optimize_rules, rooms=rooms)
    logging.info("Program Initialized Time: %s seconds" % (time.time() - start_time))
    start_time = time.time()
    # Full loop
    if not dynamic:
        run(tasks[task_selection])
    else:
        while True:
            task = input("Input task:")
            if task not in tasks:
                exit(0)
            run(task)
