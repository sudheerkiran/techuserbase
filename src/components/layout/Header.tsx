"use client";

import React, { useState } from 'react';
import Link from 'next/link';
import { ChevronDown, Search, Menu, X, Database, Layers, Users, TrendingUp } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import menuData from '@/data/mega-menu.json';

const Header = () => {
  const [isOpen, setIsOpen] = useState(false);
  const [activeCategory, setActiveCategory] = useState<string | null>(null);

  const categories = Object.keys(menuData).slice(0, 5); // Show first 5 in main nav

  return (
    <header className="fixed top-0 left-0 right-0 z-50 border-b border-white/10 bg-background/80 backdrop-blur-xl">
      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="flex h-20 items-center justify-between">
          {/* Logo */}
          <div className="flex items-center">
            <Link href="/" className="flex items-center space-x-2">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-primary shadow-lg shadow-primary/20">
                <Database className="h-6 w-6 text-white" />
              </div>
              <span className="text-xl font-bold tracking-tight text-white">
                TechUser<span className="text-primary">Base</span>
              </span>
            </Link>
          </div>

          {/* Desktop Navigation */}
          <nav className="hidden lg:flex lg:items-center lg:space-x-8">
            <div className="relative group">
              <button 
                className="flex items-center space-x-1 text-sm font-medium text-muted-foreground transition-colors hover:text-white"
                onMouseEnter={() => setActiveCategory('categories')}
              >
                <span>Technologies</span>
                <ChevronDown className="h-4 w-4" />
              </button>

              {/* Mega Menu */}
              <AnimatePresence>
                {activeCategory === 'categories' && (
                  <motion.div 
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: 10 }}
                    className="absolute left-1/2 mt-4 w-[800px] -translate-x-1/2 rounded-3xl border border-white/10 bg-card p-8 shadow-2xl backdrop-blur-2xl"
                    onMouseLeave={() => setActiveCategory(null)}
                  >
                    <div className="grid grid-cols-3 gap-8">
                      {Object.entries(menuData).slice(0, 6).map(([cat, subs]) => (
                        <div key={cat} className="space-y-4">
                          <h3 className="text-sm font-semibold text-white">{cat}</h3>
                          <ul className="space-y-2">
                            {(subs as string[]).slice(0, 5).map((sub) => (
                              <li key={sub}>
                                <Link 
                                  href={`/technology-users/${cat.toLowerCase().replace(/ /g, '-')}/${sub.toLowerCase().replace(/ /g, '-')}`}
                                  className="text-sm text-muted-foreground transition-colors hover:text-primary"
                                >
                                  {sub}
                                </Link>
                              </li>
                            ))}
                          </ul>
                        </div>
                      ))}
                    </div>
                  </motion.div>
                )}
              </AnimatePresence>
            </div>

            <Link href="/pricing" className="text-sm font-medium text-muted-foreground transition-colors hover:text-white">Pricing</Link>
            <Link href="/about" className="text-sm font-medium text-muted-foreground transition-colors hover:text-white">About</Link>
          </nav>

          {/* Actions */}
          <div className="hidden lg:flex lg:items-center lg:space-x-4">
            <button className="flex h-10 w-10 items-center justify-center rounded-full text-muted-foreground transition-colors hover:bg-white/5 hover:text-white">
              <Search className="h-5 w-5" />
            </button>
            <Link 
              href="/contact" 
              className="rounded-full bg-white px-6 py-2.5 text-sm font-semibold text-black transition-all hover:bg-white/90 hover:shadow-lg hover:shadow-white/10"
            >
              Get Custom List
            </Link>
          </div>

          {/* Mobile menu button */}
          <div className="flex lg:hidden">
            <button 
              onClick={() => setIsOpen(!isOpen)}
              className="inline-flex items-center justify-center rounded-md p-2 text-muted-foreground hover:bg-white/5 hover:text-white focus:outline-none"
            >
              {isOpen ? <X className="h-6 w-6" /> : <Menu className="h-6 w-6" />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile menu */}
      <AnimatePresence>
        {isOpen && (
          <motion.div 
            initial={{ opacity: 0, height: 0 }}
            animate={{ opacity: 1, height: 'auto' }}
            exit={{ opacity: 0, height: 0 }}
            className="lg:hidden border-t border-white/10 bg-card px-4 pt-2 pb-6"
          >
            <div className="space-y-1 pt-2 pb-3">
              <Link href="/technologies" className="block rounded-md px-3 py-2 text-base font-medium text-white hover:bg-white/5">Technologies</Link>
              <Link href="/pricing" className="block rounded-md px-3 py-2 text-base font-medium text-white hover:bg-white/5">Pricing</Link>
              <Link href="/about" className="block rounded-md px-3 py-2 text-base font-medium text-white hover:bg-white/5">About</Link>
              <Link href="/contact" className="block rounded-md px-3 py-2 text-base font-medium text-primary">Get Custom List</Link>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </header>
  );
};

export default Header;
