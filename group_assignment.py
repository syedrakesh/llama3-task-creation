import time
from datetime import timedelta
from db import (
    get_connection,
    fetch_complains_with_hotel_id,
    fetch_groups_by_hotel,
    update_complain_group
)
from model import assign_group_from_text

def run_group_assignment():
    start_time = time.time()
    conn = get_connection()

    print("📥 Fetching complaints with hotel_id and no group...")
    complains = fetch_complains_with_hotel_id(conn)
    print(f"✅ Found {len(complains)} complaints to assign groups.\n")

    for index, (cid, complain_text, hotel_id,hotel_section_id) in enumerate(complains, start=1):
        print(f"🔍 [{index}/{len(complains)}] Processing Complaint ID: {cid}")

        groups = fetch_groups_by_hotel(conn, hotel_id)
        if not groups:
            print("   ⚠️ No groups found for hotel ID", hotel_id)
            continue

        group_id, group_name = assign_group_from_text(complain_text, groups)

        if not group_id or group_name.lower() == "unknown":
            print("   ❌ Group could not be assigned. Please improve model or check data.")
            continue

        print(f"   → Assigned Group: {group_name} (ID: {group_id})")
        update_complain_group(conn, cid, group_id, group_name, hotel_id, hotel_section_id)

    conn.close()
    elapsed_time = timedelta(seconds=time.time() - start_time)
    print(f"\n✅ Group assignment complete.")
    print(f"⏱️ Time taken: {elapsed_time}")
