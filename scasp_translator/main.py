import scaspharness
import simulator
import logging
import time
import datetime
import os

def run(task, answer=None):
    start_time = time.time()
    logging.info("Task: " + task)
    logging.info("Task received: %s seconds" % start_time)
    if not answer:
        results = program.run_query([("complete_task", task, "P")])
        logging.info("s(CASP) Query Run: %s seconds" % (time.time() - start_time))
        if results:
            results = results[0]
        else:
            logging.warning("No valid results found.")
            return
        actions = results['P'].strip('][ ').split(')')
    else:
        logging.info("Answer received: %s", answer)
        actions = answer.strip('][ ').split(')')
    logging.info("Plan:")
    logging.info(actions)
    for action in actions:
        a = action.replace("(", " ").replace(",", " ").split()
        if a:
            program.take_action(tuple(a))
    logging.info("Actions taken in simulation: %s seconds" % (time.time() - start_time))
    logging.info("Task End Time: %s", datetime.datetime.now())

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

def check_results(results):
    if results:
        results = results[0]
        return results
    else:
        logging.warning("No valid initial state.")
        return False

def run_step_by_step(task, final_state):
    start_time = time.time()
    logging.info("Step-By-Step Task: " + task)
    logging.info("Task received: %s seconds" % start_time)
    curr_state = check_results(program.run_query([("initial_state", "P")]))['P']
    plan = []
    success_check = state_subset(final_state, curr_state)
    # Get plans
    while not success_check:
        next_action = check_results(program.run_query([("choose_action", "X", curr_state, final_state)]))['X']
        logging.info("Choose action: %s seconds" % (time.time() - start_time))
        logging.info("Action chosen: " + next_action)
        curr_state = check_results(program.run_query([("update", next_action, curr_state, "S")]))['S']
        logging.info("Update: %s seconds" % (time.time() - start_time))
        plan.append(next_action)
        success_check = state_subset(final_state, curr_state)
    logging.info("Plan found!")
    logging.info(plan)
    for action in plan:
        a = action.replace("(", " ").replace(",", " ").split()
        if a:
            program.take_action(tuple(a))
    logging.info("Actions taken in simulation: %s seconds" % (time.time() - start_time))
    logging.info("Task End Time: %s", datetime.datetime.now())

def get_relevant(task):
    relevant_items = check_results(program.run_query([("get_relevant", task, "P")]))['P']
    listified_items = relevant_items.replace("[","").replace("]","").split(",")
    listified_items.append("character1")
    logging.info(listified_items)
    return listified_items

if __name__ == '__main__':
    logging.basicConfig(format='%(levelname)s:%(message)s', level=logging.INFO)
    values = [True,     # Real simulator or not?
              False,    # Optimize or not?
              False,    # Remove unnecessary items or not?
              False,    # Run dynamically or not?
              False,    # Use an answer key or not?
              False,    # Get plans step by step or not?
              False,    # Only use relevant rooms or not?
              ]
    best = True
    best_norelitems = False
    best_noopt = False
    best_norelrooms = False
    only_relitems = False
    only_opt = False
    only_relrooms = False
    if best: values = [True, True, True, False, False, False, True]
    if best_norelitems: values = [True, True, False, False, False, False, True]
    if best_noopt: values = [True, False, True, False, False, False, True]
    if best_norelrooms: values = [True, True, True, False, False, False, False]
    if only_relitems: values = [True, False, True, False, False, False, False]
    if only_opt: values = [True, True, False, False, False, False, False]
    if only_relrooms: values = [True, False, False, False, False, False, True]
    real_simulator = values[0]
    optimize_rules = values[1]
    reduce_items = values[2] # Remove all facts about non-relevant objects
    dynamic = values[3]
    use_answer_key = values[4]
    step_by_step = values[5]
    few_rooms = values[6]
    task_selection = 15
    tasks = ["use_phone_on_couch",              # 0
             "grab_remote_and_clothes",         # 1
             "grab_remote",                     # 2
             "set_remote_on_coffee_table",      # 3
             "turn_on_tv",                      # 4
             # Real Tasks
             "go_to_sleep",                     # 5
             "browse_internet",                 # 6
             "wash_teeth",                      # 7
             "brush_teeth",                     # 8
             "vacuum",                          # 9
             "change_sheets_and_pillow_cases",  # 10
             "wash_dirty_dishes",               # 11
             "feed_me",                         # 12
             "breakfast",                       # 13
             "read",                            # 14
             "generic"                          # 15
             ]
    final_state = [
        # 0
        "",
        # 1
        "",
        # 2
        "",
        # 3
        "",
        # 4
        "",
        # 5
        "",
        # 6
        "[close([cpuscreen177]), holds([]), sat_on([chair109]), on_top_of([]), inside([]), on([computer176]), laid_on([]), used([]), eaten([])]",
        # 7
        "",
        # 8
        "",
        # 9
        "",
        # 10
        "",
        # 11
        "",
        # 12
        "[close([]), holds([]), sat_on([]), on_top_of([[salmon328, fryingpan270], [bellpepper321, fryingpan270], [fryingpan270, stove312]]), inside([]), on([stove312]), laid_on([]), used([]), eaten([salmon328])]",
        # 13
        "[close([]), holds([]), sat_on([]), on_top_of([[breadslice310, toaster309]]), inside([]), on([toaster309]), laid_on([]), used([]), eaten([breadslice310])]",
        # 14
        ""
        ]
    answer_key = [
        # 0
        "",
        # 1
        "",
        # 2
        "",
        # 3
        "",
        # 4
        "",
        # 5
        "",
        # 6
        "",
        # 7
        "",
        # 8
        "",
        # 9
        "",
        # 10
        "",
        # 11
        "[walk(faucet249),switchon(faucet249),walk(bedroom74),walk(wineglass199),grab(wineglass199),walk(plate195),grab(plate195),walk(kitchen207),walk(sink247),put(wineglass199,sink247),put(plate195,sink247)]",
        # 12
        "[grab(salmon328),grab(bellpepper321),walk(stove312),switchon(stove312),walk(fryingpan270),put(salmon328,fryingpan270),put(bellpepper321,fryingpan270),eat(salmon328)]",
        # 13
        "",
        # 14
        "[walk(bedroom74),walk(book192),grab(book192),walk(livingroom336),walk(sofa369),sit(sofa369),use(book192)]"
                  ]
    rooms = None
    if few_rooms:
        if task_selection in [5, 6, 9]:
            rooms = [74] # bedroom
        elif task_selection in [7,8]:
            rooms = [11] # bathroom
        elif task_selection in [10, 14]:
            rooms = [74, 336] # bedroom, livingroom
        elif task_selection in [11]:
            rooms = [207, 74] # kitchen, bedroom
        elif task_selection in [12, 13]:
            rooms = [207] # kitchen
        elif task_selection in [15]:
            rooms = [74]
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
    if reduce_items:
        relevant = get_relevant(tasks[task_selection])
        program.relevant_items = relevant
    # Full loop
    if step_by_step:
        run_step_by_step(tasks[task_selection], final_state[task_selection])
    elif not dynamic:
        if use_answer_key:
            run(tasks[task_selection], answer_key[task_selection])
        else:
            run(tasks[task_selection])
    else:
        while True:
            task = input("Input task:")
            if task not in tasks:
                exit(0)
            run(task)
