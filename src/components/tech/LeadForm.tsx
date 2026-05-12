"use client";

import React, { useState } from 'react';
import { Loader2, CheckCircle2 } from 'lucide-react';

interface LeadFormProps {
  techName: string;
  productId?: string;
}

export default function LeadForm({ techName, productId }: LeadFormProps) {
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [isSuccess, setIsSuccess] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const handleSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setIsSubmitting(true);
    setError(null);

    const formData = new FormData(e.currentTarget);
    const data = {
      name: formData.get('name'),
      email: formData.get('email'),
      company_name: formData.get('company'),
      job_title: formData.get('job_title'),
      requirements: formData.get('requirements'),
      product_id: productId,
    };

    try {
      const response = await fetch('/api/leads', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(data),
      });

      const result = await response.json();
      if (result.success) {
        setIsSuccess(true);
      } else {
        throw new Error(result.error || 'Failed to submit lead');
      }
    } catch (err: any) {
      setError(err.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  if (isSuccess) {
    return (
      <div className="flex flex-col items-center justify-center p-12 text-center bg-white/[0.02] rounded-3xl border border-white/10">
        <div className="h-16 w-16 bg-emerald-500/20 rounded-full flex items-center justify-center mb-6">
          <CheckCircle2 className="h-8 w-8 text-emerald-500" />
        </div>
        <h3 className="text-2xl font-bold text-white mb-2">Request Received</h3>
        <p className="text-muted-foreground">Our team will reach out with your custom {techName} list within 24 hours.</p>
      </div>
    );
  }

  return (
    <form onSubmit={handleSubmit} className="grid grid-cols-1 md:grid-cols-2 gap-4 text-left">
      <div className="space-y-2">
        <label className="text-xs font-semibold text-muted-foreground uppercase tracking-wider">Full Name</label>
        <input required name="name" type="text" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none transition-all" placeholder="John Doe" />
      </div>
      <div className="space-y-2">
        <label className="text-xs font-semibold text-muted-foreground uppercase tracking-wider">Work Email</label>
        <input required name="email" type="email" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none transition-all" placeholder="john@company.com" />
      </div>
      <div className="space-y-2">
        <label className="text-xs font-semibold text-muted-foreground uppercase tracking-wider">Company</label>
        <input name="company" type="text" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none transition-all" placeholder="Acme Inc." />
      </div>
      <div className="space-y-2">
        <label className="text-xs font-semibold text-muted-foreground uppercase tracking-wider">Job Title</label>
        <input name="job_title" type="text" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none transition-all" placeholder="VP of Sales" />
      </div>
      <div className="md:col-span-2 space-y-2">
        <label className="text-xs font-semibold text-muted-foreground uppercase tracking-wider">Custom Requirements</label>
        <textarea name="requirements" className="w-full rounded-xl border border-white/10 bg-white/5 p-4 text-white focus:border-primary focus:outline-none h-32 transition-all" placeholder={`I need ${techName} users in North America with revenue > $10M...`} />
      </div>
      
      {error && <div className="md:col-span-2 text-sm text-red-400 bg-red-400/10 p-3 rounded-lg">{error}</div>}
      
      <button 
        disabled={isSubmitting}
        className="md:col-span-2 rounded-xl bg-primary py-4 font-bold text-white transition-all hover:bg-primary/90 disabled:opacity-50 disabled:cursor-not-allowed shadow-xl shadow-primary/20 mt-4 flex items-center justify-center space-x-2"
      >
        {isSubmitting ? (
          <>
            <Loader2 className="h-5 w-5 animate-spin" />
            <span>Processing...</span>
          </>
        ) : (
          <span>Request Custom {techName} List</span>
        )}
      </button>
    </form>
  );
}
