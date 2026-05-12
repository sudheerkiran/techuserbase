import os
import csv
import re

def slugify(text):
    text = text.lower()
    text = re.sub(r'[^a-z0-9]+', '-', text)
    return text.strip('-')

counts_dir = 'counts-files'
output_file = 'supabase/seed_counts.sql'

sql_statements = []
sql_statements.append("-- Seed counts for technologies\n")

# To handle unique slugs and aggregation
tech_data = {}

for filename in os.listdir(counts_dir):
    if filename.endswith('.csv'):
        filepath = os.path.join(counts_dir, filename)
        with open(filepath, mode='r', encoding='utf-8') as f:
            reader = csv.DictReader(f)
            for row in reader:
                name = row['Technology']
                slug = slugify(name)
                
                try:
                    accounts = int(row['Estimated_Accounts'])
                except:
                    accounts = 0
                
                try:
                    contacts = int(row['Estimated_Contacts'])
                except:
                    contacts = 0
                
                if slug not in tech_data:
                    tech_data[slug] = {
                        'name': name,
                        'accounts': accounts,
                        'contacts': contacts
                    }
                else:
                    # If duplicate, take the max counts or update
                    tech_data[slug]['accounts'] = max(tech_data[slug]['accounts'], accounts)
                    tech_data[slug]['contacts'] = max(tech_data[slug]['contacts'], contacts)

# Generate UPSERT statements
# We don't have sub_category_id here, so we'll only update existing products 
# OR we need to create a "General" category/sub-category for these.

# Let's create a "General" sub-category for orphans
sql_statements.append("""
DO $$
DECLARE
    gen_cat_id UUID;
    gen_sub_id UUID;
BEGIN
    INSERT INTO categories (name, slug) VALUES ('Other Technologies', 'other-technologies')
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name
    RETURNING id INTO gen_cat_id;

    INSERT INTO sub_categories (category_id, name, slug) VALUES (gen_cat_id, 'General', 'general')
    ON CONFLICT (category_id, slug) DO UPDATE SET name = EXCLUDED.name
    RETURNING id INTO gen_sub_id;
""")

for slug, data in tech_data.items():
    name_esc = data['name'].replace("'", "''")
    sql_statements.append(f"""
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('{name_esc}', '{slug}', {data['accounts']}, {data['contacts']}, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    """)

sql_statements.append("END $$;")

with open(output_file, 'w', encoding='utf-8') as f:
    f.writelines(sql_statements)

print(f"Generated {len(tech_data)} updates in {output_file}")
