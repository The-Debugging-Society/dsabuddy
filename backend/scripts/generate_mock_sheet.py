import re, json, os

# Paths are relative to this script's directory
script_dir = os.path.dirname(os.path.abspath(__file__))
output_dir = os.path.join(script_dir, "output")
os.makedirs(output_dir, exist_ok=True)

content_path = os.path.join(script_dir, "striver_a2z_content.md")
mapping_path = os.path.join(script_dir, "striver_a2z_mapping.json")

with open(content_path, "r", encoding="utf-8") as f:
    text = f.read()

# Reconstruct next.js streamed string state
pushes = re.findall(r'self\.__next_f\.push\(\[(?:\d+),"(.*?)"\]\)', text)
concat = "".join(pushes)
concat_clean = concat.replace('\\"', '"').replace('\\\\', '\\').replace('\\/', '/')

start_idx = concat_clean.find('"sections"')
start_array = concat_clean.find('[', start_idx)
brace_count = 0
in_str = False
escape = False
end_array = -1

for idx in range(start_array, len(concat_clean)):
    char = concat_clean[idx]
    if escape:
        escape = False
        continue
    if char == '\\':
        escape = True
        continue
    if char == '"':
        in_str = not in_str
        continue
    if not in_str:
        if char == '[':
            brace_count += 1
        elif char == ']':
            brace_count -= 1
            if brace_count == 0:
                end_array = idx + 1
                break

raw_sections_json = concat_clean[start_array:end_array]
raw_sections_json = raw_sections_json.replace(':$undefined', ':null').replace(':"$undefined"', ':null')

sections = json.loads(raw_sections_json)

with open(mapping_path, "r", encoding="utf-8") as f:
    mapping = json.load(f)

mapping_lookup = {item["title"].lower().strip(): item for item in mapping}

formatted_sections = []
section_id_counter = 1
problem_id_counter = 1

for cat_idx, cat in enumerate(sections):
    cat_title = cat.get("category_name", "")
    subcategories = cat.get("subcategories", [])
    
    cat_node = {
        "id": f"cat_{section_id_counter}",
        "title": cat_title,
        "order": cat_idx + 1,
        "problems": [],
        "children": []
    }
    section_id_counter += 1
    
    for sub_idx, sub in enumerate(subcategories):
        sub_title = sub.get("subcategory_name", "")
        probs = sub.get("problems", [])
        
        sub_node = {
            "id": f"sub_{section_id_counter}",
            "title": sub_title,
            "order": sub_idx + 1,
            "problems": [],
            "children": []
        }
        section_id_counter += 1
        
        for prob_idx, p in enumerate(probs):
            title = p.get("problem_name", "")
            diff = p.get("difficulty", "Easy").upper()
            if diff == "E":
                diff = "EASY"
            elif diff == "M":
                diff = "MEDIUM"
            elif diff == "H":
                diff = "HARD"
            
            match = mapping_lookup.get(title.lower().strip())
            
            link = ""
            platform = "leetcode"
            needs_review = False
            
            if match:
                link = match["link"]
                platform = match["platform"]
                needs_review = match["needs_review"]
            else:
                link = "https://github.com/Codensity30/Strivers-A2Z-DSA-Sheet"
                platform = "leetcode"
                needs_review = True
                
            problem_node = {
                "id": f"prob_{problem_id_counter}",
                "sectionId": sub_node["id"],
                "title": title,
                "order": prob_idx + 1,
                "difficulty": diff,
                "articleUrl": p.get("article", ""),
                "youtubeUrl": p.get("youtube", ""),
                "practiceUrl": link,
                "plusUrl": p.get("plus", ""),
                "editorialUrl": p.get("editorial", ""),
                "questionId": None,
                "platform": platform,
                "needsReview": needs_review,
                "status": "UNSOLVED",
                "starred": False,
                "note": None
            }
            problem_id_counter += 1
            sub_node["problems"].append(problem_node)
            
        cat_node["children"].append(sub_node)
    
    formatted_sections.append(cat_node)

mock_sheet_detail = {
    "sheet": {
        "id": "striver_a2z_sheet_id",
        "slug": "strivers-a2z-dsa-sheet",
        "name": "Striver's A2Z Sheet - Learn DSA from A to Z",
        "description": "This course is made for people who want to learn DSA from A to Z for free in a well-organised and structured manner.",
        "author": "Striver",
        "sourceUrl": "https://takeuforward.org/dsa/strivers-a2z-sheet-learn-dsa-a-to-z",
        "coverImage": None,
        "totalProblems": problem_id_counter - 1,
        "solvedCount": 0,
        "sections": formatted_sections
    }
}

mock_sheets_list = {
    "sheets": [
        {
            "id": "striver_a2z_sheet_id",
            "slug": "strivers-a2z-dsa-sheet",
            "name": "Striver's A2Z Sheet - Learn DSA from A to Z",
            "description": "This course is made for people who want to learn DSA from A to Z for free in a well-organised and structured manner.",
            "author": "Striver",
            "sourceUrl": "https://takeuforward.org/dsa/strivers-a2z-sheet-learn-dsa-a-to-z",
            "coverImage": None,
            "totalProblems": problem_id_counter - 1,
            "solvedCount": 0
        },
        {
            "id": "leetcode_75_sheet_id",
            "slug": "leetcode-75",
            "name": "LeetCode 75",
            "description": "Ace your coding interview with 75 essential LeetCode questions.",
            "author": "LeetCode",
            "sourceUrl": "https://leetcode.com/studyplan/leetcode-75/",
            "coverImage": None,
            "totalProblems": 75,
            "solvedCount": 0
        }
    ]
}

out_detail_path = os.path.join(output_dir, "mock_striver_detail.json")
out_list_path = os.path.join(output_dir, "mock_sheets_list.json")

with open(out_detail_path, "w", encoding="utf-8") as f:
    json.dump(mock_sheet_detail, f, indent=2)

with open(out_list_path, "w", encoding="utf-8") as f:
    json.dump(mock_sheets_list, f, indent=2)

print("Mock sheet list saved:", out_list_path)
print("Mock sheet detail saved:", out_detail_path)
print(f"Total problems: {problem_id_counter - 1}")

# Count review items in generated JSON
total_review = sum(
    1 
    for sec in formatted_sections 
    for child in sec["children"] 
    for prob in child["problems"] 
    if prob["needsReview"]
)
print(f"Questions still marked needs_review: {total_review}")
