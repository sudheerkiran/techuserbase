"use client";

import React from 'react';
import { motion } from 'framer-motion';
import { Database, BarChart3, Users, Globe, Briefcase, ArrowRight } from 'lucide-react';
import Link from 'next/link';

const features = [
  {
    title: "ERP & Finance",
    count: "12,400+ Lists",
    description: "Deep insights into SAP, Oracle, and QuickBooks users across 40 countries.",
    icon: Database,
    color: "text-blue-500",
    size: "md:col-span-2",
    href: "/technology-users/erp-finance"
  },
  {
    title: "CRM Stack",
    count: "8,200+ Lists",
    description: "Target Salesforce and Hubspot decision makers.",
    icon: Users,
    color: "text-emerald-500",
    size: "md:col-span-1",
    href: "/technology-users/crm-sales"
  },
  {
    title: "Market Insights",
    count: "Real-time",
    description: "Sub-second market share analysis.",
    icon: BarChart3,
    color: "text-purple-500",
    size: "md:col-span-1",
    href: "#"
  },
  {
    title: "Cloud Infrastructure",
    count: "15,000+ Lists",
    description: "Reach AWS, Azure, and Google Cloud architects and engineering leads.",
    icon: Globe,
    color: "text-orange-500",
    size: "md:col-span-2",
    href: "/technology-users/cloud-infrastructure"
  },
];

const BentoGrid = () => {
  return (
    <section className="py-24 bg-black">
      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="mb-16 text-center">
          <h2 className="text-3xl font-bold tracking-tight text-white sm:text-4xl">Browse by Intelligence Category</h2>
          <p className="mt-4 text-muted-foreground">Expertly curated lists for specific technology ecosystems.</p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
          {features.map((feature, index) => (
            <motion.div
              key={feature.title}
              initial={{ opacity: 0, y: 20 }}
              whileInView={{ opacity: 1, y: 0 }}
              viewport={{ once: true }}
              transition={{ delay: index * 0.1 }}
              className={`bento-card ${feature.size} group relative overflow-hidden`}
            >
              {/* Background Glow */}
              <div className="absolute -inset-px bg-gradient-to-br from-primary/20 via-transparent to-transparent opacity-0 transition-opacity duration-500 group-hover:opacity-100" />
              
              <div className="relative flex flex-col h-full justify-between z-10">
                <div>
                  <div className={`mb-6 inline-flex h-12 w-12 items-center justify-center rounded-2xl bg-white/5 shadow-inner transition-all duration-500 group-hover:bg-primary/20 group-hover:scale-110 group-hover:rotate-3`}>
                    <feature.icon className={`h-6 w-6 ${feature.color}`} />
                  </div>
                  <h3 className="text-xl font-bold text-white mb-3 group-hover:text-primary transition-colors">{feature.title}</h3>
                  <p className="text-sm text-muted-foreground leading-relaxed">
                    {feature.description}
                  </p>
                </div>
                
                <div className="mt-10 flex items-center justify-between">
                  <div className="flex flex-col">
                    <span className="text-[10px] font-bold uppercase tracking-widest text-muted-foreground/60 mb-1">Available Lists</span>
                    <span className="text-sm font-bold text-white tracking-tight">
                      {feature.count}
                    </span>
                  </div>
                  <Link 
                    href={feature.href}
                    className="flex h-12 w-12 items-center justify-center rounded-full bg-white/5 border border-white/10 text-white transition-all hover:bg-primary hover:border-primary group-hover:shadow-[0_0_20px_rgba(59,130,246,0.3)]"
                  >
                    <ArrowRight className="h-5 w-5 transition-transform group-hover:translate-x-1" />
                  </Link>
                </div>
              </div>
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default BentoGrid;
