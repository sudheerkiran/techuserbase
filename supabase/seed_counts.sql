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

    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Ariba', 'sap-ariba', 'SAP', 5000000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle SCM Cloud', 'oracle-scm-cloud', 'Oracle', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kinaxis RapidResponse', 'kinaxis-rapidresponse', 'Kinaxis', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blue Yonder', 'blue-yonder', 'Blue Yonder', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Manhattan Associates', 'manhattan-associates', 'Manhattan Associates', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenStack', 'openstack', 'OpenInfra Foundation', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix XenApp', 'citrix-xenapp', 'Cloud Software Group', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix XenDesktop', 'citrix-xendesktop', 'Cloud Software Group', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nutanix', 'nutanix', 'Nutanix', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VxRail', 'vxrail', 'Dell Technologies', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McAfee ePO', 'mcafee-epo', 'Trellix', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symantec Endpoint Protection', 'symantec-endpoint-protection', 'Broadcom', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Falcon Insight', 'crowdstrike-falcon-insight', 'CrowdStrike', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Carbon Black', 'carbon-black', 'VMware', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualys VMDR', 'qualys-vmdr', 'Qualys', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP HANA', 'sap-hana', 'SAP', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teradata Vantage', 'teradata-vantage', 'Teradata', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vertica', 'vertica', 'OpenText', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenplum', 'greenplum', 'VMware', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudera Data Platform', 'cloudera-data-platform', 'Cloudera', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PRTG Network Monitor', 'prtg-network-monitor', 'Paessler', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zabbix', 'zabbix', 'Zabbix', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WhatsUp Gold', 'whatsup-gold', 'Progress', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogicMonitor', 'logicmonitor', 'LogicMonitor', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ScienceLogic', 'sciencelogic', 'ScienceLogic', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenText Content Suite', 'opentext-content-suite', 'OpenText', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alfresco', 'alfresco', 'Hyland', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('M-Files', 'm-files', 'M-Files', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Egnyte', 'egnyte', 'Egnyte', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox Enterprise', 'dropbox-enterprise', 'Dropbox', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle MICROS', 'oracle-micros', 'Oracle', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NCR Silver', 'ncr-silver', 'NCR', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightspeed Retail', 'lightspeed-retail', 'Lightspeed', 165000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Toast POS', 'toast-pos', 'Toast', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify POS', 'shopify-pos', 'Shopify', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('eClinicalWorks', 'eclinicalworks', 'eClinicalWorks', 130000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CareCloud', 'carecloud', 'CareCloud', 40000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DrChrono', 'drchrono', 'EverHealth', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenaClinicals', 'athenaclinicals', 'athenahealth', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Practice Fusion', 'practice-fusion', 'Veradigm', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arc Browser', 'arc-browser', 'The Browser Company', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dia Browser', 'dia-browser', 'The Browser Company', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity Comet', 'perplexity-comet', 'Perplexity', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rabbit OS', 'rabbit-os', 'Rabbit', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mosaic AI', 'mosaic-ai', 'Databricks', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MotherDuck Cloud', 'motherduck-cloud', 'MotherDuck', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tabular', 'tabular', 'Databricks', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataFusion', 'datafusion', 'Apache', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Protect AI Radar', 'protect-ai-radar', 'Protect AI', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lakera Guard', 'lakera-guard', 'Lakera', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rebuff AI', 'rebuff-ai', 'Rebuff', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Invariant Labs', 'invariant-labs', 'Invariant', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Avenue', 'avenue', 'Avenue', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Octave', 'octave', 'Octave', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RevSure', 'revsure', 'RevSure', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clari Copilot', 'clari-copilot', 'Clari', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Karpenter', 'karpenter', 'AWS', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kyverno', 'kyverno', 'CNCF', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Open Policy Agent', 'open-policy-agent', 'CNCF', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubescape', 'kubescape', 'ARMO', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evidence.dev', 'evidence-dev', 'Evidence', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Count', 'count', 'Count', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hex Magic', 'hex-magic', 'Hex', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Narrative BI', 'narrative-bi', 'Narrative BI', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('June.so', 'june-so', 'June', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Correlated', 'correlated', 'Correlated', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Endgame Signals', 'endgame-signals', 'Endgame', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canary Technologies', 'canary-technologies', 'Canary', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beam Cloud', 'beam-cloud', 'Beam', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Inferless', 'inferless', 'Inferless', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Banana.dev', 'banana-dev', 'Banana', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replicate Enterprise', 'replicate-enterprise', 'Replicate', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CodeSee', 'codesee', 'CodeSee', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mergify', 'mergify', 'Mergify', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Graphite', 'graphite', 'Graphite', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PullFlow', 'pullflow', 'PullFlow', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clerk.io', 'clerk-io', 'Clerk.io', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bloomreach AI', 'bloomreach-ai', 'Bloomreach', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ViSenze', 'visenze', 'ViSenze', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coveo Commerce', 'coveo-commerce', 'Coveo', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Attention', 'attention', 'Attention', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Scratchpad', 'scratchpad', 'Scratchpad', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Day.ai', 'day-ai', 'Day.ai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleGlass', 'peopleglass', 'PeopleGlass', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Momentum', 'momentum', 'Momentum', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vespa', 'vespa', 'Yahoo', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Meilisearch', 'meilisearch', 'Meilisearch', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Typesense', 'typesense', 'Typesense', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jina AI', 'jina-ai', 'Jina AI', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marqo', 'marqo', 'Marqo', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KubeRay', 'kuberay', 'Anyscale', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SkyPilot', 'skypilot', 'SkyPilot', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Run:ai', 'run-ai', 'NVIDIA', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modal GPU', 'modal-gpu', 'Modal Labs', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Push Security', 'push-security', 'Push Security', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grip Security', 'grip-security', 'Grip', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Obsidian Security', 'obsidian-security', 'Obsidian', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Valence Security', 'valence-security', 'Valence', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mutiny AI', 'mutiny-ai', 'Mutiny', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualified', 'qualified', 'Qualified', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drift', 'drift', 'Salesloft', 50000, 210000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Navattic', 'navattic', 'Navattic', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenMetadata', 'openmetadata', 'OpenMetadata', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amundsen', 'amundsen', 'LF AI & Data', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marquez', 'marquez', 'Marquez', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unity Catalog', 'unity-catalog', 'Databricks', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Caddy', 'caddy', 'Caddy', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Traefik', 'traefik', 'Traefik Labs', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NGINX Gateway Fabric', 'nginx-gateway-fabric', 'F5', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KEDA', 'keda', 'CNCF', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Swarmia', 'swarmia', 'Swarmia', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DX', 'dx', 'DX', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Haystack Engineering', 'haystack-engineering', 'Haystack', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sleuth', 'sleuth', 'Sleuth', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slite AI', 'slite-ai', 'Slite', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Taskade AI', 'taskade-ai', 'Taskade', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp AI', 'clickup-ai', 'ClickUp', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fibery', 'fibery', 'Fibery', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nosto AI', 'nosto-ai', 'Nosto', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Daasity', 'daasity', 'Daasity', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Polar Analytics', 'polar-analytics', 'Polar', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Triple Whale AI', 'triple-whale-ai', 'Triple Whale', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic EHR', 'epic-ehr', 'Epic Systems', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner', 'cerner', 'Oracle Health', 27000, 350000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenahealth', 'athenahealth', 'athenahealth', 160000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NextGen Healthcare', 'nextgen-healthcare', 'NextGen Healthcare', 155000, 360000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Allscripts', 'allscripts', 'Veradigm', 180000, 480000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MEDITECH', 'meditech', 'MEDITECH', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenway Health', 'greenway-health', 'Greenway Health', 75000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AdvancedMD', 'advancedmd', 'AdvancedMD', 45000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kareo', 'kareo', 'Tebra', 75000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dentrix', 'dentrix', 'Henry Schein', 45000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenDental', 'opendental', 'Open Dental', 18000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netsmart', 'netsmart', 'Netsmart', 25000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PointClickCare', 'pointclickcare', 'PointClickCare', 27000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McKesson', 'mckesson', 'McKesson', 30000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GE Healthcare', 'ge-healthcare', 'GE Healthcare', 45000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Philips Healthcare', 'philips-healthcare', 'Philips', 35000, 310000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Siemens Healthineers', 'siemens-healthineers', 'Siemens', 28000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Labcorp', 'labcorp', 'Labcorp', 6000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Quest Diagnostics', 'quest-diagnostics', 'Quest Diagnostics', 8500, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teladoc Health', 'teladoc-health', 'Teladoc', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amwell', 'amwell', 'Amwell', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CA Service Desk Manager', 'ca-service-desk-manager', 'Broadcom', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BMC Remedy', 'bmc-remedy', 'BMC', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tivoli Monitoring', 'tivoli-monitoring', 'IBM', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Micro Focus Operations Manager', 'micro-focus-operations-manager', 'OpenText', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SolarWinds NPM', 'solarwinds-npm', 'SolarWinds', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BizTalk Server', 'biztalk-server', 'Microsoft', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TIBCO EMS', 'tibco-ems', 'Cloud Software Group', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Informatica PowerCenter', 'informatica-powercenter', 'Informatica', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle SOA Suite', 'oracle-soa-suite', 'Oracle', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Integration Bus', 'ibm-integration-bus', 'IBM', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Commvault', 'commvault', 'Commvault', 100000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veritas NetBackup', 'veritas-netbackup', 'Cohesity', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('EMC Data Domain', 'emc-data-domain', 'Dell Technologies', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hitachi Content Platform', 'hitachi-content-platform', 'Hitachi Vantara', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Avaya Aura', 'avaya-aura', 'Avaya', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mitel MiVoice', 'mitel-mivoice', 'Mitel', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Riverbed SteelHead', 'riverbed-steelhead', 'Riverbed', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arista EOS', 'arista-eos', 'Arista Networks', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft HCM', 'peoplesoft-hcm', 'Oracle', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle E-Business Suite', 'oracle-e-business-suite', 'Oracle', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lawson ERP', 'lawson-erp', 'Infor', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deltek Vision', 'deltek-vision', 'Deltek', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GE Centricity', 'ge-centricity', 'GE HealthCare', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner PowerChart', 'cerner-powerchart', 'Oracle Health', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MEDHOST', 'medhost', 'MEDHOST', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CA Automic', 'ca-automic', 'Broadcom', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Micro Focus LoadRunner', 'micro-focus-loadrunner', 'OpenText', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitLab Self-Managed', 'gitlab-self-managed', 'GitLab', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perforce Helix', 'perforce-helix', 'Perforce', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Notes', 'ibm-notes', 'IBM', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenText Documentum', 'opentext-documentum', 'OpenText', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Laserfiche', 'laserfiche', 'Laserfiche', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OnBase', 'onbase', 'Hyland', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netsuite SuiteCommerce', 'netsuite-suitecommerce', 'Oracle', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Customer Experience', 'sap-customer-experience', 'SAP', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Retail', 'oracle-retail', 'Oracle', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retail Pro', 'retail-pro', 'Retail Pro', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk Observability', 'splunk-observability', 'Cisco', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Honeycomb', 'honeycomb', 'Honeycomb', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chronosphere', 'chronosphere', 'Chronosphere', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coralogix', 'coralogix', 'Coralogix', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PagerTree', 'pagertree', 'PagerTree', 1800, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Opsgenie', 'opsgenie', 'Atlassian', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CyberArk PAM', 'cyberark-pam', 'CyberArk', 7000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BeyondTrust', 'beyondtrust', 'BeyondTrust', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Saviynt', 'saviynt', 'Saviynt', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Keeper Security', 'keeper-security', 'Keeper', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('1Password Business', '1password-business', '1Password', 150000, 720000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitwarden', 'bitwarden', 'Bitwarden', 950000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenShift', 'openshift', 'Red Hat', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloud Foundry', 'cloud-foundry', 'Cloud Foundry Foundation', 60000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HashiCorp Vault', 'hashicorp-vault', 'HashiCorp', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Consul', 'consul', 'HashiCorp', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pulumi', 'pulumi', 'Pulumi', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crossplane', 'crossplane', 'CNCF', 85000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Kafka', 'apache-kafka', 'Open Source', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluent', 'confluent', 'Confluent', 50000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RabbitMQ', 'rabbitmq', 'VMware', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Pulsar', 'apache-pulsar', 'StreamNative', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redpanda', 'redpanda', 'Redpanda', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nosto', 'nosto', 'Nosto', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Searchspring', 'searchspring', 'Searchspring', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CommerceTools', 'commercetools', 'CommerceTools', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fabric', 'fabric', 'Fabric', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentstack', 'contentstack', 'Contentstack', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Degreed', 'degreed', 'Degreed', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Eightfold AI', 'eightfold-ai', 'Eightfold', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SeekOut', 'seekout', 'SeekOut', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lattice', 'lattice', 'Lattice', 15000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Culture Amp', 'culture-amp', 'Culture Amp', 7500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apollo Sales Intelligence', 'apollo-sales-intelligence', 'Apollo', 600000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LeadIQ', 'leadiq', 'LeadIQ', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cognism', 'cognism', 'Cognism', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lusha', 'lusha', 'Lusha', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Seamless.AI', 'seamless-ai', 'Seamless.AI', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Falcon', 'crowdstrike-falcon', 'CrowdStrike', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Okta', 'okta', 'Okta', 19000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Networks', 'palo-alto-networks', 'Palo Alto Networks', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zscaler', 'zscaler', 'Zscaler', 8000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fortinet', 'fortinet', 'Fortinet', 755000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Secure', 'cisco-secure', 'Cisco', 300000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne', 'sentinelone', 'SentinelOne', 11000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trend Micro', 'trend-micro', 'Trend Micro', 500000, 2400000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sophos', 'sophos', 'Sophos', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('McAfee Enterprise', 'mcafee-enterprise', 'Trellix', 300000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symantec Endpoint Security', 'symantec-endpoint-security', 'Broadcom', 250000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Proofpoint', 'proofpoint', 'Proofpoint', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mimecast', 'mimecast', 'Mimecast', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudflare', 'cloudflare', 'Cloudflare', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akamai', 'akamai', 'Akamai', 25000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk', 'splunk', 'Cisco', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Datadog', 'datadog', 'Datadog', 320000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('New Relic', 'new-relic', 'New Relic', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Stack', 'elastic-stack', 'Elastic', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rapid7', 'rapid7', 'Rapid7', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable', 'tenable', 'Tenable', 44000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qualys', 'qualys', 'Qualys', 23000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CyberArk', 'cyberark', 'CyberArk', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware Carbon Black', 'vmware-carbon-black', 'VMware', 18000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arctic Wolf', 'arctic-wolf', 'Arctic Wolf', 7000, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrewAI Enterprise', 'crewai-enterprise', 'CrewAI', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangSmith', 'langsmith', 'LangChain', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AgentOps', 'agentops', 'AgentOps', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dust', 'dust', 'Dust', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Relevance AI', 'relevance-ai', 'Relevance AI', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lakera', 'lakera', 'Lakera', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Protect AI', 'protect-ai', 'Protect AI', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HiddenLayer', 'hiddenlayer', 'HiddenLayer', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CalypsoAI', 'calypsoai', 'CalypsoAI', 900, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Robust Intelligence', 'robust-intelligence', 'Cisco', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kafka Connect', 'kafka-connect', 'Apache', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Debezium', 'debezium', 'Red Hat', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Flink', 'apache-flink', 'Apache', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Materialize', 'materialize', 'Materialize', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RisingWave', 'risingwave', 'RisingWave', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpsLevel', 'opslevel', 'OpsLevel', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cortex', 'cortex', 'Cortex', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Roadie', 'roadie', 'Roadie', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Portainer', 'portainer', 'Portainer', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rancher', 'rancher', 'SUSE', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Userpilot', 'userpilot', 'Userpilot', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Appcues', 'appcues', 'Appcues', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WalkMe', 'walkme', 'WalkMe', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pecan AI', 'pecan-ai', 'Pecan', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('YugabyteDB', 'yugabytedb', 'Yugabyte', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TiDB', 'tidb', 'PingCAP', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuestDB', 'questdb', 'QuestDB', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('InfluxDB', 'influxdb', 'InfluxData', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinecone Assistant', 'pinecone-assistant', 'Pinecone', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GraphRAG', 'graphrag', 'Microsoft', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stardog', 'stardog', 'Stardog', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataHub', 'datahub', 'Acryl', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modern Treasury', 'modern-treasury', 'Modern Treasury', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airwallex', 'airwallex', 'Airwallex', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mercury', 'mercury', 'Mercury', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wise Platform', 'wise-platform', 'Wise', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Falco', 'falco', 'CNCF', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tetragon', 'tetragon', 'Isovalent', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cilium', 'cilium', 'Isovalent', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StackRox', 'stackrox', 'Red Hat', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP S/4HANA', 'sap-s-4hana', 'SAP', 38000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle NetSuite', 'oracle-netsuite', 'Oracle', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics 365', 'microsoft-dynamics-365', 'Microsoft', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coupa', 'coupa', 'Coupa', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workiva', 'workiva', 'Workiva', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cerner Millennium', 'cerner-millennium', 'Oracle Health', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('athenaOne', 'athenaone', 'athenahealth', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeva CRM', 'veeva-crm', 'Veeva', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fortinet FortiGate', 'fortinet-fortigate', 'Fortinet', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco SecureX', 'cisco-securex', 'Cisco', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Informatica', 'informatica', 'Informatica', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talend', 'talend', 'Qlik', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fivetran', 'fivetran', 'Fivetran', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airbyte', 'airbyte', 'Airbyte', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MuleSoft', 'mulesoft', 'Salesforce', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BMC Helix', 'bmc-helix', 'BMC', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ManageEngine', 'manageengine', 'Zoho', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ivanti', 'ivanti', 'Ivanti', 34000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SolarWinds', 'solarwinds', 'SolarWinds', 300000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesloft', 'salesloft', 'Salesloft', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Outreach', 'outreach', 'Outreach', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clari', 'clari', 'Clari', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chorus.ai', 'chorus-ai', 'ZoomInfo', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vertex AI', 'vertex-ai', 'Google Cloud', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure AI Studio', 'azure-ai-studio', 'Microsoft', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon SageMaker', 'amazon-sagemaker', 'AWS', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DataRobot', 'datarobot', 'DataRobot', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Asana', 'asana', 'Asana', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Monday.com', 'monday-com', 'Monday.com', 225000, 1500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Smartsheet', 'smartsheet', 'Smartsheet', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lucidchart', 'lucidchart', 'Lucid Software', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware vSphere', 'vmware-vsphere', 'VMware', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix', 'citrix', 'Cloud Software Group', 400000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aruba Networks', 'aruba-networks', 'HPE', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Juniper Networks', 'juniper-networks', 'Juniper', 95000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP ERP', 'sap-erp', 'Enterprise Estimate', 120000, 780000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP ECC', 'sap-ecc', 'Enterprise Estimate', 85000, 510000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP R/3', 'sap-r-3', 'Enterprise Estimate', 40000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Business One', 'sap-business-one', 'Enterprise Estimate', 80000, 300000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle ERP', 'oracle-erp', 'Oracle', 11000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JD Edwards', 'jd-edwards', 'Enterprise Estimate', 25000, 130000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epicor ERP', 'epicor-erp', 'Enterprise Estimate', 23000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage ERP', 'sage-erp', 'Enterprise Estimate', 60000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor ERP', 'infor-erp', 'Enterprise Estimate', 68000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics 365 ERP', 'microsoft-dynamics-365-erp', 'Microsoft', 45000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics AX', 'microsoft-dynamics-ax', 'Enterprise Estimate', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics NAV', 'microsoft-dynamics-nav', 'Enterprise Estimate', 70000, 300000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks', 'quickbooks', 'Intuit', 7000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks Online', 'quickbooks-online', 'Intuit', 7200000, 32000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QuickBooks Payments', 'quickbooks-payments', 'Intuit', 1500000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Xero', 'xero', 'Xero', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FreshBooks', 'freshbooks', 'FreshBooks', 30000000, 45000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage Intacct', 'sage-intacct', 'Sage', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sage Peachtree Quantum', 'sage-peachtree-quantum', 'Enterprise Estimate', 12000, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetSuite', 'netsuite', 'Oracle NetSuite', 43000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlackLine', 'blackline', 'BlackLine', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce CRM', 'salesforce-crm', 'Salesforce', 320000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Dynamics CRM', 'microsoft-dynamics-crm', 'Microsoft', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle CRM', 'oracle-crm', 'Oracle', 20000, 100000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP CRM', 'sap-crm', 'SAP', 18000, 90000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Office 365', 'microsoft-office-365', 'Microsoft', 15000000, 72000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Docs', 'google-docs', 'Google', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox Business', 'dropbox-business', 'Dropbox', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Box', 'box', 'Box', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evernote Teams', 'evernote-teams', 'Evernote', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshsales', 'freshsales', 'Freshworks', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Keap', 'keap', 'Keap', 125000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insightly', 'insightly', 'Unbounce', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SugarCRM', 'sugarcrm', 'SugarCRM', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Close CRM', 'close-crm', 'Close', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WooCommerce Subscriptions', 'woocommerce-subscriptions', 'Automattic', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopware', 'shopware', 'Shopware', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VTEX', 'vtex', 'VTEX', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Commerce Cloud', 'salesforce-commerce-cloud', 'Salesforce', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marketo', 'marketo', 'Adobe', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Iterable', 'iterable', 'Iterable', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MoEngage', 'moengage', 'MoEngage', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CleverTap', 'clevertap', 'CleverTap', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Omnisend', 'omnisend', 'Omnisend', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MariaDB', 'mariadb', 'MariaDB', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SQLite', 'sqlite', 'SQLite', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cassandra', 'cassandra', 'Apache', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis Enterprise', 'redis-enterprise', 'Redis', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hostinger', 'hostinger', 'Hostinger', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bluehost', 'bluehost', 'Newfold Digital', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoDaddy Hosting', 'godaddy-hosting', 'GoDaddy', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WP Engine', 'wp-engine', 'WP Engine', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom Fin', 'intercom-fin', 'Intercom', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drift Conversational AI', 'drift-conversational-ai', 'Salesloft', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tawk.to', 'tawk-to', 'tawk.to', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Olark', 'olark', 'Olark', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Metabase', 'metabase', 'Metabase', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Superset', 'apache-superset', 'Apache', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Domo', 'domo', 'Domo', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ThoughtSpot', 'thoughtspot', 'ThoughtSpot', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure DevOps', 'azure-devops', 'Microsoft', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JFrog', 'jfrog', 'JFrog', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sonatype Nexus', 'sonatype-nexus', 'Sonatype', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Octopus Deploy', 'octopus-deploy', 'Octopus Deploy', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitdefender GravityZone', 'bitdefender-gravityzone', 'Bitdefender', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WatchGuard', 'watchguard', 'WatchGuard', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jasper AI', 'jasper-ai', 'Jasper', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copy.ai', 'copy-ai', 'Copy.ai', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Surfer SEO', 'surfer-seo', 'Surfer', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writesonic', 'writesonic', 'Writesonic', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft 365', 'microsoft-365', 'Microsoft', 4000000, 28000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Workspace', 'google-workspace', 'Google', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack', 'slack', 'Salesforce', 200000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Teams', 'microsoft-teams', 'Microsoft', 4200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoom', 'zoom', 'Zoom', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Webex', 'cisco-webex', 'Cisco', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion', 'notion', 'Notion', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlassian Jira', 'atlassian-jira', 'Atlassian', 950000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluence', 'confluence', 'Atlassian', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trello', 'trello', 'Atlassian', 2000000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp', 'clickup', 'ClickUp', 800000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify', 'shopify', 'Shopify', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WooCommerce', 'woocommerce', 'Automattic', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magento', 'magento', 'Adobe', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigCommerce', 'bigcommerce', 'BigCommerce', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Experience Manager', 'adobe-experience-manager', 'Adobe', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WordPress', 'wordpress', 'Automattic', 45000000, 180000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drupal', 'drupal', 'Open Source', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentful', 'contentful', 'Contentful', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sitecore', 'sitecore', 'Sitecore', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow ITSM', 'servicenow-itsm', 'ServiceNow', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshservice', 'freshservice', 'Freshworks', 60000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk Support', 'zendesk-support', 'Zendesk', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cherwell', 'cherwell', 'Ivanti', 4500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenAI API', 'openai-api', 'OpenAI', 3000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure OpenAI', 'azure-openai', 'Microsoft', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AWS SageMaker', 'aws-sagemaker', 'AWS', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Vertex AI', 'google-vertex-ai', 'Google Cloud', 90000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hugging Face', 'hugging-face', 'Hugging Face', 500000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangChain', 'langchain', 'LangChain', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon Web Services', 'amazon-web-services', 'AWS', 2500000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Azure', 'microsoft-azure', 'Microsoft', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Cloud Platform', 'google-cloud-platform', 'Google Cloud', 1800000, 9500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('F5 BIG-IP', 'f5-big-ip', 'F5', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arista Networks', 'arista-networks', 'Arista', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft', 'peoplesoft', 'Oracle', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday Financial Management', 'workday-financial-management', 'Workday', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adaptive Insights', 'adaptive-insights', 'Workday', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coupa Procurement', 'coupa-procurement', 'Coupa', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ADP Workforce Now', 'adp-workforce-now', 'ADP', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UKG Pro', 'ukg-pro', 'UKG', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ceridian Dayforce', 'ceridian-dayforce', 'Dayforce', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BambooHR', 'bamboohr', 'BambooHR', 85000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paylocity', 'paylocity', 'Paylocity', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoho CRM', 'zoho-crm', 'Zoho', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedrive CRM', 'pipedrive-crm', 'Pipedrive', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot Marketing Hub', 'hubspot-marketing-hub', 'HubSpot', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Marketo Engage', 'marketo-engage', 'Adobe', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pardot', 'pardot', 'Salesforce', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Eloqua', 'eloqua', 'Oracle', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mailchimp', 'mailchimp', 'Intuit', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Freshdesk', 'freshdesk', 'Freshworks', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow', 'servicenow', 'ServiceNow', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jira Service Management', 'jira-service-management', 'Atlassian', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ManageEngine ServiceDesk', 'manageengine-servicedesk', 'Zoho', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware ESXi', 'vmware-esxi', 'VMware', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix Virtual Apps', 'citrix-virtual-apps', 'Cloud Software Group', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hyper-V', 'hyper-v', 'Microsoft', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Red Hat Enterprise Linux', 'red-hat-enterprise-linux', 'Red Hat', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ubuntu Server', 'ubuntu-server', 'Canonical', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tableau Server', 'tableau-server', 'Salesforce', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QlikView', 'qlikview', 'Qlik', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MicroStrategy', 'microstrategy', 'MicroStrategy', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP BusinessObjects', 'sap-businessobjects', 'SAP', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Cognos', 'ibm-cognos', 'IBM', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Splunk Enterprise', 'splunk-enterprise', 'Cisco', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM QRadar', 'ibm-qradar', 'IBM', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ArcSight', 'arcsight', 'OpenText', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rapid7 InsightVM', 'rapid7-insightvm', 'Rapid7', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable Nessus', 'tenable-nessus', 'Tenable', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva', 'canva', 'Canva', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Figma', 'figma', 'Figma', 4000000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion AI', 'notion-ai', 'Notion', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ActiveCampaign', 'activecampaign', 'ActiveCampaign', 185000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constant Contact', 'constant-contact', 'Constant Contact', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedrive', 'pipedrive', 'Pipedrive', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dropbox', 'dropbox', 'Dropbox', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DocuSign', 'docusign', 'DocuSign', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Calendly', 'calendly', 'Calendly', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airtable', 'airtable', 'Airtable', 450000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Square', 'square', 'Block', 5200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightspeed', 'lightspeed', 'Lightspeed', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ShipStation', 'shipstation', 'Auctane', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Klaviyo SMS', 'klaviyo-sms', 'Klaviyo', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gusto', 'gusto', 'Gusto', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deel', 'deel', 'Deel', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HiBob', 'hibob', 'HiBob', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lever', 'lever', 'Employ', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('cPanel', 'cpanel', 'WebPros', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DigitalOcean', 'digitalocean', 'DigitalOcean', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linode', 'linode', 'Akamai', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudways', 'cloudways', 'DigitalOcean', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Help Scout', 'help-scout', 'Help Scout', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LiveChat', 'livechat', 'Text', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tidio', 'tidio', 'Tidio', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crisp', 'crisp', 'Crisp', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('1Password', '1password', '1Password', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LastPass', 'lastpass', 'LastPass', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NordLayer', 'nordlayer', 'Nord Security', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Substack', 'substack', 'Substack', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beehiiv', 'beehiiv', 'Beehiiv', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ConvertKit', 'convertkit', 'Kit', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Patreon', 'patreon', 'Patreon', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenDevin', 'opendevin', 'OpenDevin', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Devin AI', 'devin-ai', 'Cognition', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Open Interpreter', 'open-interpreter', 'Open Interpreter', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SuperAGI', 'superagi', 'SuperAGI', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FlowiseAI', 'flowiseai', 'Flowise', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talon.One', 'talon-one', 'Talon.One', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Reltio', 'reltio', 'Reltio', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Precisely', 'precisely', 'Precisely', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Profisee', 'profisee', 'Profisee', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Boomi DataHub', 'boomi-datahub', 'Boomi', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teleport Enterprise', 'teleport-enterprise', 'Teleport', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akeyless', 'akeyless', 'Akeyless', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StrongDM Zero Trust', 'strongdm-zero-trust', 'StrongDM', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descope', 'descope', 'Descope', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stytch', 'stytch', 'Stytch', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Omni', 'omni', 'Omni Analytics', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightdash', 'lightdash', 'Lightdash', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Preset', 'preset', 'Preset', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Common Room', 'common-room', 'Common Room', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clay', 'clay', 'Clay', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Warmly', 'warmly', 'Warmly', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UserGems', 'usergems', 'UserGems', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Koala', 'koala', 'Koala', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Metaplane', 'metaplane', 'Metaplane', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acceldata', 'acceldata', 'Acceldata', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Observe', 'observe', 'Observe', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chronicle SIEM', 'chronicle-siem', 'Google Cloud', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FastSpring', 'fastspring', 'FastSpring', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lemon Squeezy', 'lemon-squeezy', 'Stripe', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Plausible Analytics', 'plausible-analytics', 'Plausible', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pirsch', 'pirsch', 'Pirsch', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mem.ai', 'mem-ai', 'Mem', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Granola', 'granola', 'Granola', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fireflies.ai', 'fireflies-ai', 'Fireflies', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Otter.ai', 'otter-ai', 'Otter', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlantis', 'atlantis', 'Runatlantis', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Spacelift', 'spacelift', 'Spacelift', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Terraform Cloud', 'terraform-cloud', 'HashiCorp', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTofu', 'opentofu', 'Linux Foundation', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RingCentral', 'ringcentral', 'RingCentral', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('8x8', '8x8', '8x8', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dialpad', 'dialpad', 'Dialpad', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Five9', 'five9', 'Five9', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Genesys Cloud', 'genesys-cloud', 'Genesys', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jamf', 'jamf', 'Jamf', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Intune', 'microsoft-intune', 'Microsoft', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VMware Workspace ONE', 'vmware-workspace-one', 'VMware', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kandji', 'kandji', 'Kandji', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NinjaOne', 'ninjaone', 'NinjaOne', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeam', 'veeam', 'Veeam', 550000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rubrik', 'rubrik', 'Rubrik', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cohesity', 'cohesity', 'Cohesity', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acronis', 'acronis', 'Acronis', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zapier', 'zapier', 'Zapier', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Make.com', 'make-com', 'Celonis', 650000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workato', 'workato', 'Workato', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Boomi', 'boomi', 'Boomi', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tray.io', 'tray-io', 'Tray.io', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PrestaShop', 'prestashop', 'PrestaShop', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenCart', 'opencart', 'OpenCart', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ecwid', 'ecwid', 'Lightspeed', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoTo Webinar', 'goto-webinar', 'GoTo', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Webex', 'webex', 'Cisco', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hopin', 'hopin', 'RingCentral', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Livestorm', 'livestorm', 'Livestorm', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LinkedIn Recruiter', 'linkedin-recruiter', 'LinkedIn', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Indeed Employer', 'indeed-employer', 'Indeed', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SmartRecruiters', 'smartrecruiters', 'SmartRecruiters', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('iCIMS', 'icims', 'iCIMS', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grafana', 'grafana', 'Grafana Labs', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prometheus', 'prometheus', 'CNCF', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sentry', 'sentry', 'Functional Software', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Firebase', 'firebase', 'Google', 4200000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Supabase', 'supabase', 'Supabase', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PlanetScale', 'planetscale', 'PlanetScale', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Neon', 'neon', 'Neon', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub Copilot', 'github-copilot', 'GitHub', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cursor AI', 'cursor-ai', 'Anysphere', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replit', 'replit', 'Replit', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bolt.new', 'bolt-new', 'StackBlitz', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic MyChart', 'epic-mychart', 'Epic Systems', 4500, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic Beacon', 'epic-beacon', 'Epic Systems', 1800, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epic Cadence', 'epic-cadence', 'Epic Systems', 3000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redox', 'redox', 'Redox', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Innovaccer', 'innovaccer', 'Innovaccer', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Komodo Health', 'komodo-health', 'Komodo Health', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Health Catalyst', 'health-catalyst', 'Health Catalyst', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Surescripts', 'surescripts', 'Surescripts', 250000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veeva Vault', 'veeva-vault', 'Veeva', 1500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Medidata', 'medidata', 'Dassault Systèmes', 2200, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LabVantage', 'labvantage', 'LabVantage', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Benchling', 'benchling', 'Benchling', 1400, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dotmatics', 'dotmatics', 'Insightful Science', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tyler Technologies', 'tyler-technologies', 'Tyler Technologies', 15000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenGov', 'opengov', 'OpenGov', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Granicus', 'granicus', 'Granicus', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Accela', 'accela', 'Accela', 4500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Check Point', 'check-point', 'Check Point', 100000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Imperva', 'imperva', 'Thales', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Barracuda', 'barracuda', 'Barracuda', 200000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('KnowBe4', 'knowbe4', 'KnowBe4', 65000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tanium', 'tanium', 'Tanium', 3500, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Varonis', 'varonis', 'Varonis', 7500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Service Cloud', 'salesforce-service-cloud', 'Salesforce', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce CPQ', 'salesforce-cpq', 'Salesforce', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mirakl', 'mirakl', 'Mirakl', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva Teams', 'canva-teams', 'Canva', 3500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro', 'miro', 'Miro', 250000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Loom', 'loom', 'Atlassian', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva Enterprise', 'canva-enterprise', 'Canva', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RevenueCat', 'revenuecat', 'RevenueCat', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Appsflyer', 'appsflyer', 'AppsFlyer', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Branch', 'branch', 'Branch', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneSignal', 'onesignal', 'OneSignal', 950000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Island Browser', 'island-browser', 'Island', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talon Security', 'talon-security', 'Palo Alto Networks', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netskope', 'netskope', 'Netskope', 4500, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ZPA', 'zpa', 'Zscaler', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prisma Access', 'prisma-access', 'Palo Alto Networks', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NVIDIA AI Enterprise', 'nvidia-ai-enterprise', 'NVIDIA', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RunPod', 'runpod', 'RunPod', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Modal', 'modal', 'Modal Labs', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Replicate', 'replicate', 'Replicate', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Together AI', 'together-ai', 'Together AI', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CockroachDB', 'cockroachdb', 'Cockroach Labs', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TimescaleDB', 'timescaledb', 'TigerData', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ScyllaDB', 'scylladb', 'ScyllaDB', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fauna', 'fauna', 'Fauna', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nhost', 'nhost', 'Nhost', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LiveRamp', 'liveramp', 'LiveRamp', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlueConic', 'blueconic', 'BlueConic', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tealium AudienceStream', 'tealium-audiencestream', 'Tealium', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zeta CDP', 'zeta-cdp', 'Zeta Global', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Proofpoint TAP', 'proofpoint-tap', 'Proofpoint', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mimecast Email Security', 'mimecast-email-security', 'Mimecast', 42000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abnormal AI', 'abnormal-ai', 'Abnormal', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cofense', 'cofense', 'Cofense', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Highspot', 'highspot', 'Highspot', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Seismic', 'seismic', 'Seismic', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mindtickle', 'mindtickle', 'Mindtickle', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Allego', 'allego', 'Allego', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nabla', 'nabla', 'Nabla', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abridge', 'abridge', 'Abridge', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Suki AI', 'suki-ai', 'Suki', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Olive AI', 'olive-ai', 'Olive', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Render', 'render', 'Render', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fly.io', 'fly-io', 'Fly.io', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Railway Cloud', 'railway-cloud', 'Railway', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heroku', 'heroku', 'Salesforce', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coda', 'coda', 'Coda', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slab', 'slab', 'Slab', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Guru', 'guru', 'Guru', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ReadMe', 'readme', 'ReadMe', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Twilio', 'twilio', 'Twilio', 320000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vonage Business', 'vonage-business', 'Ericsson', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fiserv', 'fiserv', 'Fiserv', 12000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FIS', 'fis', 'FIS', 20000, 260000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temenos', 'temenos', 'Temenos', 3000, 45000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mambu', 'mambu', 'Mambu', 300, 6000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('nCino', 'ncino', 'nCino', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Plaid', 'plaid', 'Plaid', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Square POS', 'square-pos', 'Block', 4000000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clover POS', 'clover-pos', 'Fiserv', 900000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopkeep', 'shopkeep', 'Lightspeed', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Samsara', 'samsara', 'Samsara', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Project44', 'project44', 'Project44', 1300, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FourKites', 'fourkites', 'FourKites', 1600, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descartes', 'descartes', 'Descartes', 26000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MercuryGate', 'mercurygate', 'MercuryGate', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Opera PMS', 'oracle-opera-pms', 'Oracle', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amadeus', 'amadeus', 'Amadeus', 19000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sabre', 'sabre', 'Sabre', 22000, 160000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudbeds', 'cloudbeds', 'Cloudbeds', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mews', 'mews', 'Mews', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clio', 'clio', 'Clio', 150000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Relativity', 'relativity', 'Relativity', 13000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Litify', 'litify', 'Litify', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('iManage', 'imanage', 'iManage', 4000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IQVIA', 'iqvia', 'IQVIA', 8500, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Phreesia', 'phreesia', 'Phreesia', 4000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Luma Health', 'luma-health', 'Luma Health', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneLogin', 'onelogin', 'One Identity', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ping Identity', 'ping-identity', 'Ping Identity', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Duo Security', 'duo-security', 'Cisco', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Auth0', 'auth0', 'Okta', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cognition Devin Enterprise', 'cognition-devin-enterprise', 'Cognition', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenHands', 'openhands', 'All Hands AI', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sweep AI', 'sweep-ai', 'Sweep', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Factory AI', 'factory-ai', 'Factory', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magic.dev', 'magic-dev', 'Magic', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('pgvector', 'pgvector', 'PostgreSQL', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LanceDB', 'lancedb', 'LanceDB', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Turbopuffer', 'turbopuffer', 'Turbopuffer', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epsilla', 'epsilla', 'Epsilla', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nightfall AI', 'nightfall-ai', 'Nightfall', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Symmetry Systems', 'symmetry-systems', 'Symmetry', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veza', 'veza', 'Veza', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Astrix Security', 'astrix-security', 'Astrix', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copy.ai GTM AI', 'copy-ai-gtm-ai', 'Copy.ai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('11x.ai', '11x-ai', '11x', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Artisan AI', 'artisan-ai', 'Artisan', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pocus', 'pocus', 'Pocus', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Endgame', 'endgame', 'Endgame', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTelemetry Collector', 'opentelemetry-collector', 'CNCF', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vector.dev', 'vector-dev', 'Datadog', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fluent Bit', 'fluent-bit', 'Chronosphere', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('eBPF', 'ebpf', 'Linux Foundation', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Decagon', 'decagon', 'Decagon', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Maven AI Support', 'maven-ai-support', 'Maven', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Forethought Autoflows', 'forethought-autoflows', 'Forethought', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kapa AI', 'kapa-ai', 'Kapa', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Estuary', 'estuary', 'Estuary', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tinybird', 'tinybird', 'Tinybird', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WarpStream', 'warpstream', 'WarpStream', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hydrolix', 'hydrolix', 'Hydrolix', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CodeRabbit', 'coderabbit', 'CodeRabbit', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qodo', 'qodo', 'Qodo', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mintlify', 'mintlify', 'Mintlify', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docusaurus', 'docusaurus', 'Meta', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Superhuman', 'superhuman', 'Superhuman', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shortwave', 'shortwave', 'Shortwave', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SaneBox', 'sanebox', 'SaneBox', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akiflow', 'akiflow', 'Akiflow', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constructor AI', 'constructor-ai', 'Constructor', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Syte', 'syte', 'Syte', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vue.ai', 'vue-ai', 'Mad Street Den', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Searchspring AI', 'searchspring-ai', 'Searchspring', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday HCM', 'workday-hcm', 'Workday', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP SuccessFactors', 'sap-successfactors', 'SAP', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle HCM Cloud', 'oracle-hcm-cloud', 'Oracle', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paycom', 'paycom', 'Paycom', 37000, 240000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rippling', 'rippling', 'Rippling', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Greenhouse', 'greenhouse', 'Greenhouse', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cornerstone OnDemand', 'cornerstone-ondemand', 'Cornerstone', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow HRSD', 'servicenow-hrsd', 'ServiceNow', 9000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kronos Workforce', 'kronos-workforce', 'UKG', 80000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Remote.com', 'remote-com', 'Remote', 18000, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zenefits', 'zenefits', 'TriNet', 11000, 58000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Namely', 'namely', 'Namely', 1400, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jobvite', 'jobvite', 'Employ', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lindy AI', 'lindy-ai', 'Lindy', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adept ACT-1', 'adept-act-1', 'Adept', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aomni', 'aomni', 'Aomni', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ema', 'ema', 'Ema', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sierra AI', 'sierra-ai', 'Sierra', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('vLLM', 'vllm', 'vLLM', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ollama', 'ollama', 'Ollama', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TensorRT-LLM', 'tensorrt-llm', 'NVIDIA', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BentoML', 'bentoml', 'BentoML', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ray Serve', 'ray-serve', 'Anyscale', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workato AI', 'workato-ai', 'Workato', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tray AI', 'tray-ai', 'Tray.io', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tines', 'tines', 'Tines', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Torq', 'torq', 'Torq', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BlinkOps', 'blinkops', 'BlinkOps', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne Purple AI', 'sentinelone-purple-ai', 'SentinelOne', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrowdStrike Charlotte AI', 'crowdstrike-charlotte-ai', 'CrowdStrike', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wiz AI', 'wiz-ai', 'Wiz', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Cortex XSIAM', 'palo-alto-cortex-xsiam', 'Palo Alto Networks', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Maven AGI', 'maven-agi', 'Maven', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Regie.ai', 'regie-ai', 'Regie.ai', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lavender', 'lavender', 'Lavender', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unify', 'unify', 'Unify', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trino', 'trino', 'Trino', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Presto', 'presto', 'Presto Foundation', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Druid', 'apache-druid', 'Apache', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinot', 'pinot', 'Apache', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Knative', 'knative', 'CNCF', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenFaaS', 'openfaas', 'OpenFaaS', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dapr', 'dapr', 'CNCF', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crossplane Enterprise', 'crossplane-enterprise', 'Upbound', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MadKudu', 'madkudu', 'MadKudu', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HockeyStack', 'hockeystack', 'HockeyStack', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CaliberMind', 'calibermind', 'CaliberMind', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dreamdata AI', 'dreamdata-ai', 'Dreamdata', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tana', 'tana', 'Tana', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Reflect Notes', 'reflect-notes', 'Reflect', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Capacities', 'capacities', 'Capacities', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anytype', 'anytype', 'Anytype', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Siebel CRM', 'siebel-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PeopleSoft CRM', 'peoplesoft-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amdocs CRM', 'amdocs-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetSuite CRM', 'netsuite-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workbooks CRM', 'workbooks-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onyx CRM', 'onyx-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GoldMine CRM', 'goldmine-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ACT CRM', 'act-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OnContact CRM', 'oncontact-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot CRM', 'hubspot-crm', 'From Original Sheet', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pivotal CRM', 'pivotal-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SalesNexus CRM', 'salesnexus-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prophet CRM', 'prophet-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TeamWox CRM', 'teamwox-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insightly CRM', 'insightly-crm', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Sales Cloud', 'salesforce-sales-cloud', 'From Original Sheet', 320000, 2800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Pardot', 'salesforce-pardot', 'From Original Sheet', 0, 0, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snowflake', 'snowflake', 'Snowflake', 45000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Databricks', 'databricks', 'Databricks', 12000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MongoDB', 'mongodb', 'MongoDB', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis', 'redis', 'Redis', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Couchbase', 'couchbase', 'Couchbase', 700, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PostgreSQL', 'postgresql', 'Open Source', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MySQL', 'mysql', 'Oracle', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft SQL Server', 'microsoft-sql-server', 'Microsoft', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Database', 'oracle-database', 'Oracle', 430000, 2600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amazon Redshift', 'amazon-redshift', 'AWS', 45000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google BigQuery', 'google-bigquery', 'Google Cloud', 120000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Azure Synapse', 'azure-synapse', 'Microsoft', 35000, 280000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tableau', 'tableau', 'Salesforce', 850000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Power BI', 'power-bi', 'Microsoft', 2500000, 15000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Looker', 'looker', 'Google Cloud', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qlik', 'qlik', 'Qlik', 40000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alteryx', 'alteryx', 'Alteryx', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Hadoop', 'apache-hadoop', 'Open Source', 250000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Spark', 'apache-spark', 'Open Source', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubernetes', 'kubernetes', 'Cloud Native Computing Foundation', 1800000, 9500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docker', 'docker', 'Docker', 13000000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Terraform', 'terraform', 'HashiCorp', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ansible', 'ansible', 'Red Hat', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitLab', 'gitlab', 'GitLab', 450000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jenkins', 'jenkins', 'Open Source', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anthropic Claude API', 'anthropic-claude-api', 'Anthropic', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cohere', 'cohere', 'Cohere', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity API', 'perplexity-api', 'Perplexity', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pinecone', 'pinecone', 'Pinecone', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weaviate', 'weaviate', 'Weaviate', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Milvus', 'milvus', 'Zilliz', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Scale AI', 'scale-ai', 'Scale AI', 5000, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weights & Biases', 'weights-biases', 'W&B', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MLflow', 'mlflow', 'Databricks', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubeflow', 'kubeflow', 'Kubernetes', 220000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hightouch', 'hightouch', 'Hightouch', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Census', 'census', 'Census', 1500, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt', 'dbt', 'dbt Labs', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Matillion', 'matillion', 'Matillion', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hevo Data', 'hevo-data', 'Hevo', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('People.ai', 'people-ai', 'People.ai', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gong', 'gong', 'Gong', 4500, 65000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aviso', 'aviso', 'Aviso', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airbase', 'airbase', 'Airbase', 4000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ramp', 'ramp', 'Ramp', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brex', 'brex', 'Brex', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tipalti', 'tipalti', 'Tipalti', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zip', 'zip', 'Zip', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wiz', 'wiz', 'Wiz', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lacework', 'lacework', 'Fortinet', 4500, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Orca Security', 'orca-security', 'Orca Security', 3000, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Abnormal Security', 'abnormal-security', 'Abnormal', 2800, 25000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Darktrace', 'darktrace', 'Darktrace', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Recharge', 'recharge', 'Recharge', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Yotpo', 'yotpo', 'Yotpo', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gorgias', 'gorgias', 'Gorgias', 15000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Postman', 'postman', 'Postman', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kong Gateway', 'kong-gateway', 'Kong', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apigee', 'apigee', 'Google Cloud', 8000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tyk', 'tyk', 'Tyk', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hasura', 'hasura', 'Hasura', 90000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LangGraph', 'langgraph', 'LangChain', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CrewAI', 'crewai', 'CrewAI', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AutoGen', 'autogen', 'Microsoft', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Haystack', 'haystack', 'deepset', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LlamaIndex', 'llamaindex', 'LlamaIndex', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qdrant', 'qdrant', 'Qdrant', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChromaDB', 'chromadb', 'Chroma', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Redis Vector Search', 'redis-vector-search', 'Redis', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenSearch', 'opensearch', 'OpenSearch', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Neo4j', 'neo4j', 'Neo4j', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cursor', 'cursor', 'Anysphere', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Codeium', 'codeium', 'Windsurf', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tabnine', 'tabnine', 'Tabnine', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sourcegraph Cody', 'sourcegraph-cody', 'Sourcegraph', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Continue.dev', 'continue-dev', 'Continue', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kubecost', 'kubecost', 'Kubecost', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Harness', 'harness', 'Harness', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cast AI', 'cast-ai', 'Cast AI', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Finout', 'finout', 'Finout', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tailscale', 'tailscale', 'Tailscale', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teleport', 'teleport', 'Teleport', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StrongDM', 'strongdm', 'StrongDM', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Drata', 'drata', 'Drata', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vanta', 'vanta', 'Vanta', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pendo', 'pendo', 'Pendo', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heap', 'heap', 'Contentsquare', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogRocket', 'logrocket', 'LogRocket', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hotjar', 'hotjar', 'Hotjar', 1200000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moveworks', 'moveworks', 'Moveworks', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kore.ai', 'kore-ai', 'Kore.ai', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writer AI Studio', 'writer-ai-studio', 'Writer', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Harvey AI', 'harvey-ai', 'Harvey', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ordergroove', 'ordergroove', 'Ordergroove', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bold Commerce', 'bold-commerce', 'Bold', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Rokt', 'rokt', 'Rokt', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Constructor', 'constructor', 'Constructor', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Humanitec', 'humanitec', 'Humanitec', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Port', 'port', 'Port', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qovery', 'qovery', 'Qovery', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Env0', 'env0', 'env0', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Check Point Firewall', 'check-point-firewall', 'Check Point', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FortiAnalyzer', 'fortianalyzer', 'Fortinet', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SonicWall', 'sonicwall', 'SonicWall', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Barracuda Networks', 'barracuda-networks', 'Barracuda', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dell PowerEdge', 'dell-poweredge', 'Dell Technologies', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HPE ProLiant', 'hpe-proliant', 'HPE', 320000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lenovo ThinkSystem', 'lenovo-thinksystem', 'Lenovo', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetApp ONTAP', 'netapp-ontap', 'NetApp', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pure Storage FlashArray', 'pure-storage-flasharray', 'Pure Storage', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SharePoint', 'sharepoint', 'Microsoft', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Exchange', 'microsoft-exchange', 'Microsoft', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Skype for Business', 'skype-for-business', 'Microsoft', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack Enterprise Grid', 'slack-enterprise-grid', 'Salesforce', 180000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paychex Flex', 'paychex-flex', 'Paychex', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kronos Workforce Central', 'kronos-workforce-central', 'UKG', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Puppet Enterprise', 'puppet-enterprise', 'Perforce', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chef Infra', 'chef-infra', 'Progress', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SCCM', 'sccm', 'Microsoft', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nagios', 'nagios', 'Nagios', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IBM Db2', 'ibm-db2', 'IBM', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle WebLogic', 'oracle-weblogic', 'Oracle', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WebSphere Application Server', 'websphere-application-server', 'IBM', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Tomcat', 'apache-tomcat', 'Apache', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JBoss EAP', 'jboss-eap', 'Red Hat', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Magento Commerce', 'magento-commerce', 'Adobe', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Hybris', 'sap-hybris', 'SAP', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Commerce', 'oracle-commerce', 'Oracle', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demandware', 'demandware', 'Salesforce', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigCommerce Enterprise', 'bigcommerce-enterprise', 'BigCommerce', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub Enterprise', 'github-enterprise', 'GitHub', 150000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitbucket', 'bitbucket', 'Atlassian', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CircleCI', 'circleci', 'CircleCI', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Travis CI', 'travis-ci', 'Travis CI', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PagerDuty', 'pagerduty', 'PagerDuty', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snyk', 'snyk', 'Snyk', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SonarQube', 'sonarqube', 'Sonar', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Segment', 'segment', 'Twilio', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom Support', 'intercom-support', 'Intercom', 25000, 170000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gainsight', 'gainsight', 'Gainsight', 4000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Totango', 'totango', 'Totango', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bill.com', 'bill-com', 'Bill.com', 460000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expensify', 'expensify', 'Expensify', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Concur', 'concur', 'SAP', 48000, 520000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Stripe', 'stripe', 'Stripe', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PayPal Braintree', 'paypal-braintree', 'PayPal', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LinkedIn Sales Navigator', 'linkedin-sales-navigator', 'LinkedIn', 1500000, 6500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ZoomInfo', 'zoominfo', 'ZoomInfo', 38000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clearbit', 'clearbit', 'HubSpot', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('6sense', '6sense', '6sense', 1800, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demandbase', 'demandbase', 'Demandbase', 2500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bubble', 'bubble', 'Bubble', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Webflow', 'webflow', 'Webflow', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dynatrace', 'dynatrace', 'Dynatrace', 42000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AppDynamics', 'appdynamics', 'Cisco', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cisco Meraki', 'cisco-meraki', 'Cisco', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ubiquiti UniFi', 'ubiquiti-unifi', 'Ubiquiti', 1500000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NetApp', 'netapp', 'NetApp', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pure Storage', 'pure-storage', 'Pure Storage', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dell EMC', 'dell-emc', 'Dell', 420000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Analytics', 'google-analytics', 'Google', 28000000, 95000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Analytics', 'adobe-analytics', 'Adobe', 45000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Braze', 'braze', 'Braze', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Marketing Cloud', 'salesforce-marketing-cloud', 'Salesforce', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle Responsys', 'oracle-responsys', 'Oracle', 6000, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tealium', 'tealium', 'Tealium', 1300, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('mParticle', 'mparticle', 'Rokt', 900, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brightcove', 'brightcove', 'Brightcove', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vimeo Enterprise', 'vimeo-enterprise', 'Vimeo', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wistia', 'wistia', 'Wistia', 400000, 1400000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('JW Player', 'jw-player', 'JW Player', 2000000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canvas LMS', 'canvas-lms', 'Instructure', 7000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blackboard', 'blackboard', 'Anthology', 4500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moodle', 'moodle', 'Open Source', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Docebo', 'docebo', 'Docebo', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cornerstone Learning', 'cornerstone-learning', 'Cornerstone', 7000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kinaxis', 'kinaxis', 'Kinaxis', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor SCM', 'infor-scm', 'Infor', 15000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Procore', 'procore', 'Procore', 16000, 140000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Autodesk Construction Cloud', 'autodesk-construction-cloud', 'Autodesk', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Yardi', 'yardi', 'Yardi', 40000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AppFolio', 'appfolio', 'AppFolio', 20000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Buildium', 'buildium', 'RealPage', 25000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Nimble CRM', 'nimble-crm', 'Nimble', 18000, 55000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Creatio CRM', 'creatio-crm', 'Creatio', 7000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Copper CRM', 'copper-crm', 'Copper', 30000, 90000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk Sell', 'zendesk-sell', 'Zendesk', 40000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Klaviyo', 'klaviyo', 'Klaviyo', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Brevo', 'brevo', 'Brevo', 500000, 1600000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Campaign Monitor', 'campaign-monitor', 'CM Group', 250000, 900000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Intercom', 'intercom', 'Intercom', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apollo.io', 'apollo-io', 'Apollo', 650000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Fastly', 'fastly', 'Fastly', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Akamai CDN', 'akamai-cdn', 'Akamai', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CloudFront', 'cloudfront', 'AWS', 950000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Netlify', 'netlify', 'Netlify', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vercel', 'vercel', 'Vercel', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LaunchDarkly', 'launchdarkly', 'LaunchDarkly', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PostHog', 'posthog', 'PostHog', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Amplitude', 'amplitude', 'Amplitude', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mixpanel', 'mixpanel', 'Mixpanel', 65000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Braze SMS', 'braze-sms', 'Braze', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Leanplum', 'leanplum', 'CleverTap', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airship', 'airship', 'Airship', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChannelAdvisor', 'channeladvisor', 'Rithum', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Feedonomics', 'feedonomics', 'BigCommerce', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linnworks', 'linnworks', 'Linnworks', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ShipBob', 'shipbob', 'ShipBob', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shippo', 'shippo', 'Shippo', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ada', 'ada', 'Ada', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Forethought', 'forethought', 'Forethought', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kustomer', 'kustomer', 'Meta', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gladly', 'gladly', 'Gladly', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sentra', 'sentra', 'Sentra', 600, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cyera', 'cyera', 'Cyera', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Normalyze', 'normalyze', 'Normalyze', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Securiti', 'securiti', 'Securiti', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OpenTelemetry', 'opentelemetry', 'CNCF', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grafana Cloud', 'grafana-cloud', 'Grafana Labs', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lightstep', 'lightstep', 'ServiceNow', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cribl', 'cribl', 'Cribl', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('MotherDuck', 'motherduck', 'MotherDuck', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DuckDB', 'duckdb', 'DuckDB Labs', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('StarRocks', 'starrocks', 'StarRocks', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snowplow', 'snowplow', 'Snowplow', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chili Piper', 'chili-piper', 'Chili Piper', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HubSpot Sales Hub', 'hubspot-sales-hub', 'HubSpot', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Outreach Engage', 'outreach-engage', 'Outreach', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hitachi Vantara', 'hitachi-vantara', 'Hitachi', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Acumatica', 'acumatica', 'Acumatica', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IFS Cloud', 'ifs-cloud', 'IFS', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Infor CloudSuite', 'infor-cloudsuite', 'Infor', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Talkdesk', 'talkdesk', 'Talkdesk', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aircall', 'aircall', 'Aircall', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Twilio Flex', 'twilio-flex', 'Twilio', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('UiPath', 'uipath', 'UiPath', 42000, 380000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Automation Anywhere', 'automation-anywhere', 'Automation Anywhere', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Blue Prism', 'blue-prism', 'SS&C', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Power Automate', 'power-automate', 'Microsoft', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Cloud', 'elastic-cloud', 'Elastic', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Algolia', 'algolia', 'Algolia', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lucidworks', 'lucidworks', 'Lucidworks', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coveo', 'coveo', 'Coveo', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Teradata', 'teradata', 'Teradata', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Qlik Sense', 'qlik-sense', 'Qlik', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sisense', 'sisense', 'Sisense', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Checkmarx', 'checkmarx', 'Checkmarx', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Veracode', 'veracode', 'Veracode', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sucuri', 'sucuri', 'GoDaddy', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Firebase Analytics', 'firebase-analytics', 'Google', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Coda AI', 'coda-ai', 'Coda', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickUp Brain', 'clickup-brain', 'ClickUp', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro AI', 'miro-ai', 'Miro', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slack AI', 'slack-ai', 'Salesforce', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft Copilot', 'microsoft-copilot', 'Microsoft', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jasper', 'jasper', 'Jasper', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Writer', 'writer', 'Writer', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Synthesia', 'synthesia', 'Synthesia', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sigma Computing', 'sigma-computing', 'Sigma', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hex', 'hex', 'Hex', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mode Analytics', 'mode-analytics', 'Mode', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RudderStack', 'rudderstack', 'RudderStack', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Treasure Data', 'treasure-data', 'Treasure Data', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Simon Data', 'simon-data', 'Simon Data', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ActionIQ', 'actioniq', 'Uniphore', 900, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aqua Security', 'aqua-security', 'Aqua', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sysdig', 'sysdig', 'Sysdig', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prisma Cloud', 'prisma-cloud', 'Palo Alto Networks', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('E2open', 'e2open', 'E2open', 5000, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('QAD', 'qad', 'QAD', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('DocuSign CLM', 'docusign-clm', 'DocuSign', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ironclad', 'ironclad', 'Ironclad', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onit', 'onit', 'Onit', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Evisort', 'evisort', 'Workday', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('The Trade Desk', 'the-trade-desk', 'The Trade Desk', 25000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Criteo', 'criteo', 'Criteo', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Moloco', 'moloco', 'Moloco', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Skai', 'skai', 'Skai', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('CloudHealth', 'cloudhealth', 'VMware', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apptio', 'apptio', 'IBM', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Flexera', 'flexera', 'Flexera', 45000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Spot by NetApp', 'spot-by-netapp', 'NetApp', 6000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Railway', 'railway', 'Railway', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ElevenLabs', 'elevenlabs', 'ElevenLabs', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deepgram', 'deepgram', 'Deepgram', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AssemblyAI', 'assemblyai', 'AssemblyAI', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Resemble AI', 'resemble-ai', 'Resemble AI', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retell AI', 'retell-ai', 'Retell AI', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Labelbox', 'labelbox', 'Labelbox', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snorkel AI', 'snorkel-ai', 'Snorkel AI', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Humanloop', 'humanloop', 'Humanloop', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Arize AI', 'arize-ai', 'Arize', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WhyLabs', 'whylabs', 'WhyLabs', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Buildkite', 'buildkite', 'Buildkite', 18000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Semaphore', 'semaphore', 'Semaphore', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ArgoCD', 'argocd', 'CNCF', 220000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FluxCD', 'fluxcd', 'CNCF', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temporal', 'temporal', 'Temporal', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NATS', 'nats', 'Synadia', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Airflow', 'airflow', 'Apache', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dagster', 'dagster', 'Dagster Labs', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Prefect', 'prefect', 'Prefect', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vitally', 'vitally', 'Vitally', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChurnZero', 'churnzero', 'ChurnZero', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Catalyst', 'catalyst', 'Catalyst Software', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Planhat', 'planhat', 'Planhat', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tenable.io', 'tenable-io', 'Tenable', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Axonius', 'axonius', 'Axonius', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Armis', 'armis', 'Armis', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expel', 'expel', 'Expel', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Typeform', 'typeform', 'Typeform', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tally', 'tally', 'Tally', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Attentive', 'attentive', 'Attentive', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Postscript', 'postscript', 'Postscript', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Trigger.dev', 'trigger-dev', 'Trigger.dev', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Convex', 'convex', 'Convex', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Encore', 'encore', 'Encore', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Temporal Cloud', 'temporal-cloud', 'Temporal', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluence AI', 'confluence-ai', 'Atlassian', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Notion Enterprise', 'notion-enterprise', 'Notion', 180000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Slite', 'slite', 'Slite', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tettra', 'tettra', 'Tettra', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Weights & Biases Prompts', 'weights-biases-prompts', 'Weights & Biases', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Helicone', 'helicone', 'Helicone', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Langfuse', 'langfuse', 'Langfuse', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PromptLayer', 'promptlayer', 'PromptLayer', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Portkey AI Gateway', 'portkey-ai-gateway', 'Portkey', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Iceberg', 'apache-iceberg', 'Apache', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Delta Lake', 'delta-lake', 'Databricks', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Hudi', 'apache-hudi', 'Apache', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Starburst Galaxy', 'starburst-galaxy', 'Starburst', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Onehouse', 'onehouse', 'Onehouse', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Celonis', 'celonis', 'Celonis', 4500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ProcessMaker', 'processmaker', 'ProcessMaker', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Camunda', 'camunda', 'Camunda', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('n8n', 'n8n', 'n8n', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pipedream', 'pipedream', 'Pipedream', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salt Security', 'salt-security', 'Salt Security', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Noname Security', 'noname-security', 'Akamai', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wallarm', 'wallarm', 'Wallarm', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Traceable AI', 'traceable-ai', 'Harness', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FullStory AI', 'fullstory-ai', 'FullStory', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Smartlook', 'smartlook', 'Smartlook', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Glassbox', 'glassbox', 'Glassbox', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Quantum Metric', 'quantum-metric', 'Quantum Metric', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sana AI', 'sana-ai', 'Sana', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hebbia', 'hebbia', 'Hebbia', 1200, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Perplexity Enterprise', 'perplexity-enterprise', 'Perplexity', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('You.com Enterprise', 'you-com-enterprise', 'You.com', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Factors.ai', 'factors-ai', 'Factors', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RB2B', 'rb2b', 'RB2B', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vector', 'vector', 'Vector.co', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Default', 'default', 'Default', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Istio', 'istio', 'CNCF', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linkerd', 'linkerd', 'Buoyant', 85000, 420000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Envoy Proxy', 'envoy-proxy', 'CNCF', 450000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kong Mesh', 'kong-mesh', 'Kong', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Continue Enterprise', 'continue-enterprise', 'Continue', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aider', 'aider', 'Aider', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Refact.ai', 'refact-ai', 'Refact', 35000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Warp Terminal', 'warp-terminal', 'Warp', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Kafka', 'kafka', 'Apache', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Confluent Cloud', 'confluent-cloud', 'Confluent', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Citrix ADC', 'citrix-adc', 'Cloud Software Group', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('NGINX', 'nginx', 'F5', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('HAProxy', 'haproxy', 'HAProxy Technologies', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Gemini', 'google-gemini', 'Google', 3200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Firefly', 'adobe-firefly', 'Adobe', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Canva AI', 'canva-ai', 'Canva', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TalentLMS', 'talentlms', 'Epignosis', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lessonly', 'lessonly', 'Seismic', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Lovable', 'lovable', 'Lovable', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Retool', 'retool', 'Retool', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OutSystems', 'outsystems', 'OutSystems', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('RocketReach', 'rocketreach', 'RocketReach', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt Core', 'dbt-core', 'dbt Labs', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ClickHouse', 'clickhouse', 'ClickHouse', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Apache Airflow', 'apache-airflow', 'Apache', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Insomnia', 'insomnia', 'Kong', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Swagger', 'swagger', 'SmartBear', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FastAPI', 'fastapi', 'FastAPI', 2500000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Node.js', 'node-js', 'OpenJS Foundation', 18000000, 85000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('React Native', 'react-native', 'Meta', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Flutter', 'flutter', 'Google', 3200000, 15000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Expo', 'expo', 'Expo', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SwiftUI', 'swiftui', 'Apple', 1200000, 6200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elasticsearch', 'elasticsearch', 'Elastic', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Helm', 'helm', 'CNCF', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Argo Workflows', 'argo-workflows', 'CNCF', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Istio Service Mesh', 'istio-service-mesh', 'CNCF', 350000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Midjourney', 'midjourney', 'Midjourney', 1800000, 8500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Runway', 'runway', 'Runway', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Descript', 'descript', 'Descript', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FullStory', 'fullstory', 'FullStory', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Crazy Egg', 'crazy-egg', 'Crazy Egg', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Heap Analytics', 'heap-analytics', 'Contentsquare', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mouseflow', 'mouseflow', 'Mouseflow', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Grammarly', 'grammarly', 'Grammarly', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Read AI', 'read-ai', 'Read AI', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gamma', 'gamma', 'Gamma', 850000, 4200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('TeamCity', 'teamcity', 'JetBrains', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bitrise', 'bitrise', 'Bitrise', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Optimizely', 'optimizely', 'Optimizely', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('VWO', 'vwo', 'Wingify', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dynamic Yield', 'dynamic-yield', 'Mastercard', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ninetailed', 'ninetailed', 'Contentful', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ChatGPT Enterprise', 'chatgpt-enterprise', 'OpenAI', 220000, 1800000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gemini for Workspace', 'gemini-for-workspace', 'Google', 180000, 1500000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Claude for Enterprise', 'claude-for-enterprise', 'Anthropic', 85000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Microsoft 365 Copilot', 'microsoft-365-copilot', 'Microsoft', 950000, 7200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zoom AI Companion', 'zoom-ai-companion', 'Zoom', 350000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Databricks Lakehouse', 'databricks-lakehouse', 'Databricks', 35000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('dbt Cloud', 'dbt-cloud', 'dbt Labs', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Okta Workforce Identity', 'okta-workforce-identity', 'Okta', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Palo Alto Prisma Cloud', 'palo-alto-prisma-cloud', 'Palo Alto Networks', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zscaler Internet Access', 'zscaler-internet-access', 'Zscaler', 12000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SentinelOne Singularity', 'sentinelone-singularity', 'SentinelOne', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Gong Revenue Intelligence', 'gong-revenue-intelligence', 'Gong', 8500, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Miro Enterprise', 'miro-enterprise', 'Miro', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Shopify Plus', 'shopify-plus', 'Shopify', 48000, 320000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Adobe Experience Cloud', 'adobe-experience-cloud', 'Adobe', 18000, 150000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('AWS', 'aws', 'Amazon Web Services', 4500000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Vercel Enterprise', 'vercel-enterprise', 'Vercel', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('OneTrust', 'onetrust', 'OneTrust', 14000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('BigID', 'bigid', 'BigID', 2200, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Collibra', 'collibra', 'Collibra', 1500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Alation', 'alation', 'Alation', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Immuta', 'immuta', 'Immuta', 700, 8500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SailPoint', 'sailpoint', 'SailPoint', 8000, 95000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('IFS ERP', 'ifs-erp', 'IFS', 10000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SYSPRO', 'syspro', 'SYSPRO', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Deltek', 'deltek', 'Deltek', 30000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Unit4', 'unit4', 'Unit4', 4500, 38000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Epicor Kinetic', 'epicor-kinetic', 'Epicor', 22000, 110000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Jaggaer', 'jaggaer', 'Jaggaer', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ivalua', 'ivalua', 'Ivalua', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Fieldglass', 'sap-fieldglass', 'SAP', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Beeline', 'beeline', 'Beeline', 1400, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Bloomreach', 'bloomreach', 'Bloomreach', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Contentsquare', 'contentsquare', 'Contentsquare', 3500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Elastic Enterprise Search', 'elastic-enterprise-search', 'Elastic', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Glean', 'glean', 'Glean', 1200, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sumo Logic', 'sumo-logic', 'Sumo Logic', 2200, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Exabeam', 'exabeam', 'Exabeam', 1800, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('LogRhythm', 'logrhythm', 'LogRhythm', 5000, 42000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Devo', 'devo', 'Devo', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Hunters', 'hunters', 'Hunters', 600, 6500, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Starburst', 'starburst', 'Starburst', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dremio', 'dremio', 'Dremio', 3500, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SingleStore', 'singlestore', 'SingleStore', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ServiceNow Now Assist', 'servicenow-now-assist', 'ServiceNow', 8500, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Salesforce Einstein', 'salesforce-einstein', 'Salesforce', 120000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Oracle AI', 'oracle-ai', 'Oracle', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('SAP Joule', 'sap-joule', 'SAP', 12000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Box AI', 'box-ai', 'Box', 25000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Monte Carlo', 'monte-carlo', 'Monte Carlo', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Datafold', 'datafold', 'Datafold', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Great Expectations', 'great-expectations', 'GX', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Atlan', 'atlan', 'Atlan', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Secoda', 'secoda', 'Secoda', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Sysdig Secure', 'sysdig-secure', 'Sysdig', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Aqua Trivy', 'aqua-trivy', 'Aqua', 220000, 950000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Tigera Calico', 'tigera-calico', 'Tigera', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chainguard', 'chainguard', 'Chainguard', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Snyk Container', 'snyk-container', 'Snyk', 18000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Mutiny', 'mutiny', 'Mutiny', 2500, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('6sense Revenue AI', '6sense-revenue-ai', '6sense', 1800, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Dreamdata', 'dreamdata', 'Dreamdata', 3500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Triple Whale', 'triple-whale', 'Triple Whale', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Northbeam', 'northbeam', 'Northbeam', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Anaplan', 'anaplan', 'Anaplan', 2500, 22000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Board', 'board', 'Board', 1800, 18000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Pigment', 'pigment', 'Pigment', 1200, 12000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Planful', 'planful', 'Planful', 5000, 32000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('ON24', 'on24', 'ON24', 3500, 28000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Demio', 'demio', 'Banzai', 12000, 62000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Clerk', 'clerk', 'Clerk', 120000, 620000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Auth.js', 'auth-js', 'Better Auth', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('WorkOS', 'workos', 'WorkOS', 25000, 120000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('FusionAuth', 'fusionauth', 'FusionAuth', 45000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Backstage', 'backstage', 'Spotify', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Linear', 'linear', 'Linear', 250000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Raycast', 'raycast', 'Raycast', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Chargebee', 'chargebee', 'Chargebee', 18000, 85000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Recurly', 'recurly', 'Recurly', 8500, 52000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zuora', 'zuora', 'Zuora', 12000, 72000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Paddle', 'paddle', 'Paddle', 45000, 220000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Analytics 4', 'google-analytics-4', 'Google', 5200000, 24000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Tag Manager', 'google-tag-manager', 'Google', 4800000, 22000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Ahrefs', 'ahrefs', 'Ahrefs', 420000, 2200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Semrush', 'semrush', 'Semrush', 650000, 3200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Wix', 'wix', 'Wix', 8500000, 42000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Squarespace', 'squarespace', 'Squarespace', 4200000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Framer', 'framer', 'Framer', 180000, 850000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('PayPal', 'paypal', 'PayPal', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Google Meet', 'google-meet', 'Google', 3800000, 18000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Discord', 'discord', 'Discord', 2200000, 12000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('GitHub', 'github', 'GitHub', 12000000, 52000000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Zendesk', 'zendesk', 'Zendesk', 180000, 1200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Workday', 'workday', 'Workday', 18000, 180000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    
    INSERT INTO products (name, slug, vendor, estimated_accounts, estimated_contacts, sub_category_id)
    VALUES ('Cloudflare WAF', 'cloudflare-waf', 'Cloudflare', 1200000, 5200000, gen_sub_id)
    ON CONFLICT (slug) DO UPDATE SET 
        vendor = EXCLUDED.vendor,
        estimated_accounts = EXCLUDED.estimated_accounts,
        estimated_contacts = EXCLUDED.estimated_contacts;
    END $$;