import time
from datetime import timedelta
from db import (
    get_connection, fetch_task_types,
    fetch_complains, update_complain_with_task_type, mark_complain_as_processed
)
from model import assign_task_type

def run_task_typing():
    start_time = time.time()

    conn = get_connection()

    print("🧱 Fetching task types...")
    task_types = fetch_task_types(conn)
    print(f"✅ Loaded {len(task_types)} task types.")

    print("📄 Fetching complaints to assign task types...")
    complains = fetch_complains(conn)
    print(f"✅ Loaded {len(complains)} complaints.\n")

    for index, (cid, text) in enumerate(complains, start=1):
        print(f"🔧 [{index}/{len(complains)}] Assigning task type for complaint ID {cid}...")
        task_type_id, task_type_name = assign_task_type(text, task_types)
        print(f"   → Assigned task type: {task_type_name} (ID: {task_type_id if task_type_id else 'N/A'})")

        update_complain_with_task_type(conn, cid, task_type_id, task_type_name)

    conn.close()

    elapsed = timedelta(seconds=time.time() - start_time)
    print(f"\n✅ Task type assignment complete.")
    print(f"⏱️ Time taken: {elapsed}")