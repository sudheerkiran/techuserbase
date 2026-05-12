/**
 * Logo utility to fetch logos from logo.dev
 * Usage: getLogoUrl('salesforce.com')
 */
export const getLogoUrl = (domain: string, size: number = 128) => {
  if (!domain) return null;
  // Using the publishable key in the URL if required by logo.dev, 
  // otherwise just the direct domain-based URL.
  // Note: Most logo.dev implementations use: img.logo.dev/domain.com?token=pk_...
  const token = process.env.NEXT_PUBLIC_LOGODEV_PUBLISHABLE_KEY;
  return `https://img.logo.dev/${domain}?token=${token}&size=${size}`;
};

/**
 * Common technology domains for taxonomy
 */
export const TECH_DOMAINS: Record<string, string> = {
  'salesforce': 'salesforce.com',
  'aws': 'aws.amazon.com',
  'quickbooks': 'quickbooks.intuit.com',
  'oracle': 'oracle.com',
  'sap': 'sap.com',
  'hubspot': 'hubspot.com',
  'microsoft-dynamics': 'dynamics.microsoft.com',
  'xero': 'xero.com',
  'freshbooks': 'freshbooks.com',
  'sage': 'sage.com',
};

export const getTechLogo = (techName: string) => {
  const slug = techName.toLowerCase().replace(/ /g, '-');
  const domain = TECH_DOMAINS[slug] || `${slug}.com`;
  return getLogoUrl(domain);
};
