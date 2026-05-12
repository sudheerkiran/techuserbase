import React from 'react';
import Header from '@/components/layout/Header';
import Footer from '@/components/layout/Footer';
import LeadForm from '@/components/tech/LeadForm';
import MarketShareChart from '@/components/tech/MarketShareChart';
import { notFound } from 'next/navigation';
import { Check, Users, Database, TrendingUp, Download, Mail, Globe, ShieldCheck, BarChart3 } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { getTechLogo } from '@/lib/logos';

interface PageProps {
  params: {
    slug: string[];
  };
}

export default async function TechnologyPage({ params }: PageProps) {
  const { slug } = await params;
  const techSlug = slug[slug.length - 1]; 

  // Fetch product data from Supabase
  const { data: product } = await supabase
    .from('products')
    .select('*, sub_categories(*, categories(*))')
    .eq('slug', techSlug)
    .single();

  const displayName = product?.name || techSlug.split('-').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ');
  const logoUrl = product?.logo_url || getTechLogo(displayName);
  const marketShare = product?.market_share || Math.floor(Math.random() * (40 - 15) + 15);
  
  const techData = {
    name: displayName,
    accounts: product?.estimated_accounts ? product.estimated_accounts.toLocaleString() : "---",
    contacts: product?.estimated_contacts ? product.estimated_contacts.toLocaleString() : "---",
    description: product?.description || `Target high-value decision makers using ${displayName} across various industries. Our list is verified every 30 days for maximum deliverability.`,
    personas: [
      { title: "VP of Sales", count: "1,200", selected: true },
      { title: "Marketing Manager", count: "3,500", selected: true },
      { title: "IT Director", count: "800", selected: false },
      { title: "Operations Lead", count: "2,100", selected: false },
    ],
    sampleData: [
      { name: "John Doe", title: "VP Sales", company: "TechCorp Solutions", industry: "SaaS", location: "San Francisco, CA" },
      { name: "Jane Smith", title: "Marketing Director", company: "GreenEnergy Inc", industry: "Renewables", location: "Austin, TX" },
      { name: "Mike Johnson", title: "Head of IT", company: "Global Logistics", industry: "Transportation", location: "Chicago, IL" },
    ]
  };

  return (
    <main className="min-h-screen bg-background">
      <Header />
      
      {/* Product Hero */}
      <section className="pt-32 pb-20 border-b border-white/5 relative">
        <div className="absolute top-0 right-0 -z-10 h-[500px] w-[500px] bg-primary/5 blur-[120px]" />
        
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
            
            {/* Left Content */}
            <div className="lg:col-span-7">
              <div className="flex items-center space-x-4 mb-8">
                {logoUrl ? (
                  <div className="relative h-20 w-20 overflow-hidden rounded-2xl bg-white p-3 shadow-xl shadow-white/5">
                    <img src={logoUrl} alt={techData.name} className="h-full w-full object-contain" />
                  </div>
                ) : (
                  <div className="flex h-20 w-20 items-center justify-center rounded-2xl bg-primary/10 text-primary">
                    <Database className="h-10 w-10" />
                  </div>
                )}
                <div>
                  <div className="inline-flex items-center space-x-2 rounded-full bg-emerald-500/10 px-3 py-1 mb-2">
                    <div className="h-1.5 w-1.5 rounded-full bg-emerald-500 animate-pulse" />
                    <span className="text-[10px] font-bold text-emerald-500 uppercase tracking-widest">Live Database</span>
                  </div>
                  <h1 className="text-4xl font-bold tracking-tight text-white sm:text-6xl">
                    {techData.name} <span className="text-primary/50">Intelligence</span>
                  </h1>
                </div>
              </div>
              
              <p className="text-xl text-muted-foreground mb-10 leading-relaxed max-w-2xl">
                {techData.description}
              </p>
              
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-12">
                <div className="glass-panel p-4">
                  <div className="text-2xl font-bold text-white">{techData.accounts}</div>
                  <div className="text-[10px] text-muted-foreground uppercase tracking-widest mt-1 text-primary">Companies Using</div>
                </div>
                <div className="glass-panel p-4">
                  <div className="text-2xl font-bold text-white">{techData.contacts}</div>
                  <div className="text-[10px] text-muted-foreground uppercase tracking-widest mt-1 text-primary">Contacts Available</div>
                </div>
                <div className="glass-panel p-4">
                  <div className="text-2xl font-bold text-white">99.8%</div>
                  <div className="text-[10px] text-muted-foreground uppercase tracking-widest mt-1">Accuracy</div>
                </div>
                <div className="glass-panel p-4">
                  <div className="text-sm font-bold text-white">May 13, 2026</div>
                  <div className="text-[10px] text-muted-foreground uppercase tracking-widest mt-1">Last Updated</div>
                </div>
              </div>
            </div>

            {/* Right Side - Bento Elements */}
            <div className="lg:col-span-5 space-y-6">
              {/* Market Share Card */}
              <div className="bento-card border-white/5">
                <MarketShareChart techName={techData.name} share={marketShare} />
              </div>
              
              {/* Persona Selector Card */}
              <div className="bento-card bg-primary/5 border-primary/20">
                <h3 className="text-lg font-bold text-white mb-6 flex items-center">
                  <Users className="mr-2 h-5 w-5 text-primary" />
                  Top Decision Makers
                </h3>
                <div className="space-y-3">
                  {techData.personas.map((persona) => (
                    <div key={persona.title} className="flex items-center justify-between p-3 rounded-xl bg-white/5 border border-white/5 group transition-colors hover:border-primary/30">
                      <div className="flex items-center space-x-3">
                        <div className="h-2 w-2 rounded-full bg-primary" />
                        <span className="text-sm font-medium text-white">{persona.title}</span>
                      </div>
                      <span className="text-xs text-muted-foreground">{persona.count} contacts</span>
                    </div>
                  ))}
                </div>
                <button className="w-full mt-6 rounded-xl bg-white px-4 py-3 text-xs font-bold text-black transition-all hover:bg-white/90">
                  Request List for These Personas
                </button>
              </div>
            </div>

          </div>
        </div>
      </section>

      {/* Sample Data Grid */}
      <section className="py-24">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div className="mb-12 flex items-end justify-between">
            <div>
              <h2 className="text-2xl font-bold text-white flex items-center">
                <BarChart3 className="mr-2 h-6 w-6 text-primary" />
                Sample Data Insights
              </h2>
              <p className="text-muted-foreground mt-2">Verified professional data points included in every list.</p>
            </div>
            <button className="flex items-center space-x-2 text-sm font-semibold text-primary hover:underline">
              <Download className="h-4 w-4" />
              <span>Download CSV Sample</span>
            </button>
          </div>

          <div className="overflow-x-auto rounded-3xl border border-white/10 bg-white/[0.02] backdrop-blur-md">
            <table className="w-full text-left">
              <thead>
                <tr className="border-b border-white/10 bg-white/5">
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Full Name</th>
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Job Title</th>
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Company</th>
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Industry</th>
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Location</th>
                  <th className="px-6 py-4 text-xs font-bold text-white uppercase tracking-wider">Verified Email</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-white/5">
                {techData.sampleData.map((row, i) => (
                  <tr key={i} className="transition-colors hover:bg-white/[0.02]">
                    <td className="px-6 py-4 text-sm text-white font-medium">{row.name}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.title}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.company}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.industry}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.location}</td>
                    <td className="px-6 py-4 text-sm">
                      <div className="inline-flex items-center space-x-2 rounded-full bg-emerald-500/10 px-2 py-1">
                        <Mail className="h-3 w-3 text-emerald-500" />
                        <span className="text-[10px] font-mono text-emerald-500">j***@domain.com</span>
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      </section>

      {/* Lead Capture */}
      <section className="py-24 bg-primary/5 border-t border-primary/10">
        <div className="mx-auto max-w-4xl px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
            <div>
              <h2 className="text-3xl font-bold text-white mb-6">Need a specialized <br />{techData.name} list?</h2>
              <p className="text-muted-foreground mb-8">
                Our custom list building service allows you to pinpoint decision makers by niche firmographics that aren't available in standard databases.
              </p>
              <ul className="space-y-4">
                {[
                  'Target by IT Budget & Revenue',
                  'Filter by Technology Adoption Date',
                  'Segment by Sub-industry (e.g. Fintech)',
                  'Direct Dial & LinkedIn Profile Links'
                ].map((item) => (
                  <li key={item} className="flex items-center space-x-3 text-sm text-white/80">
                    <div className="h-5 w-5 rounded-full bg-primary/20 flex items-center justify-center">
                      <Check className="h-3 w-3 text-primary" />
                    </div>
                    <span>{item}</span>
                  </li>
                ))}
              </ul>
            </div>
            
            <div className="glass-panel p-8">
              <LeadForm techName={techData.name} productId={product?.id} />
            </div>
          </div>
        </div>
      </section>

      <Footer />
    </main>
  );
}

