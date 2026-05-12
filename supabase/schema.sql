-- TechUserBase Supabase Schema

-- Enable pg_trgm for fuzzy search
create extension if not exists pg_trgm;

-- Categories Table
create table if not exists categories (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  slug text not null unique,
  created_at timestamp with time zone default now()
);

-- Sub-Categories Table
create table if not exists sub_categories (
  id uuid primary key default gen_random_uuid(),
  category_id uuid references categories(id) on delete cascade,
  name text not null,
  slug text not null,
  created_at timestamp with time zone default now(),
  unique(category_id, slug)
);

-- Products (Technologies) Table
create table if not exists products (
  id uuid primary key default gen_random_uuid(),
  sub_category_id uuid references sub_categories(id) on delete cascade,
  name text not null,
  slug text not null unique,
  description text,
  market_share float,
  logo_url text,
  verified_users_count integer default 0,
  created_at timestamp with time zone default now()
);

-- Companies Table
create table if not exists companies (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  industry text,
  revenue_range text, -- e.g., "$1M - $10M"
  size_range text,    -- e.g., "11-50 employees"
  city text,
  state text,
  country text,
  created_at timestamp with time zone default now()
);

-- Installbase (Linking Companies to Products)
create table if not exists installbase (
  company_id uuid references companies(id) on delete cascade,
  product_id uuid references products(id) on delete cascade,
  primary key (company_id, product_id)
);

-- Personas Table (Job Titles per Product)
create table if not exists personas (
  id uuid primary key default gen_random_uuid(),
  product_id uuid references products(id) on delete cascade,
  title text not null,
  department text,
  count integer default 0,
  created_at timestamp with time zone default now()
);

-- Leads Table
create table if not exists leads (
  id uuid primary key default gen_random_uuid(),
  product_id uuid references products(id) on delete set null,
  name text not null,
  email text not null,
  company_name text,
  job_title text,
  requirements text,
  status text default 'new', -- new, contacted, qualified, lost
  created_at timestamp with time zone default now()
);

-- RLS (Row Level Security) - Basic Setup
alter table categories enable row level security;
alter table sub_categories enable row level security;
alter table products enable row level security;
alter table companies enable row level security;
alter table installbase enable row level security;
alter table personas enable row level security;
alter table leads enable row level security;

-- Public read access for taxonomy and products
create policy "Allow public read access for categories" on categories for select using (true);
create policy "Allow public read access for sub_categories" on sub_categories for select using (true);
create policy "Allow public read access for products" on products for select using (true);
create policy "Allow public read access for personas" on personas for select using (true);

-- Lead insertion (public)
create policy "Allow public lead insertion" on leads for insert with check (true);

-- Indexes for search
create index idx_products_name_trgm on products using gin (name gin_trgm_ops);
create index idx_products_slug on products (slug);
create index idx_sub_categories_slug on sub_categories (slug);
create index idx_categories_slug on categories (slug);
