"use client";

import React, { useState, useEffect } from 'react';
import { Search, ArrowRight, Zap, Shield, Database, Loader2 } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { supabase } from '@/lib/supabase';
import Link from 'next/link';

const Hero = () => {
  const [query, setQuery] = useState('');
  const [isFocused, setIsFocused] = useState(false);
  const [suggestions, setSuggestions] = useState<any[]>([]);
  const [isLoading, setIsLoading] = useState(false);

  useEffect(() => {
    const fetchSuggestions = async () => {
      if (query.length < 2) {
        setSuggestions([]);
        return;
      }

      setIsLoading(true);
      const { data } = await supabase
        .from('products')
        .select('name, slug')
        .ilike('name', `%${query}%`)
        .limit(5);

      if (data) setSuggestions(data);
      setIsLoading(false);
    };

    const debounce = setTimeout(fetchSuggestions, 300);
    return () => clearTimeout(debounce);
  }, [query]);

  return (
    <section className="relative overflow-hidden pt-32 pb-20 lg:pt-48 lg:pb-32">
      {/* Background Gradients */}
      <div className="hero-gradient absolute inset-0 -z-10" />
      <div className="absolute top-0 left-1/2 -z-10 h-[600px] w-[800px] -translate-x-1/2 -translate-y-1/2 rounded-full bg-primary/5 blur-[120px]" />

      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="text-center">
          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5 }}
            className="inline-flex items-center rounded-full border border-primary/20 bg-primary/5 px-4 py-1.5 mb-8"
          >
            <Zap className="mr-2 h-4 w-4 text-primary" />
            <span className="text-sm font-medium text-primary">Sub-second search over 50k+ technologies</span>
          </motion.div>

          <motion.h1
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.1 }}
            className="text-gradient text-5xl font-extrabold tracking-tight sm:text-7xl"
          >
            Find exactly who uses <br /> 
            <span className="text-primary">any technology.</span>
          </motion.h1>

          <motion.p
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.2 }}
            className="mx-auto mt-8 max-w-2xl text-lg text-muted-foreground"
          >
            Verified email lists and installbase intelligence. Filter by revenue, company size, and job persona to reach the right decision makers.
          </motion.p>

          <motion.div
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            transition={{ duration: 0.5, delay: 0.3 }}
            className="mx-auto mt-12 max-w-2xl relative"
          >
            <div className={`relative transition-all duration-300 ${isFocused ? 'scale-105' : 'scale-100'}`}>
              <div className="absolute inset-y-0 left-0 flex items-center pl-6 pointer-events-none">
                {isLoading ? (
                  <Loader2 className="h-6 w-6 text-primary animate-spin" />
                ) : (
                  <Search className={`h-6 w-6 transition-colors ${isFocused ? 'text-primary' : 'text-muted-foreground'}`} />
                )}
              </div>
              <input
                type="text"
                value={query}
                onChange={(e) => setQuery(e.target.value)}
                onFocus={() => setIsFocused(true)}
                onBlur={() => setTimeout(() => setIsFocused(false), 200)}
                placeholder="Search technologies (e.g. Salesforce, AWS, QuickBooks...)"
                className="block w-full rounded-2xl border border-white/10 bg-white/5 py-6 pl-16 pr-32 text-lg text-white placeholder:text-muted-foreground focus:border-primary/50 focus:bg-white/10 focus:outline-none focus:ring-4 focus:ring-primary/10 transition-all backdrop-blur-md"
              />
              <div className="absolute inset-y-0 right-2 flex items-center">
                <button className="flex items-center space-x-2 rounded-xl bg-primary px-6 py-3 text-sm font-bold text-white shadow-lg shadow-primary/25 transition-all hover:bg-primary/90 hover:scale-105 active:scale-95">
                  <span>Search</span>
                  <ArrowRight className="h-4 w-4" />
                </button>
              </div>
            </div>

            {/* Suggestions Dropdown */}
            <AnimatePresence>
              {isFocused && suggestions.length > 0 && (
                <motion.div
                  initial={{ opacity: 0, y: 10 }}
                  animate={{ opacity: 1, y: 0 }}
                  exit={{ opacity: 0, y: 10 }}
                  className="absolute z-50 mt-2 w-full overflow-hidden rounded-2xl border border-white/10 bg-card/95 p-2 shadow-2xl backdrop-blur-xl"
                >
                  {suggestions.map((item) => (
                    <Link
                      key={item.slug}
                      href={`/technology-users/${item.slug}`}
                      className="flex items-center space-x-3 rounded-xl px-4 py-3 text-left transition-colors hover:bg-white/5 group"
                    >
                      <div className="flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-white/5 group-hover:bg-primary/20">
                        <Database className="h-5 w-5 text-muted-foreground group-hover:text-primary" />
                      </div>
                      <div>
                        <div className="text-sm font-semibold text-white">{item.name}</div>
                        <div className="text-xs text-muted-foreground">Technology Users List</div>
                      </div>
                    </Link>
                  ))}
                </motion.div>
              )}
            </AnimatePresence>
            
            {/* Trending Technologies */}
            <div className="mt-12 flex flex-col items-center space-y-4">
              <span className="text-xs font-semibold uppercase tracking-widest text-muted-foreground/60">Trending Tech Installbases</span>
              <div className="flex flex-wrap justify-center gap-6">
                {[
                  { name: 'Salesforce', domain: 'salesforce.com' },
                  { name: 'AWS', domain: 'aws.amazon.com' },
                  { name: 'QuickBooks', domain: 'quickbooks.intuit.com' },
                  { name: 'Hubspot', domain: 'hubspot.com' },
                  { name: 'Oracle', domain: 'oracle.com' }
                ].map((tech) => (
                  <Link 
                    key={tech.name}
                    href={`/technology-users/${tech.name.toLowerCase()}`}
                    className="group flex flex-col items-center space-y-2 grayscale transition-all hover:grayscale-0"
                  >
                    <div className="flex h-12 w-12 items-center justify-center rounded-xl bg-white/5 p-2 transition-colors group-hover:bg-white/10">
                      <img 
                        src={`https://img.logo.dev/${tech.domain}?token=${process.env.NEXT_PUBLIC_LOGODEV_PUBLISHABLE_KEY}&size=64`} 
                        alt={tech.name}
                        className="h-full w-full object-contain"
                      />
                    </div>
                    <span className="text-[10px] font-medium text-muted-foreground group-hover:text-white">{tech.name}</span>
                  </Link>
                ))}
              </div>
            </div>
          </motion.div>
        </div>

        {/* Social Proof */}
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 1, delay: 0.5 }}
          className="mt-24 grid grid-cols-2 gap-8 md:grid-cols-4"
        >
          <div className="flex flex-col items-center space-y-2 opacity-50 transition-opacity hover:opacity-100">
            <span className="text-3xl font-bold text-white">52,000+</span>
            <span className="text-xs uppercase tracking-widest text-muted-foreground">Technologies</span>
          </div>
          <div className="flex flex-col items-center space-y-2 opacity-50 transition-opacity hover:opacity-100">
            <span className="text-3xl font-bold text-white">12M+</span>
            <span className="text-xs uppercase tracking-widest text-muted-foreground">Companies</span>
          </div>
          <div className="flex flex-col items-center space-y-2 opacity-50 transition-opacity hover:opacity-100">
            <span className="text-3xl font-bold text-white">85M+</span>
            <span className="text-xs uppercase tracking-widest text-muted-foreground">Personas</span>
          </div>
          <div className="flex flex-col items-center space-y-2 opacity-50 transition-opacity hover:opacity-100">
            <span className="text-3xl font-bold text-white">99.8%</span>
            <span className="text-xs uppercase tracking-widest text-muted-foreground">Accuracy</span>
          </div>
        </motion.div>
      </div>
    </section>
  );
};

export default Hero;
