-- Update products table with counts from technographic estimates
ALTER TABLE products ADD COLUMN IF NOT EXISTS estimated_accounts INTEGER DEFAULT 0;
ALTER TABLE products RENAME COLUMN verified_users_count TO estimated_contacts;
