import React from 'react';
import Link from 'next/link';
import { Database, Twitter, Linkedin, Github, Mail } from 'lucide-react';

const Footer = () => {
  return (
    <footer className="border-t border-white/10 bg-black pt-16 pb-8">
      <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 gap-12 lg:grid-cols-4">
          {/* Brand */}
          <div className="space-y-6">
            <Link href="/" className="flex items-center space-x-2">
              <div className="flex h-10 w-10 items-center justify-center rounded-xl bg-primary shadow-lg shadow-primary/20">
                <Database className="h-6 w-6 text-white" />
              </div>
              <span className="text-xl font-bold tracking-tight text-white">
                TechUser<span className="text-primary">Base</span>
              </span>
            </Link>
            <p className="text-sm leading-relaxed text-muted-foreground">
              Premium technology installbase intelligence and verified professional email lists for high-growth sales and marketing teams.
            </p>
            <div className="flex space-x-4">
              <Link href="#" className="text-muted-foreground transition-colors hover:text-white"><Twitter className="h-5 w-5" /></Link>
              <Link href="#" className="text-muted-foreground transition-colors hover:text-white"><Linkedin className="h-5 w-5" /></Link>
              <Link href="#" className="text-muted-foreground transition-colors hover:text-white"><Github className="h-5 w-5" /></Link>
            </div>
          </div>

          {/* Solutions */}
          <div>
            <h3 className="mb-6 text-sm font-semibold uppercase tracking-wider text-white">Solutions</h3>
            <ul className="space-y-4">
              <li><Link href="#" className="text-sm text-muted-foreground transition-colors hover:text-white">ERP Users Lists</Link></li>
              <li><Link href="#" className="text-sm text-muted-foreground transition-colors hover:text-white">CRM Decision Makers</Link></li>
              <li><Link href="#" className="text-sm text-muted-foreground transition-colors hover:text-white">Cloud Infrastructure</Link></li>
              <li><Link href="#" className="text-sm text-muted-foreground transition-colors hover:text-white">Cybersecurity Leads</Link></li>
            </ul>
          </div>

          {/* Company */}
          <div>
            <h3 className="mb-6 text-sm font-semibold uppercase tracking-wider text-white">Company</h3>
            <ul className="space-y-4">
              <li><Link href="/about" className="text-sm text-muted-foreground transition-colors hover:text-white">About Us</Link></li>
              <li><Link href="/pricing" className="text-sm text-muted-foreground transition-colors hover:text-white">Pricing</Link></li>
              <li><Link href="/contact" className="text-sm text-muted-foreground transition-colors hover:text-white">Contact</Link></li>
              <li><Link href="#" className="text-sm text-muted-foreground transition-colors hover:text-white">Privacy Policy</Link></li>
            </ul>
          </div>

          {/* Newsletter */}
          <div>
            <h3 className="mb-6 text-sm font-semibold uppercase tracking-wider text-white">Stay Updated</h3>
            <p className="mb-4 text-sm text-muted-foreground">Get the latest technology trends and market share reports.</p>
            <form className="flex space-x-2">
              <input 
                type="email" 
                placeholder="email@example.com"
                className="w-full rounded-full border border-white/10 bg-white/5 px-4 py-2 text-sm text-white placeholder:text-muted-foreground focus:border-primary focus:outline-none"
              />
              <button className="rounded-full bg-primary p-2 text-white transition-colors hover:bg-primary/90">
                <Mail className="h-5 w-5" />
              </button>
            </form>
          </div>
        </div>

        <div className="mt-16 border-t border-white/5 pt-8 text-center">
          <p className="text-xs text-muted-foreground">
            &copy; {new Date().getFullYear()} TechUserBase. All rights reserved. Built for performance and precision.
          </p>
        </div>
      </div>
    </footer>
  );
};

export default Footer;
