import time
from datetime import timedelta
from db import (
    get_connection, fetch_categories,
    fetch_complains, create_output_table,
    insert_categorized_complain
)
from model import categorize_text

def run_categorization():
    start_time = time.time()

    conn = get_connection()

    print("📦 Creating output table (if not exists)...")
    create_output_table(conn)

    print("📚 Fetching categories...")
    categories = fetch_categories(conn)
    print(f"✅ Loaded {len(categories)} categories.")

    print("📝 Fetching unprocessed complaints...")
    complains = fetch_complains(conn)
    print(f"✅ Loaded {len(complains)} unprocessed complaints to categorize.\n")

    for index, (cid, text) in enumerate(complains, start=1):
        print(f"🔍 [{index}/{len(complains)}] Processing complaint ID {cid}...")
        category_id, category_name = categorize_text(text, categories)
        print(f"   → Categorized as: {category_name} (ID: {category_id if category_id else 'N/A'})")

        insert_categorized_complain(conn, cid, text, category_name, category_id)

    conn.close()

    end_time = time.time()
    elapsed_time = timedelta(seconds=end_time - start_time)
    print(f"\n✅ All complaints have been categorized and saved.")
    print(f"⏱️ Total script run time: {str(elapsed_time)}")
