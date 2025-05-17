from db import get_first_active_user, get_task_source, get_system_admin, create_task, \
    mark_complain_as_processed, get_connection, fetch_categorized_complains


# Function to process complaints and create tasks
def run_task_creation():
    print("Starting task creation process...")

    # Assuming you already have a function to get an existing DB connection
    db_connection = get_connection()
    cursor = db_connection.cursor(dictionary=True)

    print("Fetching categorized complains...")
    complains = fetch_categorized_complains(cursor)

    if not complains:
        print("No unprocessed complaints found.")
        return

    print(f"Found {len(complains)} unprocessed complaints.")

    # Get the task source and system admin info
    print("Fetching task source with ID 2...")
    task_source = get_task_source(cursor, db_connection)
    if task_source:
        print(f"Task source found: {task_source['name']}")
    else:
        print("Task source with ID 2 not found.")

    print("Fetching system admin information...")
    system_admin = get_system_admin(cursor)
    if system_admin:
        print(f"System Admin found with ID: {system_admin['id']}")
    else:
        print("System Admin not found.")

    if not task_source or not system_admin:
        print("Missing necessary task source or system admin. Exiting task creation process.")
        return

    for complain in complains:
        # print(f"\nProcessing complaint ID: {complain['id']} - {complain['complain']}")

        # Determine the hours to add based on priority
        priority_id = complain['priority_id']
        if priority_id == 1:
            hours_to_add = 2
        elif priority_id == 2:
            hours_to_add = 12
        elif priority_id == 3:
            hours_to_add = 24
        else:
            hours_to_add = 24  # Default fallback
        print(f"Assigned hours to add based on priority ({priority_id}): {hours_to_add} hours")

        # Get the first active user from the group
        print(f"Fetching first active user for group ID: {complain['group_id']}...")
        user = get_first_active_user(cursor, complain['group_id'])

        if user:
            user_id = user['user_id']  # Access by column name, not index
            print(f"Found active user with ID: {user_id}")
        else:
            user_id = None  # No active user found, assign null
            print("No active user found in this group.")

        # Create the task
        print(f"Creating task for complaint ID: {complain['id']}...")
        create_task(cursor, complain, user_id, task_source['id'], system_admin['id'], hours_to_add)
        print(f"Task created for complaint ID: {complain['id']}.")

        # Mark the complain as processed
        print(f"Marking complaint ID: {complain['id']} as processed...")
        mark_complain_as_processed(cursor, complain['id'])
        print(f"Complaint ID: {complain['id']} marked as processed.")

    # Commit the changes and close the connection
    db_connection.commit()
    cursor.close()
    db_connection.close()

    print("All tasks created successfully and changes committed.")
