import csv
import re
import json

def slugify(text):
    if not text:
        return ""
    text = text.lower()
    text = re.sub(r'[^a-z0-9]+', '-', text)
    return text.strip('-')

categories = {}
sub_categories = {}
products = []

csv_file = 'technology-taxonomy-expanded-v4 - Sheet1.csv'

try:
    with open(csv_file, mode='r', encoding='utf-8') as csvfile:
        reader = csv.DictReader(csvfile)
        for row in reader:
            cat = row['Category']
            sub = row['Sub-Category']
            prod = row['Product']
            
            if not cat or not sub or not prod:
                continue

            if cat not in categories:
                categories[cat] = slugify(cat)
            
            sub_key = (cat, sub)
            if sub_key not in sub_categories:
                sub_categories[sub_key] = slugify(sub)
                
            products.append({
                'cat_slug': categories[cat],
                'sub_slug': sub_categories[sub_key],
                'name': prod,
                'slug': slugify(prod)
            })

    # Generate SQL
    sql_lines = ["-- Seed Taxonomy Data\n"]
    
    # Categories
    for name, slug in categories.items():
        safe_name = name.replace("'", "''")
        sql_lines.append(f"INSERT INTO categories (name, slug) VALUES ('{safe_name}', '{slug}') ON CONFLICT (slug) DO NOTHING;")
    
    sql_lines.append("\n-- Sub-categories")
    for (cat_name, sub_name), sub_slug in sub_categories.items():
        cat_slug = categories[cat_name]
        safe_sub_name = sub_name.replace("'", "''")
        sql_lines.append(f"INSERT INTO sub_categories (category_id, name, slug) SELECT id, '{safe_sub_name}', '{sub_slug}' FROM categories WHERE slug = '{cat_slug}' ON CONFLICT (category_id, slug) DO NOTHING;")

    sql_lines.append("\n-- Products")
    for p in products:
        safe_prod_name = p['name'].replace("'", "''")
        sql_lines.append(f"INSERT INTO products (sub_category_id, name, slug) SELECT id, '{safe_prod_name}', '{p['slug']}' FROM sub_categories WHERE slug = '{p['sub_slug']}' AND category_id = (SELECT id FROM categories WHERE slug = '{p['cat_slug']}') ON CONFLICT (slug) DO NOTHING;")

    with open('supabase/seed_taxonomy.sql', 'w', encoding='utf-8') as f:
        f.write("\n".join(sql_lines))
    
    print(f"Successfully generated seed_taxonomy.sql with {len(categories)} categories, {len(sub_categories)} sub-categories, and {len(products)} products.")

except Exception as e:
    print(f"Error: {e}")
