import requests
from config import OLLAMA_API_URL, MODEL_NAME


def categorize_text(text, categories):
    category_names = [name for _, name in categories]

    prompt = f"""
You are an AI assistant that categorizes customer complaints.
Categories: {', '.join(category_names)}

Classify the following complaint into one of the above categories, or return "Unknown" if it doesn't fit any:

Complaint: "{text}"

Return only the category name.
"""

    try:
        response = requests.post(OLLAMA_API_URL, json={
            "model": MODEL_NAME,
            "prompt": prompt,
            "stream": False
        })

        category_name = response.json()["response"].strip()
        matched = [(cid, name) for cid, name in categories if name == category_name]
        if matched:
            return matched[0]  # (category_id, name)
        return (None, "Unknown")

    except Exception as e:
        print(f"❌ Error categorizing text: {e}")
        return (None, "Unknown")

def assign_task_type(text, task_types):
    task_type_names = [name for _, name in task_types]

    prompt = f"""
    You are an AI assistant that assigns a task type to customer complaints.
    Available Task Types: {', '.join(task_type_names)}
    
    Assign the following complaint to the most appropriate task type, or return "Unknown" if none fit:
    
    Complaint: "{text}"
    
    Return only the task type name.
    """

    try:
        response = requests.post(OLLAMA_API_URL, json={
            "model": MODEL_NAME,
            "prompt": prompt,
            "stream": False
        })

        task_type_name = response.json()["response"].strip()
        matched = [(tid, name) for tid, name in task_types if name == task_type_name]
        if matched:
            return matched[0]  # (task_type_id, task_type_name)
        return (None, "Unknown")

    except Exception as e:
        print(f"❌ Error assigning task type: {e}")
        return (None, "Unknown")

def assign_task_subtype(text, subtypes):
    subtype_names = [name for _, _, name in subtypes]

    prompt = f"""
    You are an AI assistant that assigns a task subtype based on a customer complaint.
    Available Subtypes: {', '.join(subtype_names)}
    
    Choose the best matching subtype for this complaint, or return "Unknown" if none apply:
    
    Complaint: "{text}"
    
    Return only the subtype name.
    """

    try:
        response = requests.post(OLLAMA_API_URL, json={
            "model": MODEL_NAME,
            "prompt": prompt,
            "stream": False
        })

        subtype_name = response.json()["response"].strip()
        matched = [(sid, tid, name) for sid, tid, name in subtypes if name == subtype_name]
        if matched:
            return matched[0][0], matched[0][2]  # (id, name)
        return None, "Unknown"

    except Exception as e:
        print(f"❌ Error assigning subtype: {e}")
        return None, "Unknown"

def assign_priority(text, priorities):
    priority_labels = [label for _, label in priorities]

    prompt = f"""
    You are an AI assistant that assigns urgency level to customer complaints.
    Choose one of the following priority levels for the complaint:
    
    {', '.join(priority_labels)}
    
    Complaint: "{text}"
    
    Return only the matching priority name.
    """

    try:
        response = requests.post(OLLAMA_API_URL, json={
            "model": MODEL_NAME,
            "prompt": prompt,
            "stream": False
        })

        assigned_label = response.json()["response"].strip()
        for pid, name in priorities:
            if name == assigned_label:
                return pid, name

        return None, "Unknown"

    except Exception as e:
        print(f"❌ Error assigning priority: {e}")
        return None, "Unknown"


def assign_group_from_text(text, groups):
    group_names = [name for _, name in groups]

    prompt = f"""
You are an AI assistant that assigns operational groups to hotel complaints.
Available groups: {', '.join(group_names)}

Your task is to assign the most appropriate group from the list above to the complaint shown below.
Always choose the closest matching group — never return blank or "Unknown".
Return only the exact group name from the list.

Complaint: "{text}"

Respond with only the group name, exactly as listed.
"""

    try:
        response = requests.post(OLLAMA_API_URL, json={
            "model": MODEL_NAME,
            "prompt": prompt,
            "stream": False
        })

        group_name = response.json()["response"].strip()

        matched = [(gid, name) for gid, name in groups if name == group_name]
        if matched:
            return matched[0]  # (id, name)

        # fallback: fuzzy partial match
        for gid, name in groups:
            if group_name.lower() in name.lower() or name.lower() in group_name.lower():
                return (gid, name)

        # absolute fallback: return first group
        print("⚠️ No exact match found. Using fallback group.")
        return groups[0] if groups else (None, "Unknown")

    except Exception as e:
        print(f"❌ Error during group assignment: {e}")
        return (None, "Unknown")
