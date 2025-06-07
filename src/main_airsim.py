import logging
import time
import datetime

import scaspharness
import simulator_airsim
from main_helpers import run, check_results, run_step_by_step

def state_subset(final_state, curr_state):
    """
    Checks if the task is accomplished or not
    [close(Close), holds(Holds), sat_on(Sat), on_top_of(Oto), inside(Inside), on(On), laid_on(Laid), used(Used), eaten(Eaten)]
    :param final_state: desired final state, already in a list
    :param curr_state: current state as a string
    :return: boolean representing success
    """
    def make_list_regular(string_state):
        new_list = string_state.replace("(", "").replace("[", "").replace(")", "").replace("]", "").split(",")
        new_list = [x for x in new_list if x]
        return new_list
    def make_list_doubles(string_state):
        new_list =  string_state.split("]")
        new_list = [x[1:] + "]" for x in new_list]
        new_list.pop()
        new_list.pop()
        if new_list:
            new_list[0] = new_list[0][1:]
        return new_list

    def machine_state(string_state):
        close_state = make_list_regular(string_state.split("close")[1].split("holds")[0])
        holds_state = make_list_regular(string_state.split("holds")[1].split("sat_on")[0])
        sat_on_state = make_list_regular(string_state.split("sat_on")[1].split("on_top_of")[0])
        on_top_of_state = make_list_doubles(string_state.split("on_top_of")[1].split("inside")[0])
        inside_state = make_list_doubles(string_state.split("inside")[1].split(",on(")[0])
        on_state = make_list_regular(string_state.split(",on(")[1].split("laid_on")[0])
        laid_on_state = make_list_regular(string_state.split("laid_on")[1].split("used")[0])
        used_state = make_list_regular(string_state.split("used")[1].split("eaten")[0])
        eaten_state = make_list_regular(string_state.split("eaten")[1])
        return [close_state, holds_state, sat_on_state, on_top_of_state, inside_state, on_state, laid_on_state, used_state, eaten_state]

    final = machine_state("".join(final_state.split()))
    curr = machine_state("".join(curr_state.split()))

    if not set(final[0]) <= set(curr[0]):
        return False
    if not set(final[1]) <= set(curr[1]):
        return False
    if not set(final[2]) <= set(curr[2]):
        return False
    if not set(final[3]) <= set(curr[3]):
        return False
    if not set(final[4]) <= set(curr[4]):
        return False
    if not set(final[5]) <= set(curr[5]):
        return False
    if not set(final[6]) <= set(curr[6]):
        return False
    if not set(final[7]) <= set(curr[7]):
        return False
    if not set(final[8]) <= set(curr[8]):
        return False
    return True

def get_relevant(task):
    relevant_items = check_results(program.run_query([("get_relevant", task, "P")]))['P']
    listified_items = relevant_items.replace("[","").replace("]","").split(",")
    listified_items.append("character1")
    logging.info(listified_items)
    return listified_items

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    task_selection = 0
    tasks = ["navigate"]
    final_state = ["loc(0,0,0)"]

    start_time = time.time()
    logging.info("Start Time: %s", datetime.datetime.now())
    # Create simulator
    simulat = simulator_airsim.AirSimSimulator()
    # Create Harness
    program = scaspharness.ScaspHarness(simulat, initial_rules="scasp_knowledge_base/knowledge_base_airsim.pl")
    logging.info("Program Initialized Time: %s seconds" % (time.time() - start_time))
    start_time = time.time()

    # Full loop
    run_step_by_step(tasks[task_selection], final_state[task_selection], program, state_subset)
