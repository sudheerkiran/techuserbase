"use client";

import React from 'react';
import { motion } from 'framer-motion';

interface MarketShareChartProps {
  techName: string;
  share: number;
}

export default function MarketShareChart({ techName, share }: MarketShareChartProps) {
  // Generate some semi-random competitors for context
  const competitors = [
    { name: techName, value: share, color: 'bg-primary' },
    { name: 'Competitor A', value: Math.max(5, 100 - share - 20), color: 'bg-white/20' },
    { name: 'Competitor B', value: Math.max(5, 15), color: 'bg-white/10' },
    { name: 'Others', value: Math.max(2, 5), color: 'bg-white/5' },
  ].sort((a, b) => b.value - a.value);

  return (
    <div className="space-y-6">
      <div className="flex items-center justify-between">
        <h4 className="text-sm font-semibold text-white uppercase tracking-wider">Market Penetration</h4>
        <span className="text-xs text-muted-foreground">Source: Installbase Intel 2024</span>
      </div>

      <div className="space-y-4">
        {competitors.map((item) => (
          <div key={item.name} className="space-y-2">
            <div className="flex justify-between text-xs font-medium">
              <span className={item.name === techName ? 'text-primary' : 'text-muted-foreground'}>
                {item.name}
              </span>
              <span className="text-white">{item.value}%</span>
            </div>
            <div className="h-2 w-full bg-white/5 rounded-full overflow-hidden">
              <motion.div 
                initial={{ width: 0 }}
                whileInView={{ width: `${item.value}%` }}
                viewport={{ once: true }}
                transition={{ duration: 1, ease: "easeOut" }}
                className={`h-full ${item.color} rounded-full`}
              />
            </div>
          </div>
        ))}
      </div>

      <div className="mt-8 pt-6 border-t border-white/5">
        <p className="text-xs text-muted-foreground italic">
          * {techName} currently leads the {techName.includes('Sales') ? 'CRM' : 'market'} segment with a {share}% adoption rate among enterprise customers.
        </p>
      </div>
    </div>
  );
}
