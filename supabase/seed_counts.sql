-- Seed counts for technologies

DO $$
DECLARE
    gen_cat_id UUID;
    gen_sub_id UUID;
BEGIN
    INSERT INTO categories (name, slug) VALUES ('Other Technologies', 'other-technologies')
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name
    RETURNING id INTO gen_cat_id;

    INSERT INTO sub_categories (category_id, name, slug) VALUES (gen_cat_id, 'General', 'general')
    ON CONFLICT (category_id, slug) DO UPDATE SET name = EXCLUDED.name
    RETURNING id INTO gen_sub_id;

    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Ariba', 'sap-ariba', 5000000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle SCM Cloud', 'oracle-scm-cloud', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kinaxis RapidResponse', 'kinaxis-rapidresponse', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blue Yonder', 'blue-yonder', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Manhattan Associates', 'manhattan-associates', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenStack', 'openstack', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix XenApp', 'citrix-xenapp', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix XenDesktop', 'citrix-xendesktop', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nutanix', 'nutanix', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VxRail', 'vxrail', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McAfee ePO', 'mcafee-epo', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symantec Endpoint Protection', 'symantec-endpoint-protection', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Falcon Insight', 'crowdstrike-falcon-insight', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Carbon Black', 'carbon-black', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualys VMDR', 'qualys-vmdr', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP HANA', 'sap-hana', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teradata Vantage', 'teradata-vantage', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vertica', 'vertica', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenplum', 'greenplum', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudera Data Platform', 'cloudera-data-platform', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PRTG Network Monitor', 'prtg-network-monitor', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zabbix', 'zabbix', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WhatsUp Gold', 'whatsup-gold', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogicMonitor', 'logicmonitor', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ScienceLogic', 'sciencelogic', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenText Content Suite', 'opentext-content-suite', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alfresco', 'alfresco', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('M-Files', 'm-files', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Egnyte', 'egnyte', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox Enterprise', 'dropbox-enterprise', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle MICROS', 'oracle-micros', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NCR Silver', 'ncr-silver', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightspeed Retail', 'lightspeed-retail', 165000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Toast POS', 'toast-pos', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify POS', 'shopify-pos', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('eClinicalWorks', 'eclinicalworks', 130000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CareCloud', 'carecloud', 40000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DrChrono', 'drchrono', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenaClinicals', 'athenaclinicals', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Practice Fusion', 'practice-fusion', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arc Browser', 'arc-browser', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dia Browser', 'dia-browser', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity Comet', 'perplexity-comet', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rabbit OS', 'rabbit-os', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mosaic AI', 'mosaic-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MotherDuck Cloud', 'motherduck-cloud', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tabular', 'tabular', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataFusion', 'datafusion', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Protect AI Radar', 'protect-ai-radar', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lakera Guard', 'lakera-guard', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rebuff AI', 'rebuff-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Invariant Labs', 'invariant-labs', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Avenue', 'avenue', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Octave', 'octave', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RevSure', 'revsure', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clari Copilot', 'clari-copilot', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Karpenter', 'karpenter', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kyverno', 'kyverno', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Open Policy Agent', 'open-policy-agent', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubescape', 'kubescape', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evidence.dev', 'evidence-dev', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Count', 'count', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hex Magic', 'hex-magic', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Narrative BI', 'narrative-bi', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('June.so', 'june-so', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Correlated', 'correlated', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Endgame Signals', 'endgame-signals', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canary Technologies', 'canary-technologies', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beam Cloud', 'beam-cloud', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Inferless', 'inferless', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Banana.dev', 'banana-dev', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replicate Enterprise', 'replicate-enterprise', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CodeSee', 'codesee', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mergify', 'mergify', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Graphite', 'graphite', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PullFlow', 'pullflow', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clerk.io', 'clerk-io', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bloomreach AI', 'bloomreach-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ViSenze', 'visenze', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coveo Commerce', 'coveo-commerce', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Attention', 'attention', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Scratchpad', 'scratchpad', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Day.ai', 'day-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleGlass', 'peopleglass', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Momentum', 'momentum', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vespa', 'vespa', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Meilisearch', 'meilisearch', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Typesense', 'typesense', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jina AI', 'jina-ai', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marqo', 'marqo', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KubeRay', 'kuberay', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SkyPilot', 'skypilot', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Run:ai', 'run-ai', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modal GPU', 'modal-gpu', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Push Security', 'push-security', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grip Security', 'grip-security', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Obsidian Security', 'obsidian-security', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Valence Security', 'valence-security', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mutiny AI', 'mutiny-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualified', 'qualified', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drift', 'drift', 50000, 210000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Navattic', 'navattic', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenMetadata', 'openmetadata', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amundsen', 'amundsen', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marquez', 'marquez', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unity Catalog', 'unity-catalog', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Caddy', 'caddy', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Traefik', 'traefik', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NGINX Gateway Fabric', 'nginx-gateway-fabric', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KEDA', 'keda', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Swarmia', 'swarmia', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DX', 'dx', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Haystack Engineering', 'haystack-engineering', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sleuth', 'sleuth', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slite AI', 'slite-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Taskade AI', 'taskade-ai', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp AI', 'clickup-ai', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fibery', 'fibery', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nosto AI', 'nosto-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Daasity', 'daasity', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Polar Analytics', 'polar-analytics', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Triple Whale AI', 'triple-whale-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic EHR', 'epic-ehr', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner', 'cerner', 27000, 350000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenahealth', 'athenahealth', 160000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NextGen Healthcare', 'nextgen-healthcare', 155000, 360000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Allscripts', 'allscripts', 180000, 480000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MEDITECH', 'meditech', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenway Health', 'greenway-health', 75000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AdvancedMD', 'advancedmd', 45000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kareo', 'kareo', 75000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dentrix', 'dentrix', 45000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenDental', 'opendental', 18000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netsmart', 'netsmart', 25000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PointClickCare', 'pointclickcare', 27000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McKesson', 'mckesson', 30000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GE Healthcare', 'ge-healthcare', 45000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Philips Healthcare', 'philips-healthcare', 35000, 310000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Siemens Healthineers', 'siemens-healthineers', 28000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Labcorp', 'labcorp', 6000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Quest Diagnostics', 'quest-diagnostics', 8500, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teladoc Health', 'teladoc-health', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amwell', 'amwell', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CA Service Desk Manager', 'ca-service-desk-manager', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BMC Remedy', 'bmc-remedy', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tivoli Monitoring', 'tivoli-monitoring', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Micro Focus Operations Manager', 'micro-focus-operations-manager', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SolarWinds NPM', 'solarwinds-npm', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BizTalk Server', 'biztalk-server', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TIBCO EMS', 'tibco-ems', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Informatica PowerCenter', 'informatica-powercenter', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle SOA Suite', 'oracle-soa-suite', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Integration Bus', 'ibm-integration-bus', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Commvault', 'commvault', 100000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veritas NetBackup', 'veritas-netbackup', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('EMC Data Domain', 'emc-data-domain', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hitachi Content Platform', 'hitachi-content-platform', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Avaya Aura', 'avaya-aura', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mitel MiVoice', 'mitel-mivoice', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Riverbed SteelHead', 'riverbed-steelhead', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arista EOS', 'arista-eos', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft HCM', 'peoplesoft-hcm', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle E-Business Suite', 'oracle-e-business-suite', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lawson ERP', 'lawson-erp', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deltek Vision', 'deltek-vision', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GE Centricity', 'ge-centricity', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner PowerChart', 'cerner-powerchart', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MEDHOST', 'medhost', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CA Automic', 'ca-automic', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Micro Focus LoadRunner', 'micro-focus-loadrunner', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitLab Self-Managed', 'gitlab-self-managed', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perforce Helix', 'perforce-helix', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Notes', 'ibm-notes', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenText Documentum', 'opentext-documentum', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Laserfiche', 'laserfiche', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OnBase', 'onbase', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netsuite SuiteCommerce', 'netsuite-suitecommerce', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Customer Experience', 'sap-customer-experience', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Retail', 'oracle-retail', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retail Pro', 'retail-pro', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk Observability', 'splunk-observability', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Honeycomb', 'honeycomb', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chronosphere', 'chronosphere', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coralogix', 'coralogix', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PagerTree', 'pagertree', 1800, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Opsgenie', 'opsgenie', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CyberArk PAM', 'cyberark-pam', 7000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BeyondTrust', 'beyondtrust', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Saviynt', 'saviynt', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Keeper Security', 'keeper-security', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('1Password Business', '1password-business', 150000, 720000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitwarden', 'bitwarden', 950000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenShift', 'openshift', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloud Foundry', 'cloud-foundry', 60000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HashiCorp Vault', 'hashicorp-vault', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Consul', 'consul', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pulumi', 'pulumi', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crossplane', 'crossplane', 85000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Kafka', 'apache-kafka', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluent', 'confluent', 50000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RabbitMQ', 'rabbitmq', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Pulsar', 'apache-pulsar', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redpanda', 'redpanda', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nosto', 'nosto', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Searchspring', 'searchspring', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CommerceTools', 'commercetools', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fabric', 'fabric', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentstack', 'contentstack', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Degreed', 'degreed', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Eightfold AI', 'eightfold-ai', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SeekOut', 'seekout', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lattice', 'lattice', 15000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Culture Amp', 'culture-amp', 7500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apollo Sales Intelligence', 'apollo-sales-intelligence', 600000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LeadIQ', 'leadiq', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cognism', 'cognism', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lusha', 'lusha', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Seamless.AI', 'seamless-ai', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Falcon', 'crowdstrike-falcon', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Okta', 'okta', 19000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Networks', 'palo-alto-networks', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zscaler', 'zscaler', 8000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fortinet', 'fortinet', 755000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Secure', 'cisco-secure', 300000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne', 'sentinelone', 11000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trend Micro', 'trend-micro', 500000, 2400000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sophos', 'sophos', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McAfee Enterprise', 'mcafee-enterprise', 300000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symantec Endpoint Security', 'symantec-endpoint-security', 250000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Proofpoint', 'proofpoint', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mimecast', 'mimecast', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudflare', 'cloudflare', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akamai', 'akamai', 25000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk', 'splunk', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Datadog', 'datadog', 320000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('New Relic', 'new-relic', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Stack', 'elastic-stack', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rapid7', 'rapid7', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable', 'tenable', 44000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualys', 'qualys', 23000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CyberArk', 'cyberark', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware Carbon Black', 'vmware-carbon-black', 18000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arctic Wolf', 'arctic-wolf', 7000, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrewAI Enterprise', 'crewai-enterprise', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangSmith', 'langsmith', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AgentOps', 'agentops', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dust', 'dust', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Relevance AI', 'relevance-ai', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lakera', 'lakera', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Protect AI', 'protect-ai', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HiddenLayer', 'hiddenlayer', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CalypsoAI', 'calypsoai', 900, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Robust Intelligence', 'robust-intelligence', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kafka Connect', 'kafka-connect', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Debezium', 'debezium', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Flink', 'apache-flink', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Materialize', 'materialize', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RisingWave', 'risingwave', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpsLevel', 'opslevel', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cortex', 'cortex', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Roadie', 'roadie', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Portainer', 'portainer', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rancher', 'rancher', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Userpilot', 'userpilot', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Appcues', 'appcues', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WalkMe', 'walkme', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pecan AI', 'pecan-ai', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('YugabyteDB', 'yugabytedb', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TiDB', 'tidb', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuestDB', 'questdb', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('InfluxDB', 'influxdb', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinecone Assistant', 'pinecone-assistant', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GraphRAG', 'graphrag', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stardog', 'stardog', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataHub', 'datahub', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modern Treasury', 'modern-treasury', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airwallex', 'airwallex', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mercury', 'mercury', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wise Platform', 'wise-platform', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Falco', 'falco', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tetragon', 'tetragon', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cilium', 'cilium', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StackRox', 'stackrox', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP S/4HANA', 'sap-s-4hana', 38000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle NetSuite', 'oracle-netsuite', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics 365', 'microsoft-dynamics-365', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coupa', 'coupa', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workiva', 'workiva', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner Millennium', 'cerner-millennium', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenaOne', 'athenaone', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeva CRM', 'veeva-crm', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fortinet FortiGate', 'fortinet-fortigate', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco SecureX', 'cisco-securex', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Informatica', 'informatica', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talend', 'talend', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fivetran', 'fivetran', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airbyte', 'airbyte', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MuleSoft', 'mulesoft', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BMC Helix', 'bmc-helix', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ManageEngine', 'manageengine', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ivanti', 'ivanti', 34000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SolarWinds', 'solarwinds', 300000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesloft', 'salesloft', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Outreach', 'outreach', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clari', 'clari', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chorus.ai', 'chorus-ai', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vertex AI', 'vertex-ai', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure AI Studio', 'azure-ai-studio', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon SageMaker', 'amazon-sagemaker', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataRobot', 'datarobot', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Asana', 'asana', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Monday.com', 'monday-com', 225000, 1500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Smartsheet', 'smartsheet', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lucidchart', 'lucidchart', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware vSphere', 'vmware-vsphere', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix', 'citrix', 400000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aruba Networks', 'aruba-networks', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Juniper Networks', 'juniper-networks', 95000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP ERP', 'sap-erp', 120000, 780000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP ECC', 'sap-ecc', 85000, 510000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP R/3', 'sap-r-3', 40000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Business One', 'sap-business-one', 80000, 300000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle ERP', 'oracle-erp', 11000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JD Edwards', 'jd-edwards', 25000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epicor ERP', 'epicor-erp', 23000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage ERP', 'sage-erp', 60000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor ERP', 'infor-erp', 68000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics 365 ERP', 'microsoft-dynamics-365-erp', 45000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics AX', 'microsoft-dynamics-ax', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics NAV', 'microsoft-dynamics-nav', 70000, 300000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks', 'quickbooks', 7000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks Online', 'quickbooks-online', 7200000, 32000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks Payments', 'quickbooks-payments', 1500000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Xero', 'xero', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FreshBooks', 'freshbooks', 30000000, 45000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage Intacct', 'sage-intacct', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage Peachtree Quantum', 'sage-peachtree-quantum', 12000, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetSuite', 'netsuite', 43000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlackLine', 'blackline', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce CRM', 'salesforce-crm', 320000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics CRM', 'microsoft-dynamics-crm', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle CRM', 'oracle-crm', 20000, 100000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP CRM', 'sap-crm', 18000, 90000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Office 365', 'microsoft-office-365', 15000000, 72000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Docs', 'google-docs', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox Business', 'dropbox-business', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Box', 'box', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evernote Teams', 'evernote-teams', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshsales', 'freshsales', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Keap', 'keap', 125000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insightly', 'insightly', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SugarCRM', 'sugarcrm', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Close CRM', 'close-crm', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WooCommerce Subscriptions', 'woocommerce-subscriptions', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopware', 'shopware', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VTEX', 'vtex', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Commerce Cloud', 'salesforce-commerce-cloud', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marketo', 'marketo', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Iterable', 'iterable', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MoEngage', 'moengage', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CleverTap', 'clevertap', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Omnisend', 'omnisend', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MariaDB', 'mariadb', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SQLite', 'sqlite', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cassandra', 'cassandra', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis Enterprise', 'redis-enterprise', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hostinger', 'hostinger', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bluehost', 'bluehost', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoDaddy Hosting', 'godaddy-hosting', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WP Engine', 'wp-engine', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom Fin', 'intercom-fin', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drift Conversational AI', 'drift-conversational-ai', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tawk.to', 'tawk-to', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Olark', 'olark', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Metabase', 'metabase', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Superset', 'apache-superset', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Domo', 'domo', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ThoughtSpot', 'thoughtspot', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure DevOps', 'azure-devops', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JFrog', 'jfrog', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sonatype Nexus', 'sonatype-nexus', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Octopus Deploy', 'octopus-deploy', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitdefender GravityZone', 'bitdefender-gravityzone', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WatchGuard', 'watchguard', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jasper AI', 'jasper-ai', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copy.ai', 'copy-ai', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Surfer SEO', 'surfer-seo', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writesonic', 'writesonic', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft 365', 'microsoft-365', 4000000, 28000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Workspace', 'google-workspace', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack', 'slack', 200000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Teams', 'microsoft-teams', 4200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoom', 'zoom', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Webex', 'cisco-webex', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion', 'notion', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlassian Jira', 'atlassian-jira', 950000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluence', 'confluence', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trello', 'trello', 2000000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp', 'clickup', 800000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify', 'shopify', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WooCommerce', 'woocommerce', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magento', 'magento', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigCommerce', 'bigcommerce', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Experience Manager', 'adobe-experience-manager', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WordPress', 'wordpress', 45000000, 180000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drupal', 'drupal', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentful', 'contentful', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sitecore', 'sitecore', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow ITSM', 'servicenow-itsm', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshservice', 'freshservice', 60000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk Support', 'zendesk-support', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cherwell', 'cherwell', 4500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenAI API', 'openai-api', 3000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure OpenAI', 'azure-openai', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AWS SageMaker', 'aws-sagemaker', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Vertex AI', 'google-vertex-ai', 90000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hugging Face', 'hugging-face', 500000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangChain', 'langchain', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon Web Services', 'amazon-web-services', 2500000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Azure', 'microsoft-azure', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Cloud Platform', 'google-cloud-platform', 1800000, 9500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('F5 BIG-IP', 'f5-big-ip', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arista Networks', 'arista-networks', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft', 'peoplesoft', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday Financial Management', 'workday-financial-management', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adaptive Insights', 'adaptive-insights', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coupa Procurement', 'coupa-procurement', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ADP Workforce Now', 'adp-workforce-now', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UKG Pro', 'ukg-pro', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ceridian Dayforce', 'ceridian-dayforce', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BambooHR', 'bamboohr', 85000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paylocity', 'paylocity', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoho CRM', 'zoho-crm', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedrive CRM', 'pipedrive-crm', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot Marketing Hub', 'hubspot-marketing-hub', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marketo Engage', 'marketo-engage', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pardot', 'pardot', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Eloqua', 'eloqua', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mailchimp', 'mailchimp', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshdesk', 'freshdesk', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow', 'servicenow', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jira Service Management', 'jira-service-management', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ManageEngine ServiceDesk', 'manageengine-servicedesk', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware ESXi', 'vmware-esxi', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix Virtual Apps', 'citrix-virtual-apps', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hyper-V', 'hyper-v', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Red Hat Enterprise Linux', 'red-hat-enterprise-linux', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ubuntu Server', 'ubuntu-server', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tableau Server', 'tableau-server', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QlikView', 'qlikview', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MicroStrategy', 'microstrategy', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP BusinessObjects', 'sap-businessobjects', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Cognos', 'ibm-cognos', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk Enterprise', 'splunk-enterprise', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM QRadar', 'ibm-qradar', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ArcSight', 'arcsight', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rapid7 InsightVM', 'rapid7-insightvm', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable Nessus', 'tenable-nessus', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva', 'canva', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Figma', 'figma', 4000000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion AI', 'notion-ai', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ActiveCampaign', 'activecampaign', 185000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constant Contact', 'constant-contact', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedrive', 'pipedrive', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox', 'dropbox', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DocuSign', 'docusign', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Calendly', 'calendly', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airtable', 'airtable', 450000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Square', 'square', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightspeed', 'lightspeed', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ShipStation', 'shipstation', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Klaviyo SMS', 'klaviyo-sms', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gusto', 'gusto', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deel', 'deel', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HiBob', 'hibob', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lever', 'lever', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('cPanel', 'cpanel', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DigitalOcean', 'digitalocean', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linode', 'linode', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudways', 'cloudways', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Help Scout', 'help-scout', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LiveChat', 'livechat', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tidio', 'tidio', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crisp', 'crisp', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('1Password', '1password', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LastPass', 'lastpass', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NordLayer', 'nordlayer', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Substack', 'substack', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beehiiv', 'beehiiv', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ConvertKit', 'convertkit', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Patreon', 'patreon', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenDevin', 'opendevin', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Devin AI', 'devin-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Open Interpreter', 'open-interpreter', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SuperAGI', 'superagi', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FlowiseAI', 'flowiseai', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talon.One', 'talon-one', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Reltio', 'reltio', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Precisely', 'precisely', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Profisee', 'profisee', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Boomi DataHub', 'boomi-datahub', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teleport Enterprise', 'teleport-enterprise', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akeyless', 'akeyless', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StrongDM Zero Trust', 'strongdm-zero-trust', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descope', 'descope', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stytch', 'stytch', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Omni', 'omni', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightdash', 'lightdash', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Preset', 'preset', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Common Room', 'common-room', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clay', 'clay', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Warmly', 'warmly', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UserGems', 'usergems', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Koala', 'koala', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Metaplane', 'metaplane', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acceldata', 'acceldata', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Observe', 'observe', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chronicle SIEM', 'chronicle-siem', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FastSpring', 'fastspring', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lemon Squeezy', 'lemon-squeezy', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Plausible Analytics', 'plausible-analytics', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pirsch', 'pirsch', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mem.ai', 'mem-ai', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Granola', 'granola', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fireflies.ai', 'fireflies-ai', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Otter.ai', 'otter-ai', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlantis', 'atlantis', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Spacelift', 'spacelift', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Terraform Cloud', 'terraform-cloud', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTofu', 'opentofu', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RingCentral', 'ringcentral', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('8x8', '8x8', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dialpad', 'dialpad', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Five9', 'five9', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Genesys Cloud', 'genesys-cloud', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jamf', 'jamf', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Intune', 'microsoft-intune', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware Workspace ONE', 'vmware-workspace-one', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kandji', 'kandji', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NinjaOne', 'ninjaone', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeam', 'veeam', 550000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rubrik', 'rubrik', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cohesity', 'cohesity', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acronis', 'acronis', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zapier', 'zapier', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Make.com', 'make-com', 650000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workato', 'workato', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Boomi', 'boomi', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tray.io', 'tray-io', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PrestaShop', 'prestashop', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenCart', 'opencart', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ecwid', 'ecwid', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoTo Webinar', 'goto-webinar', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Webex', 'webex', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hopin', 'hopin', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Livestorm', 'livestorm', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LinkedIn Recruiter', 'linkedin-recruiter', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Indeed Employer', 'indeed-employer', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SmartRecruiters', 'smartrecruiters', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('iCIMS', 'icims', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grafana', 'grafana', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prometheus', 'prometheus', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sentry', 'sentry', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Firebase', 'firebase', 4200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Supabase', 'supabase', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PlanetScale', 'planetscale', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Neon', 'neon', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub Copilot', 'github-copilot', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cursor AI', 'cursor-ai', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replit', 'replit', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bolt.new', 'bolt-new', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic MyChart', 'epic-mychart', 4500, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic Beacon', 'epic-beacon', 1800, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic Cadence', 'epic-cadence', 3000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redox', 'redox', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Innovaccer', 'innovaccer', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Komodo Health', 'komodo-health', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Health Catalyst', 'health-catalyst', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Surescripts', 'surescripts', 250000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeva Vault', 'veeva-vault', 1500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Medidata', 'medidata', 2200, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LabVantage', 'labvantage', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Benchling', 'benchling', 1400, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dotmatics', 'dotmatics', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tyler Technologies', 'tyler-technologies', 15000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenGov', 'opengov', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Granicus', 'granicus', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Accela', 'accela', 4500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Check Point', 'check-point', 100000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Imperva', 'imperva', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Barracuda', 'barracuda', 200000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KnowBe4', 'knowbe4', 65000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tanium', 'tanium', 3500, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Varonis', 'varonis', 7500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Service Cloud', 'salesforce-service-cloud', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce CPQ', 'salesforce-cpq', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mirakl', 'mirakl', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva Teams', 'canva-teams', 3500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro', 'miro', 250000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Loom', 'loom', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva Enterprise', 'canva-enterprise', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RevenueCat', 'revenuecat', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Appsflyer', 'appsflyer', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Branch', 'branch', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneSignal', 'onesignal', 950000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Island Browser', 'island-browser', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talon Security', 'talon-security', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netskope', 'netskope', 4500, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ZPA', 'zpa', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prisma Access', 'prisma-access', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NVIDIA AI Enterprise', 'nvidia-ai-enterprise', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RunPod', 'runpod', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modal', 'modal', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replicate', 'replicate', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Together AI', 'together-ai', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CockroachDB', 'cockroachdb', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TimescaleDB', 'timescaledb', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ScyllaDB', 'scylladb', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fauna', 'fauna', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nhost', 'nhost', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LiveRamp', 'liveramp', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlueConic', 'blueconic', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tealium AudienceStream', 'tealium-audiencestream', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zeta CDP', 'zeta-cdp', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Proofpoint TAP', 'proofpoint-tap', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mimecast Email Security', 'mimecast-email-security', 42000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abnormal AI', 'abnormal-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cofense', 'cofense', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Highspot', 'highspot', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Seismic', 'seismic', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mindtickle', 'mindtickle', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Allego', 'allego', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nabla', 'nabla', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abridge', 'abridge', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Suki AI', 'suki-ai', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Olive AI', 'olive-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Render', 'render', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fly.io', 'fly-io', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Railway Cloud', 'railway-cloud', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heroku', 'heroku', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coda', 'coda', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slab', 'slab', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Guru', 'guru', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ReadMe', 'readme', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Twilio', 'twilio', 320000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vonage Business', 'vonage-business', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fiserv', 'fiserv', 12000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FIS', 'fis', 20000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temenos', 'temenos', 3000, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mambu', 'mambu', 300, 6000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('nCino', 'ncino', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Plaid', 'plaid', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Square POS', 'square-pos', 4000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clover POS', 'clover-pos', 900000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopkeep', 'shopkeep', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Samsara', 'samsara', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Project44', 'project44', 1300, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FourKites', 'fourkites', 1600, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descartes', 'descartes', 26000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MercuryGate', 'mercurygate', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Opera PMS', 'oracle-opera-pms', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amadeus', 'amadeus', 19000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sabre', 'sabre', 22000, 160000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudbeds', 'cloudbeds', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mews', 'mews', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clio', 'clio', 150000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Relativity', 'relativity', 13000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Litify', 'litify', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('iManage', 'imanage', 4000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IQVIA', 'iqvia', 8500, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Phreesia', 'phreesia', 4000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Luma Health', 'luma-health', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneLogin', 'onelogin', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ping Identity', 'ping-identity', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Duo Security', 'duo-security', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Auth0', 'auth0', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cognition Devin Enterprise', 'cognition-devin-enterprise', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenHands', 'openhands', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sweep AI', 'sweep-ai', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Factory AI', 'factory-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magic.dev', 'magic-dev', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('pgvector', 'pgvector', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LanceDB', 'lancedb', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Turbopuffer', 'turbopuffer', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epsilla', 'epsilla', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nightfall AI', 'nightfall-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symmetry Systems', 'symmetry-systems', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veza', 'veza', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Astrix Security', 'astrix-security', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copy.ai GTM AI', 'copy-ai-gtm-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('11x.ai', '11x-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Artisan AI', 'artisan-ai', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pocus', 'pocus', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Endgame', 'endgame', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTelemetry Collector', 'opentelemetry-collector', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vector.dev', 'vector-dev', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fluent Bit', 'fluent-bit', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('eBPF', 'ebpf', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Decagon', 'decagon', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Maven AI Support', 'maven-ai-support', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Forethought Autoflows', 'forethought-autoflows', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kapa AI', 'kapa-ai', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Estuary', 'estuary', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tinybird', 'tinybird', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WarpStream', 'warpstream', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hydrolix', 'hydrolix', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CodeRabbit', 'coderabbit', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qodo', 'qodo', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mintlify', 'mintlify', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docusaurus', 'docusaurus', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Superhuman', 'superhuman', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shortwave', 'shortwave', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SaneBox', 'sanebox', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akiflow', 'akiflow', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constructor AI', 'constructor-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Syte', 'syte', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vue.ai', 'vue-ai', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Searchspring AI', 'searchspring-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday HCM', 'workday-hcm', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP SuccessFactors', 'sap-successfactors', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle HCM Cloud', 'oracle-hcm-cloud', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paycom', 'paycom', 37000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rippling', 'rippling', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenhouse', 'greenhouse', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cornerstone OnDemand', 'cornerstone-ondemand', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow HRSD', 'servicenow-hrsd', 9000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kronos Workforce', 'kronos-workforce', 80000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Remote.com', 'remote-com', 18000, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zenefits', 'zenefits', 11000, 58000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Namely', 'namely', 1400, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jobvite', 'jobvite', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lindy AI', 'lindy-ai', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adept ACT-1', 'adept-act-1', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aomni', 'aomni', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ema', 'ema', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sierra AI', 'sierra-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('vLLM', 'vllm', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ollama', 'ollama', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TensorRT-LLM', 'tensorrt-llm', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BentoML', 'bentoml', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ray Serve', 'ray-serve', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workato AI', 'workato-ai', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tray AI', 'tray-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tines', 'tines', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Torq', 'torq', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlinkOps', 'blinkops', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne Purple AI', 'sentinelone-purple-ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Charlotte AI', 'crowdstrike-charlotte-ai', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wiz AI', 'wiz-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Cortex XSIAM', 'palo-alto-cortex-xsiam', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Maven AGI', 'maven-agi', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Regie.ai', 'regie-ai', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lavender', 'lavender', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unify', 'unify', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trino', 'trino', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Presto', 'presto', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Druid', 'apache-druid', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinot', 'pinot', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Knative', 'knative', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenFaaS', 'openfaas', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dapr', 'dapr', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crossplane Enterprise', 'crossplane-enterprise', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MadKudu', 'madkudu', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HockeyStack', 'hockeystack', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CaliberMind', 'calibermind', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dreamdata AI', 'dreamdata-ai', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tana', 'tana', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Reflect Notes', 'reflect-notes', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Capacities', 'capacities', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anytype', 'anytype', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Siebel CRM', 'siebel-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft CRM', 'peoplesoft-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amdocs CRM', 'amdocs-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetSuite CRM', 'netsuite-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workbooks CRM', 'workbooks-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onyx CRM', 'onyx-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoldMine CRM', 'goldmine-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ACT CRM', 'act-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OnContact CRM', 'oncontact-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot CRM', 'hubspot-crm', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pivotal CRM', 'pivotal-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SalesNexus CRM', 'salesnexus-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prophet CRM', 'prophet-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TeamWox CRM', 'teamwox-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insightly CRM', 'insightly-crm', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Sales Cloud', 'salesforce-sales-cloud', 320000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Pardot', 'salesforce-pardot', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snowflake', 'snowflake', 45000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Databricks', 'databricks', 12000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MongoDB', 'mongodb', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis', 'redis', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Couchbase', 'couchbase', 700, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PostgreSQL', 'postgresql', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MySQL', 'mysql', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft SQL Server', 'microsoft-sql-server', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Database', 'oracle-database', 430000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon Redshift', 'amazon-redshift', 45000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google BigQuery', 'google-bigquery', 120000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure Synapse', 'azure-synapse', 35000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tableau', 'tableau', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Power BI', 'power-bi', 2500000, 15000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Looker', 'looker', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qlik', 'qlik', 40000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alteryx', 'alteryx', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Hadoop', 'apache-hadoop', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Spark', 'apache-spark', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubernetes', 'kubernetes', 1800000, 9500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docker', 'docker', 13000000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Terraform', 'terraform', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ansible', 'ansible', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitLab', 'gitlab', 450000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jenkins', 'jenkins', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anthropic Claude API', 'anthropic-claude-api', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cohere', 'cohere', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity API', 'perplexity-api', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinecone', 'pinecone', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weaviate', 'weaviate', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Milvus', 'milvus', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Scale AI', 'scale-ai', 5000, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weights & Biases', 'weights-biases', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MLflow', 'mlflow', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubeflow', 'kubeflow', 220000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hightouch', 'hightouch', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Census', 'census', 1500, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt', 'dbt', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Matillion', 'matillion', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hevo Data', 'hevo-data', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('People.ai', 'people-ai', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gong', 'gong', 4500, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aviso', 'aviso', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airbase', 'airbase', 4000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ramp', 'ramp', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brex', 'brex', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tipalti', 'tipalti', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zip', 'zip', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wiz', 'wiz', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lacework', 'lacework', 4500, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Orca Security', 'orca-security', 3000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abnormal Security', 'abnormal-security', 2800, 25000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Darktrace', 'darktrace', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Recharge', 'recharge', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Yotpo', 'yotpo', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gorgias', 'gorgias', 15000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Postman', 'postman', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kong Gateway', 'kong-gateway', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apigee', 'apigee', 8000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tyk', 'tyk', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hasura', 'hasura', 90000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangGraph', 'langgraph', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrewAI', 'crewai', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AutoGen', 'autogen', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Haystack', 'haystack', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LlamaIndex', 'llamaindex', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qdrant', 'qdrant', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChromaDB', 'chromadb', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis Vector Search', 'redis-vector-search', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenSearch', 'opensearch', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Neo4j', 'neo4j', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cursor', 'cursor', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Codeium', 'codeium', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tabnine', 'tabnine', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sourcegraph Cody', 'sourcegraph-cody', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Continue.dev', 'continue-dev', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubecost', 'kubecost', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Harness', 'harness', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cast AI', 'cast-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Finout', 'finout', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tailscale', 'tailscale', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teleport', 'teleport', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StrongDM', 'strongdm', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drata', 'drata', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vanta', 'vanta', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pendo', 'pendo', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heap', 'heap', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogRocket', 'logrocket', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hotjar', 'hotjar', 1200000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moveworks', 'moveworks', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kore.ai', 'kore-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writer AI Studio', 'writer-ai-studio', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Harvey AI', 'harvey-ai', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ordergroove', 'ordergroove', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bold Commerce', 'bold-commerce', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rokt', 'rokt', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constructor', 'constructor', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Humanitec', 'humanitec', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Port', 'port', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qovery', 'qovery', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Env0', 'env0', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Check Point Firewall', 'check-point-firewall', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FortiAnalyzer', 'fortianalyzer', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SonicWall', 'sonicwall', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Barracuda Networks', 'barracuda-networks', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dell PowerEdge', 'dell-poweredge', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HPE ProLiant', 'hpe-proliant', 320000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lenovo ThinkSystem', 'lenovo-thinksystem', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetApp ONTAP', 'netapp-ontap', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pure Storage FlashArray', 'pure-storage-flasharray', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SharePoint', 'sharepoint', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Exchange', 'microsoft-exchange', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Skype for Business', 'skype-for-business', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack Enterprise Grid', 'slack-enterprise-grid', 180000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paychex Flex', 'paychex-flex', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kronos Workforce Central', 'kronos-workforce-central', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Puppet Enterprise', 'puppet-enterprise', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chef Infra', 'chef-infra', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SCCM', 'sccm', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nagios', 'nagios', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Db2', 'ibm-db2', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle WebLogic', 'oracle-weblogic', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WebSphere Application Server', 'websphere-application-server', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Tomcat', 'apache-tomcat', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JBoss EAP', 'jboss-eap', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magento Commerce', 'magento-commerce', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Hybris', 'sap-hybris', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Commerce', 'oracle-commerce', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demandware', 'demandware', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigCommerce Enterprise', 'bigcommerce-enterprise', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub Enterprise', 'github-enterprise', 150000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitbucket', 'bitbucket', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CircleCI', 'circleci', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Travis CI', 'travis-ci', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PagerDuty', 'pagerduty', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snyk', 'snyk', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SonarQube', 'sonarqube', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Segment', 'segment', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom Support', 'intercom-support', 25000, 170000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gainsight', 'gainsight', 4000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Totango', 'totango', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bill.com', 'bill-com', 460000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expensify', 'expensify', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Concur', 'concur', 48000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stripe', 'stripe', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PayPal Braintree', 'paypal-braintree', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LinkedIn Sales Navigator', 'linkedin-sales-navigator', 1500000, 6500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ZoomInfo', 'zoominfo', 38000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clearbit', 'clearbit', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('6sense', '6sense', 1800, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demandbase', 'demandbase', 2500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bubble', 'bubble', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Webflow', 'webflow', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dynatrace', 'dynatrace', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AppDynamics', 'appdynamics', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Meraki', 'cisco-meraki', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ubiquiti UniFi', 'ubiquiti-unifi', 1500000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetApp', 'netapp', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pure Storage', 'pure-storage', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dell EMC', 'dell-emc', 420000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Analytics', 'google-analytics', 28000000, 95000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Analytics', 'adobe-analytics', 45000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Braze', 'braze', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Marketing Cloud', 'salesforce-marketing-cloud', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Responsys', 'oracle-responsys', 6000, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tealium', 'tealium', 1300, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('mParticle', 'mparticle', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brightcove', 'brightcove', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vimeo Enterprise', 'vimeo-enterprise', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wistia', 'wistia', 400000, 1400000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JW Player', 'jw-player', 2000000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canvas LMS', 'canvas-lms', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blackboard', 'blackboard', 4500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moodle', 'moodle', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docebo', 'docebo', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cornerstone Learning', 'cornerstone-learning', 7000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kinaxis', 'kinaxis', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor SCM', 'infor-scm', 15000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Procore', 'procore', 16000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Autodesk Construction Cloud', 'autodesk-construction-cloud', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Yardi', 'yardi', 40000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AppFolio', 'appfolio', 20000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Buildium', 'buildium', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nimble CRM', 'nimble-crm', 18000, 55000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Creatio CRM', 'creatio-crm', 7000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copper CRM', 'copper-crm', 30000, 90000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk Sell', 'zendesk-sell', 40000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Klaviyo', 'klaviyo', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brevo', 'brevo', 500000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Campaign Monitor', 'campaign-monitor', 250000, 900000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom', 'intercom', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apollo.io', 'apollo-io', 650000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fastly', 'fastly', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akamai CDN', 'akamai-cdn', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CloudFront', 'cloudfront', 950000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netlify', 'netlify', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vercel', 'vercel', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LaunchDarkly', 'launchdarkly', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PostHog', 'posthog', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amplitude', 'amplitude', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mixpanel', 'mixpanel', 65000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Braze SMS', 'braze-sms', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Leanplum', 'leanplum', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airship', 'airship', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChannelAdvisor', 'channeladvisor', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Feedonomics', 'feedonomics', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linnworks', 'linnworks', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ShipBob', 'shipbob', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shippo', 'shippo', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ada', 'ada', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Forethought', 'forethought', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kustomer', 'kustomer', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gladly', 'gladly', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sentra', 'sentra', 600, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cyera', 'cyera', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Normalyze', 'normalyze', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Securiti', 'securiti', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTelemetry', 'opentelemetry', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grafana Cloud', 'grafana-cloud', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightstep', 'lightstep', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cribl', 'cribl', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MotherDuck', 'motherduck', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DuckDB', 'duckdb', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StarRocks', 'starrocks', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snowplow', 'snowplow', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chili Piper', 'chili-piper', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot Sales Hub', 'hubspot-sales-hub', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Outreach Engage', 'outreach-engage', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hitachi Vantara', 'hitachi-vantara', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acumatica', 'acumatica', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IFS Cloud', 'ifs-cloud', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor CloudSuite', 'infor-cloudsuite', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talkdesk', 'talkdesk', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aircall', 'aircall', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Twilio Flex', 'twilio-flex', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UiPath', 'uipath', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Automation Anywhere', 'automation-anywhere', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blue Prism', 'blue-prism', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Power Automate', 'power-automate', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Cloud', 'elastic-cloud', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Algolia', 'algolia', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lucidworks', 'lucidworks', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coveo', 'coveo', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teradata', 'teradata', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qlik Sense', 'qlik-sense', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sisense', 'sisense', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Checkmarx', 'checkmarx', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veracode', 'veracode', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sucuri', 'sucuri', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Firebase Analytics', 'firebase-analytics', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coda AI', 'coda-ai', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp Brain', 'clickup-brain', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro AI', 'miro-ai', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack AI', 'slack-ai', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Copilot', 'microsoft-copilot', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jasper', 'jasper', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writer', 'writer', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Synthesia', 'synthesia', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sigma Computing', 'sigma-computing', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hex', 'hex', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mode Analytics', 'mode-analytics', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RudderStack', 'rudderstack', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Treasure Data', 'treasure-data', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Simon Data', 'simon-data', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ActionIQ', 'actioniq', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aqua Security', 'aqua-security', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sysdig', 'sysdig', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prisma Cloud', 'prisma-cloud', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('E2open', 'e2open', 5000, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QAD', 'qad', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DocuSign CLM', 'docusign-clm', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ironclad', 'ironclad', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onit', 'onit', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evisort', 'evisort', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('The Trade Desk', 'the-trade-desk', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Criteo', 'criteo', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moloco', 'moloco', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Skai', 'skai', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CloudHealth', 'cloudhealth', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apptio', 'apptio', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Flexera', 'flexera', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Spot by NetApp', 'spot-by-netapp', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Railway', 'railway', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ElevenLabs', 'elevenlabs', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deepgram', 'deepgram', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AssemblyAI', 'assemblyai', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Resemble AI', 'resemble-ai', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retell AI', 'retell-ai', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Labelbox', 'labelbox', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snorkel AI', 'snorkel-ai', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Humanloop', 'humanloop', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arize AI', 'arize-ai', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WhyLabs', 'whylabs', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Buildkite', 'buildkite', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Semaphore', 'semaphore', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ArgoCD', 'argocd', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FluxCD', 'fluxcd', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temporal', 'temporal', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NATS', 'nats', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airflow', 'airflow', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dagster', 'dagster', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prefect', 'prefect', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vitally', 'vitally', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChurnZero', 'churnzero', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Catalyst', 'catalyst', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Planhat', 'planhat', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable.io', 'tenable-io', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Axonius', 'axonius', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Armis', 'armis', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expel', 'expel', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Typeform', 'typeform', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tally', 'tally', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Attentive', 'attentive', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Postscript', 'postscript', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trigger.dev', 'trigger-dev', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Convex', 'convex', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Encore', 'encore', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temporal Cloud', 'temporal-cloud', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluence AI', 'confluence-ai', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion Enterprise', 'notion-enterprise', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slite', 'slite', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tettra', 'tettra', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weights & Biases Prompts', 'weights-biases-prompts', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Helicone', 'helicone', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Langfuse', 'langfuse', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PromptLayer', 'promptlayer', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Portkey AI Gateway', 'portkey-ai-gateway', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Iceberg', 'apache-iceberg', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Delta Lake', 'delta-lake', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Hudi', 'apache-hudi', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Starburst Galaxy', 'starburst-galaxy', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onehouse', 'onehouse', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Celonis', 'celonis', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ProcessMaker', 'processmaker', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Camunda', 'camunda', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('n8n', 'n8n', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedream', 'pipedream', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salt Security', 'salt-security', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Noname Security', 'noname-security', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wallarm', 'wallarm', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Traceable AI', 'traceable-ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FullStory AI', 'fullstory-ai', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Smartlook', 'smartlook', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Glassbox', 'glassbox', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Quantum Metric', 'quantum-metric', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sana AI', 'sana-ai', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hebbia', 'hebbia', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity Enterprise', 'perplexity-enterprise', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('You.com Enterprise', 'you-com-enterprise', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Factors.ai', 'factors-ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RB2B', 'rb2b', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vector', 'vector', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Default', 'default', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Istio', 'istio', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linkerd', 'linkerd', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Envoy Proxy', 'envoy-proxy', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kong Mesh', 'kong-mesh', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Continue Enterprise', 'continue-enterprise', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aider', 'aider', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Refact.ai', 'refact-ai', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Warp Terminal', 'warp-terminal', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kafka', 'kafka', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluent Cloud', 'confluent-cloud', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix ADC', 'citrix-adc', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NGINX', 'nginx', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HAProxy', 'haproxy', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Gemini', 'google-gemini', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Firefly', 'adobe-firefly', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva AI', 'canva-ai', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TalentLMS', 'talentlms', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lessonly', 'lessonly', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lovable', 'lovable', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retool', 'retool', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OutSystems', 'outsystems', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RocketReach', 'rocketreach', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt Core', 'dbt-core', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickHouse', 'clickhouse', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Airflow', 'apache-airflow', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insomnia', 'insomnia', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Swagger', 'swagger', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FastAPI', 'fastapi', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Node.js', 'node-js', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('React Native', 'react-native', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Flutter', 'flutter', 3200000, 15000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expo', 'expo', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SwiftUI', 'swiftui', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elasticsearch', 'elasticsearch', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Helm', 'helm', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Argo Workflows', 'argo-workflows', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Istio Service Mesh', 'istio-service-mesh', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Midjourney', 'midjourney', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Runway', 'runway', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descript', 'descript', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FullStory', 'fullstory', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crazy Egg', 'crazy-egg', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heap Analytics', 'heap-analytics', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mouseflow', 'mouseflow', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grammarly', 'grammarly', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Read AI', 'read-ai', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gamma', 'gamma', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TeamCity', 'teamcity', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitrise', 'bitrise', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Optimizely', 'optimizely', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VWO', 'vwo', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dynamic Yield', 'dynamic-yield', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ninetailed', 'ninetailed', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChatGPT Enterprise', 'chatgpt-enterprise', 220000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gemini for Workspace', 'gemini-for-workspace', 180000, 1500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Claude for Enterprise', 'claude-for-enterprise', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft 365 Copilot', 'microsoft-365-copilot', 950000, 7200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoom AI Companion', 'zoom-ai-companion', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Databricks Lakehouse', 'databricks-lakehouse', 35000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt Cloud', 'dbt-cloud', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Okta Workforce Identity', 'okta-workforce-identity', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Prisma Cloud', 'palo-alto-prisma-cloud', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zscaler Internet Access', 'zscaler-internet-access', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne Singularity', 'sentinelone-singularity', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gong Revenue Intelligence', 'gong-revenue-intelligence', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro Enterprise', 'miro-enterprise', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify Plus', 'shopify-plus', 48000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Experience Cloud', 'adobe-experience-cloud', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AWS', 'aws', 4500000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vercel Enterprise', 'vercel-enterprise', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneTrust', 'onetrust', 14000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigID', 'bigid', 2200, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Collibra', 'collibra', 1500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alation', 'alation', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Immuta', 'immuta', 700, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SailPoint', 'sailpoint', 8000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IFS ERP', 'ifs-erp', 10000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SYSPRO', 'syspro', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deltek', 'deltek', 30000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unit4', 'unit4', 4500, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epicor Kinetic', 'epicor-kinetic', 22000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jaggaer', 'jaggaer', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ivalua', 'ivalua', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Fieldglass', 'sap-fieldglass', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beeline', 'beeline', 1400, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bloomreach', 'bloomreach', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentsquare', 'contentsquare', 3500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Enterprise Search', 'elastic-enterprise-search', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Glean', 'glean', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sumo Logic', 'sumo-logic', 2200, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Exabeam', 'exabeam', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogRhythm', 'logrhythm', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Devo', 'devo', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hunters', 'hunters', 600, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Starburst', 'starburst', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dremio', 'dremio', 3500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SingleStore', 'singlestore', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow Now Assist', 'servicenow-now-assist', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Einstein', 'salesforce-einstein', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle AI', 'oracle-ai', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Joule', 'sap-joule', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Box AI', 'box-ai', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Monte Carlo', 'monte-carlo', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Datafold', 'datafold', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Great Expectations', 'great-expectations', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlan', 'atlan', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Secoda', 'secoda', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sysdig Secure', 'sysdig-secure', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aqua Trivy', 'aqua-trivy', 220000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tigera Calico', 'tigera-calico', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chainguard', 'chainguard', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snyk Container', 'snyk-container', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mutiny', 'mutiny', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('6sense Revenue AI', '6sense-revenue-ai', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dreamdata', 'dreamdata', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Triple Whale', 'triple-whale', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Northbeam', 'northbeam', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anaplan', 'anaplan', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Board', 'board', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pigment', 'pigment', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Planful', 'planful', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ON24', 'on24', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demio', 'demio', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clerk', 'clerk', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Auth.js', 'auth-js', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WorkOS', 'workos', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FusionAuth', 'fusionauth', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Backstage', 'backstage', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linear', 'linear', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Raycast', 'raycast', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chargebee', 'chargebee', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Recurly', 'recurly', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zuora', 'zuora', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paddle', 'paddle', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Analytics 4', 'google-analytics-4', 5200000, 24000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Tag Manager', 'google-tag-manager', 4800000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ahrefs', 'ahrefs', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Semrush', 'semrush', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wix', 'wix', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Squarespace', 'squarespace', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Framer', 'framer', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PayPal', 'paypal', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Meet', 'google-meet', 3800000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Discord', 'discord', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub', 'github', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk', 'zendesk', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday', 'workday', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudflare WAF', 'cloudflare-waf', 1200000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    END $$;