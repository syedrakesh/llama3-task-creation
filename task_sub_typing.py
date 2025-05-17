from db import (
    get_connection,
    fetch_complains_with_task_type,
    fetch_task_subtypes_by_task_type_id,
    update_complain_with_task_subtype
)
from model import assign_task_subtype
import time
from datetime import timedelta

def run_task_sub_typing():
    start_time = time.time()
    conn = get_connection()

    print("📥 Fetching complaints with assigned task types...")
    complains = fetch_complains_with_task_type(conn)
    print(f"✅ Found {len(complains)} complaints to assign subtypes.\n")

    for index, (cid, complain_text, task_type_id) in enumerate(complains, start=1):
        print(f"🔍 [{index}/{len(complains)}] Processing Complaint ID: {cid}")

        subtypes = fetch_task_subtypes_by_task_type_id(conn, task_type_id)
        if not subtypes:
            print("   ⚠️ No subtypes found for this task type. Skipping.")
            continue

        subtype_id, subtype_name = assign_task_subtype(complain_text, subtypes)
        print(f"   → Assigned Subtype: {subtype_name} (ID: {subtype_id if subtype_id else 'N/A'})")

        update_complain_with_task_subtype(conn, cid, subtype_id, subtype_name)

    conn.close()
    elapsed_time = timedelta(seconds=time.time() - start_time)
    print(f"\n✅ Task subtype assignment complete.")
    print(f"⏱️ Time taken: {elapsed_time}")