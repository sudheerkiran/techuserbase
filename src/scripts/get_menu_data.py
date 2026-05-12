import csv
import json

taxonomy = {}

with open('technology-taxonomy-expanded-v4 - Sheet1.csv', mode='r', encoding='utf-8') as csvfile:
    reader = csv.DictReader(csvfile)
    for row in reader:
        cat = row['Category'].strip('"')
        sub = row['Sub-Category'].strip('"')
        
        if cat not in taxonomy:
            taxonomy[cat] = []
        if sub not in taxonomy[cat]:
            taxonomy[cat].append(sub)

# Sort categories and limit to top ones for menu
sorted_cats = sorted(taxonomy.items(), key=lambda x: len(x[1]), reverse=True)

with open('src/data/mega-menu.json', 'w') as f:
    json.dump(taxonomy, f, indent=2)

print("Generated src/data/mega-menu.json")
