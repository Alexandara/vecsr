import logging
import time
import datetime

import scaspharness
import simulator_airsim
from scasp_client import ScaspClient
from main_helpers import check_results

def state_subset(final_state, curr_state):
    """
    Checks if the task is accomplished or not
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]
    :param final_state: desired final state, already in a list
    :param curr_state: current state as a string
    :return: boolean representing success
    """
    if final_state == curr_state:
        return True
    return False

def run_airsim(final_state, program):
    start_time = time.time()
    logging.info("Task received: %s seconds" % start_time)
    curr_state = check_results(program.run_query([("curr_state", "P")]))['P']
    success_check = state_subset(final_state, curr_state)
    # Get plans
    while not success_check:
        next_action = check_results(program.run_query([("choose_action", "X", curr_state, final_state)]))['X']
        logging.info("Choose action: %s seconds" % (time.time() - start_time))
        logging.info("Action chosen: " + next_action)
        a = next_action.replace("(", " ").replace(",", " ").split()
        if a:
            program.take_action(tuple(a))
        curr_state = check_results(program.run_query([("curr_state", "P")]))['P']
        success_check = state_subset(final_state, curr_state)

    logging.info("Task End Time: %s", datetime.datetime.now())

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    task_selection = 0
    tasks = ["navigate"]
    final_state = ["loc(70,0,-10)"]

    start_time = time.time()
    logging.info("Start Time: %s", datetime.datetime.now())
    # Create simulator
    simulat = simulator_airsim.AirSimSimulator()
    # Create s(CASP) Client
    scasp_client = ScaspClient("192.168.1.135")
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_airsim.pl", scasp_client=scasp_client)
    logging.info("Program Initialized Time: %s seconds" % (time.time() - start_time))
    start_time = time.time()

    # Full loop
    run_airsim(final_state[task_selection], program)
