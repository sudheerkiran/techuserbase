# TechUserBase - Gemini Context

## Core Mission
Develop a high-performance, premium Next.js application for Technology Installbase Intelligence. The goal is to provide users with verified email lists of technology users (e.g., Salesforce, QuickBooks) filtered by company firmographics and job personas.

## Project DNA
- **Design Language**: Bento-grid, high-contrast dark mode, glassmorphism.
- **Performance Goal**: Sub-second search latency, optimized Core Web Vitals.
- **Architecture**: Next.js App Router + Supabase + Tailwind CSS.

## Key Entities
- **Taxonomy**: Categories -> Sub-categories -> Products (from CSV).
- **Firmographics**: Revenue, Company Size, Industry, Location.
- **Personas**: Job Titles/Functions associated with specific technologies.

## Agent Instructions
- **Aesthetics First**: Every UI component must feel premium. Use smooth transitions and modern typography.
- **Data Integrity**: Ensure the URL hierarchy matches the taxonomy: `/technology-users/[category]/[sub-category]/[product]`.
- **Search Logic**: Use debounced Supabase RPC or `pg_trgm` for fuzzy matching.
- **SEO**: Implement programmatic SEO for all technology/persona combinations.

## Environment & Tools
- **Framework**: Next.js 14+
- **Styling**: Tailwind CSS, Lucide Icons, Framer Motion.
- **Database**: Supabase PostgreSQL.
- **Email**: Resend (for lead capture notifications).
