import React from 'react';
import Header from '@/components/layout/Header';
import Footer from '@/components/layout/Footer';
import { notFound } from 'next/navigation';
import { Check, Users, Database, TrendingUp, Download, ShieldCheck, Mail, Globe } from 'lucide-react';
import { supabase } from '@/lib/supabase';
import { getTechLogo } from '@/lib/logos';
import Image from 'next/image';

interface PageProps {
  params: {
    slug: string[];
  };
}

export default async function TechnologyPage({ params }: PageProps) {
  const { slug } = await params;
  const techSlug = slug[slug.length - 1]; 

  // Fetch product data from Supabase
  const { data: product, error } = await supabase
    .from('products')
    .select('*, sub_categories(*, categories(*))')
    .eq('slug', techSlug)
    .single();

  const displayName = product?.name || techSlug.split('-').map(w => w.charAt(0).toUpperCase() + w.slice(1)).join(' ');
  const logoUrl = product?.logo_url || getTechLogo(displayName);
  
  const techData = {
    name: displayName,
    count: product?.verified_users_count ? product.verified_users_count.toLocaleString() : "5,000+",
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
      <section className="pt-32 pb-20 border-b border-white/5">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 lg:grid-cols-2 gap-16 items-center">
            <div>
              <div className="flex items-center space-x-4 mb-6">
                {logoUrl ? (
                  <div className="relative h-16 w-16 overflow-hidden rounded-2xl bg-white p-2">
                    <img src={logoUrl} alt={techData.name} className="h-full w-full object-contain" />
                  </div>
                ) : (
                  <div className="flex h-16 w-16 items-center justify-center rounded-2xl bg-primary/10 text-primary">
                    <Database className="h-8 w-8" />
                  </div>
                )}
                <div className="inline-flex items-center space-x-2 rounded-full bg-primary/10 px-4 py-1">
                  <ShieldCheck className="h-4 w-4 text-primary" />
                  <span className="text-xs font-semibold text-primary uppercase tracking-wider">Verified Installbase</span>
                </div>
              </div>
              <h1 className="text-4xl font-bold tracking-tight text-white sm:text-6xl mb-6">
                {techData.name} <br />
                <span className="text-primary">Decision Makers</span>
              </h1>
              <p className="text-lg text-muted-foreground mb-8 leading-relaxed">
                {techData.description}
              </p>
              
              <div className="flex flex-wrap gap-4">
                <div className="glass-panel px-6 py-4">
                  <div className="text-2xl font-bold text-white">{techData.count}</div>
                  <div className="text-xs text-muted-foreground uppercase tracking-widest">Total Prospects</div>
                </div>
                <div className="glass-panel px-6 py-4">
                  <div className="text-2xl font-bold text-white">98.5%</div>
                  <div className="text-xs text-muted-foreground uppercase tracking-widest">Accuracy Rate</div>
                </div>
              </div>
            </div>

            {/* Persona Selector Sidebar */}
            <div className="bento-card">
              <h3 className="text-lg font-bold text-white mb-6 flex items-center">
                <Users className="mr-2 h-5 w-5 text-primary" />
                Select Job Functions
              </h3>
              <div className="space-y-3">
                {techData.personas.map((persona) => (
                  <label key={persona.title} className="flex items-center justify-between p-4 rounded-xl border border-white/5 bg-white/5 cursor-pointer transition-all hover:bg-white/10 group">
                    <div className="flex items-center space-x-3">
                      <div className={`h-5 w-5 rounded border flex items-center justify-center transition-colors ${persona.selected ? 'bg-primary border-primary' : 'border-white/20'}`}>
                        {persona.selected && <Check className="h-3 w-3 text-white" />}
                      </div>
                      <span className="text-sm font-medium text-white">{persona.title}</span>
                    </div>
                    <span className="text-xs text-muted-foreground group-hover:text-primary transition-colors">{persona.count} contacts</span>
                    <input type="checkbox" className="hidden" defaultChecked={persona.selected} />
                  </label>
                ))}
              </div>
              <button className="w-full mt-8 rounded-xl bg-primary py-4 text-sm font-bold text-white shadow-lg shadow-primary/20 transition-all hover:bg-primary/90">
                Get Sample Data for Selection
              </button>
            </div>
          </div>
        </div>
      </section>

      {/* Sample Data Grid */}
      <section className="py-24">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div className="mb-12 flex items-end justify-between">
            <div>
              <h2 className="text-2xl font-bold text-white">Sample Data Preview</h2>
              <p className="text-muted-foreground mt-2">A glimpse of the fields included in our {techData.name} users list.</p>
            </div>
            <button className="flex items-center space-x-2 text-sm font-semibold text-primary hover:underline">
              <Download className="h-4 w-4" />
              <span>Download Full Sample</span>
            </button>
          </div>

          <div className="overflow-x-auto rounded-3xl border border-white/10 bg-white/[0.02] backdrop-blur-md">
            <table className="w-full text-left">
              <thead>
                <tr className="border-b border-white/10 bg-white/5">
                  <th className="px-6 py-4 text-sm font-semibold text-white">Full Name</th>
                  <th className="px-6 py-4 text-sm font-semibold text-white">Job Title</th>
                  <th className="px-6 py-4 text-sm font-semibold text-white">Company</th>
                  <th className="px-6 py-4 text-sm font-semibold text-white">Industry</th>
                  <th className="px-6 py-4 text-sm font-semibold text-white">Location</th>
                  <th className="px-6 py-4 text-sm font-semibold text-white">Email</th>
                </tr>
              </thead>
              <tbody className="divide-y divide-white/5">
                {techData.sampleData.map((row, i) => (
                  <tr key={i} className="transition-colors hover:bg-white/[0.02]">
                    <td className="px-6 py-4 text-sm text-white">{row.name}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.title}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.company}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.industry}</td>
                    <td className="px-6 py-4 text-sm text-muted-foreground">{row.location}</td>
                    <td className="px-6 py-4 text-sm">
                      <div className="h-4 w-24 bg-white/10 rounded animate-pulse" />
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
        <div className="mx-auto max-w-3xl px-4 sm:px-6 lg:px-8 text-center">
          <h2 className="text-3xl font-bold text-white mb-6">Need a custom {techData.name} list?</h2>
          <p className="text-muted-foreground mb-10">Tell us your specific requirements (revenue range, location, seniority) and we'll build it for you.</p>
          
          <form className="grid grid-cols-1 md:grid-cols-2 gap-4 text-left">
            <div className="space-y-2">
              <label className="text-xs font-semibold text-muted-foreground uppercase">Work Email</label>
              <input type="email" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none" placeholder="name@company.com" />
            </div>
            <div className="space-y-2">
              <label className="text-xs font-semibold text-muted-foreground uppercase">Phone Number</label>
              <input type="tel" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none" placeholder="+1 (555) 000-0000" />
            </div>
            <div className="md:col-span-2 space-y-2">
              <label className="text-xs font-semibold text-muted-foreground uppercase">Custom Requirements</label>
              <textarea className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none h-32" placeholder="I need Salesforce users in Healthcare with revenue > $50M..." />
            </div>
            <button className="md:col-span-2 rounded-xl bg-primary py-4 font-bold text-white transition-all hover:bg-primary/90 shadow-xl shadow-primary/20 mt-4">
              Send Requirements
            </button>
          </form>
        </div>
      </section>

      <Footer />
    </main>
  );
}

function ShieldCheck({ className }: { className?: string }) {
  return (
    <svg 
      className={className} 
      xmlns="http://www.w3.org/2000/svg" 
      width="24" height="24" 
      viewBox="0 0 24 24" 
      fill="none" 
      stroke="currentColor" 
      strokeWidth="2" 
      strokeLinecap="round" 
      strokeLinejoin="round"
    >
      <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z" />
      <path d="m9 12 2 2 4-4" />
    </svg>
  );
}
