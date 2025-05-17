# 🛠️ Complain GenAI Task Management System

This project is a **complaint-to-task automation system** that processes customer complaints and converts them into actionable tasks. It uses a step-by-step pipeline powered by categorization, prioritization, and assignment logic.

## 📦 Project Structure

```
.
├── main.py
├── categorize.py
├── task_typing.py
├── task_sub_typing.py
├── priority_assignment.py
├── group_assignment.py
├── task_creation.py
├── db.py
├── requirements.txt
└── README.md
```

## 🚀 Features

- Complaint categorization
- Task typing and sub-typing
- Priority assignment based on rules
- Group and user assignment
- Automatic task creation from categorized complaints
- Logging and debugging support

## 🔧 Installation

1. **Clone the repository**
```bash
git clone https://github.com/syedrakesh/llama3-task-creation.git
cd llama3-task-creation
```

2. **Create and activate a virtual environment (optional but recommended)**
```bash
python3 -m venv venv
source venv/bin/activate  # For Linux/macOS
# OR
venv\Scripts\activate  # For Windows
```

3. **Install dependencies**
```bash
pip install -r requirements.txt
```

## ⚙️ Configuration

Update the database configuration in `db.py`:

```python
def get_connection():
    return mysql.connector.connect(
        host="localhost",
        user="your_user",
        password="your_password",
        database="your_database"
    )
```

Make sure your MySQL database has all required tables:
- `categorized_complains`
- `task_sources`
- `users`
- `group_user`
- `tasks`
- etc.

## 🧠 Pipeline Workflow

The script `main.py` orchestrates the pipeline:

```python
from categorize import run_categorization
from priority_assignment import run_priority_assignment
from task_sub_typing import run_task_sub_typing
from task_typing import run_task_typing
from group_assignment import run_group_assignment
from task_creation import run_task_creation

if __name__ == "__main__":
    start = time.time()

    run_categorization()
    run_task_typing()
    run_task_sub_typing()
    run_priority_assignment()
    run_group_assignment()
    run_task_creation()

    end = time.time()
    print("Total runtime:", str(timedelta(seconds=end - start)))
```

## 📝 Example Logs

```bash
Fetching task source with ID 2...
Task source found: GenAI Task
Fetching system admin information...
System Admin found with ID: 2
Assigned hours to add based on priority (1): 2 hours
Fetching first active user for group ID: 1...
Found active user with ID: 15
Creating task for complaint ID: 18...
Marking complaint ID: 18 as processed...
Tasks created successfully.
```

## 🧪 Testing

To test individual parts of the pipeline, you can run any of these files directly:

```bash
python categorize.py
python priority_assignment.py
python task_creation.py
```

## ✅ Tips

- Check your DB connection string if anything breaks.
- Use print statements for step-by-step debugging (`task_creation.py` has extensive logging).
- Use MySQL Workbench or phpMyAdmin to inspect the tables and validate insertions.
