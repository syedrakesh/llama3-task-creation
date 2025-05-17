import time
from datetime import timedelta
from db import (
    get_connection,
    fetch_complains_without_priority,
    update_complain_priority, mark_complain_as_processed
)
from model import assign_priority

PRIORITIES = [['1', 'High'], ['2', 'Medium'], ['3', 'Low']]

def run_priority_assignment():
    start_time = time.time()
    conn = get_connection()

    print("📥 Fetching complaints without priority...")
    complains = fetch_complains_without_priority(conn)
    print(f"✅ Found {len(complains)} complaints to assign priority.\n")

    for index, (cid, complain_text) in enumerate(complains, start=1):
        print(f"🔍 [{index}/{len(complains)}] Processing Complaint ID: {cid}")

        priority_id, priority_name = assign_priority(complain_text, PRIORITIES)

        if not priority_id:
            print("   ⏭️ Skipping: Could not assign priority.")
            continue

        print(f"   → Assigned Priority: {priority_name} (ID: {priority_id})")
        update_complain_priority(conn, cid, priority_id, priority_name)

    conn.close()
    elapsed_time = timedelta(seconds=time.time() - start_time)
    print(f"\n✅ Priority assignment complete.")
    print(f"⏱️ Time taken: {elapsed_time}")