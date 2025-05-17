from datetime import datetime, timedelta

import mysql.connector
from config import DB_CONFIG

def get_connection():
    return mysql.connector.connect(**DB_CONFIG)

def fetch_categories(conn):
    cursor = conn.cursor()
    cursor.execute("SELECT id, name FROM complain_categories")
    return cursor.fetchall()  # Returns list of (id, name) tuples


def fetch_complains(conn):
    cursor = conn.cursor()
    cursor.execute("SELECT id, complain FROM complains WHERE processed = 0")  # Fetch only unprocessed complaints
    return cursor.fetchall()

def create_output_table(conn):
    cursor = conn.cursor()
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS categorized_complains (
            id INT PRIMARY KEY,
            complain TEXT DEFAULT NULL,
            category_id INT DEFAULT NULL,
            category VARCHAR(255) DEFAULT NULL,
            task_type_id BIGINT DEFAULT NULL,
            task_type_name VARCHAR(100) DEFAULT NULL,
            task_subtype_id BIGINT DEFAULT NULL,
            task_subtype_name VARCHAR(100) DEFAULT NULL,
            priority_id INT DEFAULT NULL,
            priority_name VARCHAR(50) DEFAULT NULL,
            group_id INT DEFAULT NULL,
            group_name VARCHAR(50) DEFAULT NULL,
            hotel_id INT DEFAULT NULL,
            hotel_section_id INT DEFAULT NULL,
            processed TINYINT(1) DEFAULT 0,
            created_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
            updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
            task_created_at TIMESTAMP NULL DEFAULT NULL
        )
    """)
    conn.commit()

def insert_categorized_complain(conn, cid, text, category, category_id):
    cursor = conn.cursor()
    cursor.execute(
        """
        INSERT INTO categorized_complains (id, complain, category, category_id)
        VALUES (%s, %s, %s, %s)
        ON DUPLICATE KEY UPDATE
            complain = VALUES(complain),
            category = VALUES(category)
        """,
        (cid, text, category, category_id)
    )
    conn.commit()

def mark_complain_as_processed(cursor, complain_id):
    cursor.execute("""
        UPDATE categorized_complains 
        SET processed = 1, task_created_at = %s 
        WHERE id = %s
    """, (datetime.now(), complain_id))

def fetch_task_types(conn):
    cursor = conn.cursor()
    cursor.execute("SELECT id, name FROM task_types")
    return cursor.fetchall()

def update_complain_with_task_type(conn, complain_id, task_type_id, task_type_name):
    with conn.cursor() as cur:
        cur.execute("""
            UPDATE categorized_complains
            SET task_type_id = %s,
            task_type_name = %s
            WHERE id = %s
        """, (task_type_id, task_type_name, complain_id))
    conn.commit()

def fetch_complains_with_task_type(conn):
    cursor = conn.cursor()
    cursor.execute("""
            SELECT id, complain, task_type_id
            FROM categorized_complains
            WHERE task_type_id IS NOT NULL AND task_subtype_id IS NULL
        """)
    return cursor.fetchall()

def fetch_task_subtypes_by_task_type_id(conn, task_type_id):
    cursor = conn.cursor()
    cursor.execute("""
            SELECT id, task_type_id, name
            FROM task_subtypes
            WHERE task_type_id = %s
        """, (task_type_id,))
    return cursor.fetchall()

def update_complain_with_task_subtype(conn, complain_id, subtype_id, subtype_name):
    with conn.cursor() as cur:
        cur.execute("""
            UPDATE categorized_complains
            SET task_subtype_id = %s,
            task_subtype_name = %s
            WHERE id = %s
        """, (subtype_id, subtype_name, complain_id))
    conn.commit()

def fetch_complains_without_priority(conn):
    cursor = conn.cursor()
    cursor.execute("""
                SELECT id, complain
            FROM categorized_complains
            WHERE priority_id IS NULL
                AND task_subtype_id IS NOT NULL
            """)
    return cursor.fetchall()

def update_complain_priority(conn, complain_id, priority_id, priority_name):
    with conn.cursor() as cur:
        cur.execute("""
            UPDATE categorized_complains
            SET priority_id = %s,
            priority_name = %s
            WHERE id = %s
        """, (priority_id, priority_name, complain_id))
    conn.commit()

def fetch_complains_with_hotel_id(conn):
    with conn.cursor(buffered=True) as cur:
        cur.execute("""
            SELECT 
                c.id,
                c.complain,
                c.hotel_id,
                c.hotel_section_id
            FROM complains c
            JOIN categorized_complains cc ON cc.id = c.id
            WHERE cc.group_id IS NULL
              AND cc.priority_id IS NOT NULL
        """)
        return cur.fetchall()

def fetch_groups_by_hotel(conn, hotel_id):
    hotel_map = {
        1: "ADH",
        2: "AP",
        3: "AWS"
    }
    prefix = hotel_map.get(hotel_id)
    if not prefix:
        return []

    with conn.cursor(buffered=True) as cur:
        cur.execute("""
            SELECT id, name
            FROM groups
            WHERE name LIKE %s
              AND is_active = 1;
        """, (f"{prefix}%",))
        return cur.fetchall()

def update_complain_group(conn, complain_id, group_id, group_name, hotel_id, hotel_section_id):
    with conn.cursor() as cur:
        cur.execute("""
            UPDATE categorized_complains
            SET group_id = %s, group_name = %s, hotel_id = %s, hotel_section_id = %s
            WHERE id = %s
        """, (group_id, group_name, hotel_id, hotel_section_id, complain_id))
    conn.commit()

# Function to fetch complaints that need task creation
def fetch_categorized_complains(cursor):
    cursor.execute("""
        SELECT * 
        FROM categorized_complains
        WHERE processed = 0
          AND id IS NOT NULL
          AND complain IS NOT NULL
          AND category_id IS NOT NULL
          AND category IS NOT NULL
          AND task_type_id IS NOT NULL
          AND task_type_name IS NOT NULL
          AND task_subtype_id IS NOT NULL
          AND task_subtype_name IS NOT NULL
          AND priority_id IS NOT NULL
          AND priority_name IS NOT NULL
          AND group_id IS NOT NULL
          AND group_name IS NOT NULL
          AND hotel_id IS NOT NULL
          AND hotel_section_id IS NOT NULL;
    """)
    return cursor.fetchall()


# Function to fetch the first active user from group_user
def get_first_active_user(cursor, group_id):
    cursor.execute("""
        SELECT gu.user_id
        FROM group_user gu
        JOIN users u ON gu.user_id = u.id
        WHERE gu.group_id = %s
          AND u.is_active = 1
        ORDER BY gu.id ASC
        LIMIT 1
    """, (group_id,))
    return cursor.fetchone()

# Function to fetch TaskSource with ID = 2
def get_task_source(cursor, connection):
    cursor.execute("SELECT id, name FROM task_sources WHERE id = 2 LIMIT 1")
    result = cursor.fetchone()
    if not result:
        print("Task source with ID 2 not found. Creating it...")
        cursor.execute("INSERT INTO task_sources (id, name) VALUES (2, 'GenAI Task')")
        connection.commit()
        return {'id': 2, 'name': 'GenAI Task'}
    return result

# Function to fetch the 'System Admin' user by name
def get_system_admin(cursor):
    cursor.execute("SELECT id FROM users WHERE name = 'System Admin' LIMIT 1")
    return cursor.fetchone()

def next_task_id(cursor):
    cursor.execute("SELECT id FROM tasks ORDER BY id DESC LIMIT 1")
    result = cursor.fetchone()
    next_id = result['id'] + 1 if result and 'id' in result else 1
    return f"TASK{next_id:09d}"

# Function to create a task
def create_task(cursor, complain, user_id, source_name, admin_user_id, hours_to_add):
    task_id = next_task_id(cursor)
    targeted_date = datetime.now() + timedelta(hours=hours_to_add)

    cursor.execute("""
        INSERT INTO tasks (
            task_type_id, subtask_type_id, task_id, description, hotel_id, hotel_section_id,
            priority_id, task_status, targeted_date, assign_to_workgroup, assign_to, source,
            created_by, complain_id, created_at, updated_at
        )
        VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
    """, (
        complain['task_type_id'], complain['task_subtype_id'], task_id, complain['complain'],
        complain['hotel_id'], complain['hotel_section_id'], complain['priority_id'], 1,
        targeted_date, complain['group_id'], user_id, source_name, admin_user_id,
        complain['id'], datetime.now(), datetime.now()
    ))

# Function to update the complain record to 'processed'
def mark_categorized_complain_as_processed(cursor, complain_id):
    cursor.execute("""
        UPDATE categorized_complains 
        SET processed = 1, task_created_at = %s 
        WHERE id = %s
    """, (datetime.now(), complain_id))
