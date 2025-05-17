import time
from datetime import timedelta
from categorize import run_categorization
from priority_assignment import run_priority_assignment
from task_sub_typing import run_task_sub_typing
from task_typing import run_task_typing
from group_assignment import run_group_assignment
from task_creation import run_task_creation

if __name__ == "__main__":
    # Record the start time of the script
    start_time = time.time()

    print("Starting complaint processing pipeline...")

    # Run the categorization process
    run_categorization()

    # Run the task typing process
    run_task_typing()

    # Run the task sub-typing process
    run_task_sub_typing()

    # Run the priority assignment process
    run_priority_assignment()

    # Run the group assignment process
    run_group_assignment()

    # After group assignment, run the task creation process
    print("Starting task creation process...")
    run_task_creation()

    # Calculate the elapsed time
    elapsed_time = time.time() - start_time

    # Convert elapsed time to a human-readable format (hours, minutes, seconds)
    readable_time = str(timedelta(seconds=elapsed_time))

    print("Complaints processed, tasks created, and all processes completed.")
    print(f"Total script runtime: {readable_time}")
