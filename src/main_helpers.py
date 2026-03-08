import logging
import time
import datetime
import subprocess

from pathlib import Path

def run(task, program, answer=None, take_actions=True):
    start_time = time.time()
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
    # logging.info(actions)
    print_actions = ""
    for action in actions:
        print_actions = print_actions + action + ")"
    print_actions = print_actions[:-1]
    logging.info(print_actions)
    if take_actions:
        for action in actions:
            a = action.replace("(", " ").replace(",", " ").split()
            if a:
                program.take_action(tuple(a))
        logging.info("Actions taken in simulation: %s seconds" % (time.time() - start_time))
        logging.info("Task End Time: %s", datetime.datetime.now())
    return actions

def check_results(results):
    if results:
        results = results[0]
        return results
    else:
        logging.warning("No valid initial state.")
        return False

def concatenate_files(input_filenames, output_filename):
    output_path = Path(output_filename)

    with output_path.open("w", encoding="utf-8") as outfile:
        for filename in input_filenames:
            input_path = Path(filename)
            with input_path.open("r", encoding="utf-8") as infile:
                outfile.write(infile.read())
                outfile.write("\n")

def task_helper(task):
    # Dictionary with the key being the task name
    # Format: [final_state, answer_key, rooms]
    tasks = {}
    tasks["use_phone_on_couch"] = ["", "", None] # 0
    tasks["grab_remote_and_clothes"] = ["", "", None]  # 1
    tasks["grab_remote"] = ["", "", None]  # 2
    tasks["set_remote_on_coffee_table"] = ["", "", None]  # 3
    tasks["turn_on_tv"] = ["", "", None]  # 4
    # Real Tasks
    tasks["go_to_sleep"] = ["", "", [74]]  # 5
    tasks["browse_internet"] = ["[close([cpuscreen177]), holds([]), sat_on([chair109]), on_top_of([]), inside([]), "
                                "on([computer176]), laid_on([]), used([]), eaten([])]",
                                "",
                                [74]]  # 6
    tasks["wash_teeth"] = ["", "", [11]]  # 7
    tasks["brush_teeth"] = ["", "", [11]]  # 8
    tasks["vacuum"] = ["", "", [74]]  # 9
    tasks["change_sheets_and_pillow_cases"] = ["", "", [74, 336]]  # 10
    tasks["wash_dirty_dishes"] = ["",
                                  "[walk(faucet249),switchon(faucet249),walk(bedroom74),walk(wineglass199),"
                                  "grab(wineglass199),walk(plate195),grab(plate195),walk(kitchen207),walk(sink247),"
                                  "put(wineglass199,sink247),put(plate195,sink247)]",
                                  [207, 74]]  # 11
    tasks["feed_me"] = ["[close([]), holds([]), sat_on([]), on_top_of([[salmon328, fryingpan270], "
                        "[bellpepper321, fryingpan270], [fryingpan270, stove312]]), inside([]), on([stove312]), "
                        "laid_on([]), used([]), eaten([salmon328])]",
                        "[grab(salmon328),grab(bellpepper321),walk(stove312),switchon(stove312),walk(fryingpan270),"
                        "put(salmon328,fryingpan270),put(bellpepper321,fryingpan270),eat(salmon328)]",
                        [207]]  # 12
    tasks["breakfast"] = ["[close([]), holds([]), sat_on([]), on_top_of([[breadslice310, toaster309]]), inside([]), "
                          "on([toaster309]), laid_on([]), used([]), eaten([breadslice310])]", "", None]#[207]]  # 13
    tasks["read"] = ["",
                     "[walk(bedroom74),walk(book192),grab(book192),walk(livingroom336),walk(sofa369),sit(sofa369),use(book192)]",
                     [74, 336]]  # 14
    tasks["prepare_letter_for_mailing"] = ["", "", [207, 74, 336, 11]]
    tasks["generic"] = ["", "", [207, 74, 336, 11]]
    if task in tasks:
        return tasks[task]
    else:
        return ["", "", None]

def asrun(ascript):
  "Run the given AppleScript and return the standard output."
  osa = subprocess.run(['/usr/bin/osascript', '-'], input=ascript, text=True, capture_output=True)
  if osa.returncode == 0:
    return osa.stdout.rstrip()
  else:
    raise ChildProcessError(f'AppleScript: {osa.stderr.rstrip()}')

def as_is_runnning(app):
    logging.debug("Checking if " + app + " is running.")
    count = int(subprocess.check_output(["osascript",
                "-e", "tell application \"System Events\"",
                "-e", "count (every process whose name is \"" + app + "\")",
                "-e", "end tell"]).strip())
    return count > 0