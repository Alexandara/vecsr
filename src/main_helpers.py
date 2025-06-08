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