# TechUserBase Context & Guidelines

## Project Overview
TechUserBase is a premium platform providing technology installbase intelligence and custom email lists (e.g., "QuickBooks users with $10M+ revenue").

## Tech Stack
- **Frontend**: Next.js 14+ (App Router)
- **Database**: Supabase (PostgreSQL) + `pg_trgm` for search
- **Styling**: Tailwind CSS + Vanilla CSS (Bento-grid design)
- **Auth/Leads**: Supabase Auth + Resend SMTP

## Core Architecture
### Data Schema
- **Technologies**: Name, Category, Market Share, Logo, Primary Functions.
- **Companies**: Firmographics (Revenue, Size, Industry), Tech Stack.
- **Personas**: Job Titles, Departments, Verified User Count per Tech.

### URL Structure
- Category: `/technology-users/[category-slug]`
- Sub-category: `/technology-users/[category-slug]/[sub-category-slug]`
- Product: `/technology-users/[tech-slug]`
- Persona: `/technology-users/[tech-slug]/[persona-slug]`

## Design Principles
- **Premium Aesthetics**: Use dark modes, sleek gradients, and Bento-grid layouts.
- **Data-Driven**: Use visualizations (charts) and interactive tables instead of heavy text.
- **Fast**: Aim for sub-second search speeds using debounced Supabase queries.

## Coding Standards
- Use TypeScript for all components and logic.
- Follow Next.js App Router patterns (Server vs Client components).
- Centralize styling in `src/styles/globals.css` and Tailwind config.
- Maintain SEO excellence via `[...slug]` programmatic routing.
