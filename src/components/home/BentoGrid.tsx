"use client";

import React from 'react';
import { motion } from 'framer-motion';
import { Database, BarChart3, Users, Globe, Briefcase, Rocket } from 'lucide-react';
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
              className={`bento-card ${feature.size} group`}
            >
              <div className="flex flex-col h-full justify-between">
                <div>
                  <div className={`mb-6 inline-flex h-12 w-12 items-center justify-center rounded-2xl bg-white/5 transition-colors group-hover:bg-primary/20`}>
                    <feature.icon className={`h-6 w-6 ${feature.color}`} />
                  </div>
                  <h3 className="text-xl font-bold text-white mb-2">{feature.title}</h3>
                  <p className="text-sm text-muted-foreground leading-relaxed">
                    {feature.description}
                  </p>
                </div>
                
                <div className="mt-8 flex items-center justify-between">
                  <span className="text-xs font-semibold uppercase tracking-wider text-primary/80">
                    {feature.count}
                  </span>
                  <Link 
                    href={feature.href}
                    className="flex h-10 w-10 items-center justify-center rounded-full bg-white/5 text-white transition-all hover:bg-primary group-hover:translate-x-1"
                  >
                    <Rocket className="h-4 w-4" />
                  </Link>
                </div>
              </div>

              {/* Decorative Background Element */}
              <div className="absolute -right-10 -bottom-10 h-32 w-32 rounded-full bg-primary/5 blur-3xl transition-opacity group-hover:opacity-100 opacity-0" />
            </motion.div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default BentoGrid;
