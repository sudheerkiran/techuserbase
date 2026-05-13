-- Add vendor column to products
ALTER TABLE products ADD COLUMN IF NOT EXISTS vendor TEXT;
