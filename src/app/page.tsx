import Header from '@/components/layout/Header';
import Footer from '@/components/layout/Footer';
import Hero from '@/components/home/Hero';
import BentoGrid from '@/components/home/BentoGrid';

export default function Home() {
  return (
    <main className="min-h-screen bg-background">
      <Header />
      <Hero />
      <BentoGrid />
      
      {/* Why Choose Us Section */}
      <section className="py-24 border-y border-white/5 bg-white/[0.01]">
        <div className="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-16 items-center">
            <div>
              <h2 className="text-3xl font-bold tracking-tight text-white sm:text-4xl mb-6">
                Intelligence that drives <br />
                <span className="text-primary">market dominance.</span>
              </h2>
              <div className="space-y-8 mt-10">
                <div className="flex gap-4">
                  <div className="mt-1 flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-primary/10">
                    <div className="h-2 w-2 rounded-full bg-primary" />
                  </div>
                  <div>
                    <h4 className="font-semibold text-white">Triple-Verified Contacts</h4>
                    <p className="text-sm text-muted-foreground mt-1">Every email is checked against live mail servers and social profiles within 24 hours of delivery.</p>
                  </div>
                </div>
                <div className="flex gap-4">
                  <div className="mt-1 flex h-10 w-10 shrink-0 items-center justify-center rounded-lg bg-primary/10">
                    <div className="h-2 w-2 rounded-full bg-primary" />
                  </div>
                  <div>
                    <h4 className="font-semibold text-white">Firmographic Depth</h4>
                    <p className="text-sm text-muted-foreground mt-1">Filter by actual spend, technology adoption date, and specific job functions (e.g. DevOps vs SecOps).</p>
                  </div>
                </div>
              </div>
            </div>
            
            <div className="glass-panel p-8 relative overflow-hidden">
              <div className="flex items-center justify-between mb-8">
                <div className="flex space-x-2">
                  <div className="h-3 w-3 rounded-full bg-red-500/50" />
                  <div className="h-3 w-3 rounded-full bg-yellow-500/50" />
                  <div className="h-3 w-3 rounded-full bg-green-500/50" />
                </div>
                <span className="text-xs font-mono text-muted-foreground">data-visualization.v1</span>
              </div>
              
              <div className="space-y-4">
                {[
                  { name: 'CRM', value: 85, color: 'bg-primary' },
                  { name: 'ERP', value: 65, color: 'bg-blue-400' },
                  { name: 'Cloud', value: 92, color: 'bg-emerald-400' },
                  { name: 'SecOps', value: 45, color: 'bg-purple-400' },
                ].map((item) => (
                  <div key={item.name} className="space-y-2">
                    <div className="flex justify-between text-xs font-medium text-white">
                      <span>{item.name} Market Share</span>
                      <span>{item.value}%</span>
                    </div>
                    <div className="h-2 w-full bg-white/5 rounded-full overflow-hidden">
                      <div 
                        className={`h-full ${item.color} rounded-full transition-all duration-1000`} 
                        style={{ width: `${item.value}%` }} 
                      />
                    </div>
                  </div>
                ))}
              </div>
              
              {/* Decorative Circle */}
              <div className="absolute -right-20 -top-20 h-64 w-64 rounded-full bg-primary/10 blur-[80px]" />
            </div>
          </div>
        </div>
      </section>

      <Footer />
    </main>
  );
}
