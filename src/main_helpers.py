import logging
import time
import datetime

def run(task, program, answer=None):
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

def check_results(results):
    if results:
        results = results[0]
        return results
    else:
        logging.warning("No valid initial state.")
        return False

def run_step_by_step(task, final_state, program, state_subset):
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