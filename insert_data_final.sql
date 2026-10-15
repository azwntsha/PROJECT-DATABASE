SET DEFINE OFF; -- done so that when there's '&' in the data, it won't be treated as a substitution variable
prompt
prompt This program will insert corrected data into all tables.
prompt Please wait....
prompt

rem ============================================================
rem   INSERT DATA IN CORRECT ORDER (parents first)
rem ============================================================

prompt Inserting data into table 'external_party' (all 20 records)...

-- P001 to P010 (original)
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P001', 'REG-NUM-1901001', 'LUNAS Defence Holdings Sdn Bhd', 'admin@lunasdefence.com.my', 'Shah Alam, Selangor', 'Ahmad Razak', '012-3456789', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P002', 'REG-NUM-2012002', 'Malaysian Maritime Enforcement Agency (MMEA)', 'info@mmea.gov.my', 'Petaling Jaya, Selangor', 'Nur Aisyah', '013-4567890', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P003', 'REG-NUM-1812003', 'OceanTech Marine Engineering Sdn Bhd', 'contact@oceantechmarine.com.my', 'Klang, Selangor', 'Lim Wei Jian', '014-5678901', 'Average');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P004', 'REG-NUM-2112004', 'Boustead Naval Systems Sdn Bhd', 'enquiry@bousteadnaval.com.my', 'Subang Jaya, Selangor', 'Siti Hajar', '016-6789012', 'Excellent');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P005', 'REG-NUM-1711005', 'Maritime Shipbuilding Consortium Malaysia', 'admin@mscmalaysia.com.my', 'Puchong, Selangor', 'Mohd Faiz', '017-7890123', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P006', 'REG-NUM-2202006', 'Royal Malaysian Coast Guard', 'operations@coastguard.gov.my', 'Cyberjaya, Selangor', 'Tan Mei Ling', '018-8901234', 'Average');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P007', 'REG-NUM-1908007', 'Neptune Marine Technology Solutions Sdn Bhd', 'support@neptunemarine.com.my', 'Kajang, Selangor', 'Ravi Kumar', '019-9012345', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P008', 'REG-NUM-2006008', 'Boustead Heavy Industries Corporation (BHIC)', 'contact@bhic.com.my', 'Ampang, Selangor', 'Wong Jia Hui', '011-1122334', 'Excellent');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P009', 'REG-NUM-1804009', 'Offshore Engineering & Energy Consortium Malaysia', 'info@offshoreenergyconsortium.com.my', 'Rawang, Selangor', 'Azlan Ismail', '012-2233445', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P010', 'REG-NUM-2307010', 'Malaysian Naval Headquarters', 'logistics@navy.mil.my', 'Serdang, Selangor', 'Nurul Syafiqah', '013-3344556', 'Excellent');

-- P011 to P020 (supplier parties – extracted from supplier table)
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P011', 'REG-NUM-1911001', 'NavalTech Marine Supplies Sdn Bhd', 'info@navaltech.com.my', 'Kuala Lumpur, Malaysia', 'Ahmad Kamal', '012-3456789', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P012', 'REG-NUM-2001002', 'Maritime Logistics Corporation', 'contact@maritimelog.com.my', 'Port Klang, Malaysia', 'Siti Zaleha', '013-4567890', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P013', 'REG-NUM-1811003', 'OceanSteel Fabricators Sdn Bhd', 'sales@oceansteel.com.my', 'Johor Bahru, Malaysia', 'Chong Wei Ming', '014-5678901', 'Average');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P014', 'REG-NUM-2110004', 'Boustead Marine Engineering', 'marine@boustead.com.my', 'Lumut, Perak', 'Raja Azman', '016-6789012', 'Excellent');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P015', 'REG-NUM-1706005', 'ShipTech Consortium', 'admin@shiptech.com.my', 'Penang, Malaysia', 'Jason Tan', '017-7890123', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P016', 'REG-NUM-2205006', 'CoastGuard Logistics Unit', 'logistics@coastguard.gov.my', 'Kuantan, Malaysia', 'Nadia Hassan', '018-8901234', 'Average');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P017', 'REG-NUM-1910007', 'Neptune Radar Systems', 'radar@neptune.com.my', 'Shah Alam, Malaysia', 'Kumar Pillai', '019-9012345', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P018', 'REG-NUM-2005008', 'BHIC Submarine Services', 'submarine@bhic.com.my', 'Lumut, Perak', 'Tengku Ahmad', '011-1122334', 'Excellent');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P019', 'REG-NUM-1811009', 'Offshore Logistics Alliance', 'offshore@ola.com.my', 'Miri, Sarawak', 'Ismail bin Ali', '012-2233445', 'Good');
insert into external_party (party_id, registration_number, company_name, company_email, company_address, contact_person, contact_number, financial_status)
values ('P020', 'REG-NUM-2312010', 'Naval Fleet Logistics', 'fleet@navy.mil.my', 'Lumut, Perak', 'Zainal Abidin', '013-3344556', 'Excellent');

prompt Inserting data into table 'department'...
-- (10 records – use your original inserts)
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D001', 'ENG', 'Engineering', 'Handles ship design, structural work, and technical engineering', 'Technical', '03-7788 1001', 'eng@lunas.gov.my', 'Engineering Block A, LUNAS Administration Complex, Lumut Naval Shipyard', 52, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D002', 'HR', 'Human Resources', 'Manages recruitment, staff welfare, and employee relations', 'Administrative', '03-7788 1002', 'hr@lunas.gov.my', 'Human Resources Tower, LUNAS Administration Complex, Lumut Naval Shipyard', 10, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D003', 'IT', 'Information Technology', 'Manages systems, cybersecurity, and internal software', 'Technical', '03-7788 1003', 'it@lunas.gov.my', 'IT & Systems Building, LUNAS Digital Operations Centre, Lumut Naval Shipyard', 25, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D004', 'FIN', 'Finance', 'Handles budgeting, payroll, and financial reporting', 'Administrative', '03-7788 1004', 'finance@lunas.gov.my', 'Finance Tower, LUNAS Administration Complex, Lumut Naval Shipyard', 27, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D005', 'OPS', 'Operations', 'Oversees shipyard operations and project execution', 'Operational', '03-7788 1005', 'ops@lunas.gov.my', 'Operations Control Centre, Main Dockyard Operations Building, Lumut Naval Shipyard', 15, 'SUSPENDED');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D006', 'PROC', 'Procurement', 'Manages supplier contracts and material purchasing', 'Administrative', '03-7788 1006', 'procurement@lunas.gov.my', 'Procurement & Supply Building, LUNAS Logistics Complex, Lumut Naval Shipyard', 13, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D007', 'QAQC', 'Quality Assurance', 'Ensures quality standards in shipbuilding and repair', 'Technical', '03-7788 1007', 'qaqc@lunas.gov.my', 'Quality Assurance Centre, Shipbuilding Inspection Facility, Lumut Naval Shipyard', 10, 'INACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D008', 'LOG', 'Logistics', 'Manages supply chain, delivery, and storage systems', 'Operational', '03-7788 1008', 'logistics@lunas.gov.my', 'Logistics Hub, Central Warehouse Complex, Lumut Naval Shipyard', 21, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D009', 'RND', 'Research & Development', 'Develops new naval technologies and innovations', 'Technical', '03-7788 1009', 'rnd@lunas.gov.my', 'Research & Development Centre, Innovation & Engineering Park, Lumut Naval Shipyard', 43, 'ACTIVE');
insert into department (department_id, department_code, department_name, department_description, department_type, department_contact_number, department_official_email, department_office_location, employee_count, department_status)
values ('D010', 'LEG', 'Legal & Compliance', 'Handles contracts, regulations, and legal affairs', 'Administrative', '03-7788 1010', 'legal@lunas.gov.my', 'Legal & Compliance Office, Corporate Governance Building, Lumut Naval Shipyard', 22, 'INACTIVE');

prompt Inserting data into table 'inventory'...
-- (20 records – use your original inserts)
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV001', 'INV-MAT-001', 'Steel Plate A36', 'Warehouse A', 12500.00, 'Marine-grade steel plate for hull construction');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV002', 'INV-MAT-002', 'Engine Gear Set', 'Warehouse B', 18500.00, 'Main propulsion engine gear components');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV003', 'INV-MAT-003', 'Radar Module X1', 'Warehouse C', 45000.00, 'Naval radar system module');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV004', 'INV-MAT-004', 'Hydraulic Pump', 'Warehouse B', 8200.00, 'Hydraulic system pump for vessel operations');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV005', 'INV-MAT-005', 'Marine Cable Set', 'Warehouse A', 1200.00, 'Electrical wiring for ship systems');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV006', 'INV-MAT-006', 'Cooling System Unit', 'Warehouse C', 15000.00, 'Engine cooling system component');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV007', 'INV-MAT-007', 'Propeller Blade', 'Warehouse D', 22000.00, 'High-strength alloy propeller blade');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV008', 'INV-MAT-008', 'Navigation Sensor', 'Warehouse C', 38000.00, 'GPS and navigation sensor unit');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV009', 'INV-MAT-009', 'Fuel Pump Assembly', 'Warehouse B', 9800.00, 'Fuel distribution system component');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV010', 'INV-MAT-010', 'Safety Helmet Set', 'Warehouse A', 150.00, 'Personal protective equipment');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV011', 'INV-EQP-011', 'Armoured Steel Cutter', 'Fabrication Bay A', 32000.00, 'Heavy-duty steel cutting equipment for hull construction');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV012', 'INV-EQP-012', 'Marine Engine Test Bench', 'Engine Workshop B', 88000.00, 'Engine diagnostics and testing system');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV013', 'INV-EQP-013', 'Naval Radar Calibration Unit', 'Radar Lab C', 120000.00, 'Radar system calibration and testing unit');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV014', 'INV-EQP-014', 'Ship Hull Hydraulic Press', 'Structural Bay A', 95000.00, 'Hydraulic press for hull shaping and assembly');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV015', 'INV-EQP-015', 'Automated Cable Laying System', 'Electrical Yard B', 54000.00, 'Automated system for ship cable installation');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV016', 'INV-EQP-016', 'Ship Cooling & HVAC Unit', 'HVAC Station C', 61000.00, 'Cooling and ventilation system for vessels');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV017', 'INV-EQP-017', 'Propeller Dynamic Balancer', 'Propulsion Lab D', 77000.00, 'Balancing system for marine propellers');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV018', 'INV-EQP-018', 'Navigation System Testing Suite', 'Navigation Center C', 110000.00, 'Testing suite for marine navigation systems');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV019', 'INV-EQP-019', 'Fuel Injection Diagnostic Analyzer', 'Engine Diagnostics B', 45000.00, 'Fuel system testing and diagnostics equipment');
insert into inventory (inventory_item_id, inventory_reference_number, item_name, storage_location, unit_cost, item_description)
values ('INV020', 'INV-EQP-020', 'Safety & Inspection Kit', 'Safety Unit A', 8000.00, 'PPE and safety inspection tools for shipyard use');

prompt Inserting data into table 'employee'...
-- (10 records – use your original inserts)
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2003150001', '900101-14-5678', 'Ahmad Razak', 'M', 'ahmad.razak@mylunas.com.my', 36, '0112345678', '0129876543', 'Project Manager', 'Active', 8500.00, DATE '2020-03-15', 'Shah Alam, Selangor', 'Shah Alam, Selangor', 'D001', 'ENG');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('1908120004', '880212-10-3344', 'Siti Hajar', 'F', 'siti.hajar@mylunas.com.my', 38, '0198769987', '0166543210', 'Finance Manager', 'Active', 7800.00, DATE '2019-08-12', 'Subang Jaya, Selangor', 'Subang Jaya, Selangor', 'D004', 'FIN');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2007060007', '910305-08-7788', 'Ravi Kumar', 'M', 'ravi@mylunas.com.my', 35, '0126542345', '0198765432', 'System Analyst', 'Active', 6500.00, DATE '2020-07-06', 'Kajang, Selangor', 'Kajang, Selangor', 'D003', 'IT');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2139140011', '850617-12-9900', 'Wong Jia Hui', 'F', 'jiahui@mylunas.com.my', 39, '0109765432', '0176655443', 'Finance Manager', 'Active', 7800.00, DATE '2019-08-12', 'Ampang, Selangor', 'Ampang, Selangor', 'D004', 'FIN');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2304030005', '920808-07-2211', 'Mohd Faiz', 'M', 'faiz@mylunas.com.my', 29, '0139876543', '0145544332', 'Site Supervisor', 'Active', 5000.00, DATE '2023-04-03', 'Puchong, Selangor', 'Puchong, Selangor', 'D005', 'OPS');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2111180006', '870909-05-4455', 'Tan Mei Ling', 'F', 'meiling@mylunas.com.my', 33, '0147869955', '0165522334', 'Procurement Officer', 'Active', 4800.00, DATE '2021-11-18', 'Cyberjaya, Selangor', 'Cyberjaya, Selangor', 'D006', 'PROC');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2201200003', '930111-03-6677', 'Lim Wei Jian', 'M', 'weijian@mylunas.com.my', 31, '0152343554', '0187766554', 'Software Engineer', 'Active', 6200.00, DATE '2022-01-20', 'Klang, Selangor', 'Klang, Selangor', 'D003', 'IT');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2402010008', '860223-09-8899', 'Nurul Syafiqah', 'F', 'syafiqah@mylunas.com.my', 27, '0167778238', '0156677889', 'Administrative Assistant', 'Active', 3200.00, DATE '2024-02-01', 'Serdang, Selangor', 'Serdang, Selangor', 'D002', 'HR');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('1806250009', '900404-11-1122', 'Azlan Ismail', 'M', 'azlan@mylunas.com.my', 39, '0179921006', '0182233445', 'Operations Manager', 'Active', 9200.00, DATE '2018-06-25', 'Rawang, Selangor', 'Rawang, Selangor', 'D005', 'OPS');
insert into employee (employee_id, employee_nric, employee_name, employee_gender, employee_email_address, employee_age, employee_contact_number, employee_emergency_contact, employee_job_position, employment_status, employee_salary, employee_hire_date, employee_home_address, employee_mailing_address, department_id, department_code)
values ('2209140010', '940505-02-5566', 'Nur Aisyah', 'F', 'aisyah@mylunas.com.my', 30, '0189901243', '0198877665', 'Accountant', 'Active', 5500.00, DATE '2022-09-14', 'Petaling Jaya, Selangor', 'Petaling Jaya, Selangor', 'D004', 'FIN');

prompt Inserting data into table 'client'...
-- (10 records – use your original inserts)
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C001', 'GLC-DEF-4821', 'Government Linked Company', 'Defence', 'Naval Vessel Construction', DATE '2026-05-15', 3, 'Active', 'Platinum', 8500000.00, 'Yes', 45000000.00, 'P001', 'REG-NUM-1901001');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C002', 'GOV-MDE-1934', 'Government Agency', 'Maritime Defence', 'Ship Repair & Maintenance', DATE '2026-06-01', 5, 'Active', 'Gold', 6200000.00, 'Yes', 32000000.00, 'P002', 'REG-NUM-2012002');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C003', 'PVT-MRE-7712', 'Private Limited', 'Marine Engineering', 'Hull Fabrication', DATE '2026-04-20', 2, 'Active', 'Silver', 1800000.00, 'Yes', 15000000.00, 'P003', 'REG-NUM-1812003');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C004', 'GLC-DEF-5603', 'Government Linked Company', 'Defence', 'Offshore Patrol Vessel Upgrade', DATE '2026-06-10', 4, 'Active', 'Platinum', 9200000.00, 'Yes', 50000000.00, 'P004', 'REG-NUM-2112004');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C005', 'CON-SHB-2291', 'Consortium', 'Shipbuilding', 'Engine Overhaul Services', DATE '2026-05-28', 6, 'Active', 'Gold', 7500000.00, 'Yes', 38000000.00, 'P005', 'REG-NUM-1711005');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C006', 'GOV-CGD-8045', 'Government Agency', 'Coast Guard', 'Vessel Refitting', DATE '2026-05-08', 3, 'Inactive', 'Silver', 2100000.00, 'Yes', 17000000.00, 'P006', 'REG-NUM-2202006');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C007', 'PVT-MTE-3906', 'Private Limited', 'Marine Technology', 'Radar System Integration', DATE '2026-06-12', 2, 'Active', 'Bronze', 900000.00, 'Yes', 8000000.00, 'P007', 'REG-NUM-1908007');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C008', 'GLC-MDE-1187', 'Government Linked Company', 'Maritime Defence', 'Submarine Support Services', DATE '2026-05-18', 5, 'Active', 'Platinum', 9800000.00, 'Yes', 60000000.00, 'P008', 'REG-NUM-2006008');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C009', 'CON-OFE-6673', 'Consortium', 'Offshore Engineering', 'Platform Maintenance', DATE '2026-04-30', 4, 'Active', 'Gold', 3200000.00, 'Yes', 22000000.00, 'P009', 'REG-NUM-1804009');
insert into client (client_id, client_reference_num, client_ownership_type, industry_sector, preferred_service_type, last_request_date, project_count, client_status, client_loyalty, total_outstanding_balance, client_discount_eligibility, total_purchase_value, party_id, registration_number)
values ('C010', 'GOV-MSE-9052', 'Government Agency', 'Maritime Security', 'Fleet Maintenance Planning', DATE '2026-06-15', 7, 'Active', 'Platinum', 11000000.00, 'Yes', 75000000.00, 'P010', 'REG-NUM-2307010');

prompt Inserting data into table 'supplier'...
-- (10 records – use your original inserts, now referencing existing P011-P020)
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S001', 'GLC-ENG-4821', 'Marine Equipment', 'Monthly', DATE '2026-05-10', '0800-1800', 'www.navaltech1.com', 'Malaysia & SEA', 'Sea Freight', 'Pos Malaysia', 'High', 'Government Linked Company', 'P011', 'REG-NUM-1911001');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S002', 'GOV-LOG-1934', 'Defence Materials', 'Weekly', DATE '2026-06-01', '0900-1700', 'www.maritimegov.my', 'Malaysia', 'Land Transport', 'LHDN Logistics', 'Medium', 'Government Agency', 'P012', 'REG-NUM-2001002');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S003', 'PVT-STE-7712', 'Steel & Hull Plates', 'Monthly', DATE '2026-04-20', '0800-1700', 'www.oceanetechmarine.com', 'Malaysia & ASEAN', 'Sea Freight', 'GD Express', 'High', 'Private Limited', 'P013', 'REG-NUM-1811003');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S004', 'GLC-ENG-5603', 'Ship Engine Systems', 'Quarterly', DATE '2026-06-10', '0800-1800', 'www.bousteadnaval.com', 'Malaysia & Global', 'Air & Sea Freight', 'Boustead Logistics', 'High', 'Government Linked Company', 'P014', 'REG-NUM-2110004');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S005', 'CON-SHP-2291', 'Ship Components', 'Monthly', DATE '2026-05-28', '0900-1800', 'www.shipconsortium.com', 'ASEAN Region', 'Sea Freight', 'MISC Logistics', 'Medium', 'Consortium', 'P015', 'REG-NUM-1706005');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S006', 'GOV-MAR-8045', 'Coast Guard Supplies', 'Weekly', DATE '2026-05-08', '0900-1700', 'www.mmea.gov.my', 'Malaysia', 'Land Transport', 'Royal Logistics Unit', 'High', 'Government Agency', 'P016', 'REG-NUM-2205006');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S007', 'PVT-TEC-3906', 'Radar & Sensors', 'Monthly', DATE '2026-06-12', '0800-1800', 'www.neptunetech.com', 'Asia Pacific', 'Air Freight', 'DHL Supply Chain', 'Medium', 'Private Limited', 'P017', 'REG-NUM-1910007');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S008', 'GLC-SUB-1187', 'Submarine Systems', 'Quarterly', DATE '2026-05-18', '0800-1800', 'www.bhic.com.my', 'Global', 'Sea Freight', 'BHIC Logistics', 'High', 'Government Linked Company', 'P018', 'REG-NUM-2005008');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S009', 'CON-OFF-6673', 'Offshore Structures', 'Monthly', DATE '2026-04-30', '0900-1800', 'www.offshoreconsortium.com', 'ASEAN & Middle East', 'Sea Freight', 'Offshore Logistics Alliance', 'Medium', 'Consortium', 'P019', 'REG-NUM-1811009');
INSERT INTO supplier (supplier_id, supplier_reference_num, product_category, supply_cycle, last_supply_date, operating_hours, website_url, supplier_coverage_area, preferred_shipping_method, logistic_partner, price_stability, supplier_type, party_id, registration_number)
VALUES ('S010', 'GOV-FLE-9052', 'Fleet Maintenance Tools', 'Weekly', DATE '2026-06-15', '0900-1700', 'www.navy.gov.my', 'Malaysia', 'Land Transport', 'Naval Fleet Logistics', 'High', 'Government Agency', 'P020', 'REG-NUM-2312010');

prompt Inserting data into table 'payment'...
-- (10 records – use your original inserts)
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY001', 'PAY-COM-001', DATE '2026-05-21', TO_TIMESTAMP('2026-05-21 10:15:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Completed', 'REF-INV-001', 'Credit', 'MYR', 46270000.00, 'P001', 'REG-NUM-1901001');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY002', 'PAY-PAR-002', DATE '2026-06-03', TO_TIMESTAMP('2026-06-03 14:20:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Partial', 'REF-INV-002', 'Credit', 'MYR', 33120000.00, 'P002', 'REG-NUM-2012002');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY003', 'PAY-COM-003', DATE '2026-04-27', TO_TIMESTAMP('2026-04-27 09:45:00', 'YYYY-MM-DD HH24:MI:SS'), 'Online Banking', 'Completed', 'REF-INV-003', 'Credit', 'MYR', 15785000.00, 'P003', 'REG-NUM-1812003');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY004', 'PAY-PAR-004', DATE '2026-06-07', TO_TIMESTAMP('2026-06-07 16:10:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Partial', 'REF-INV-004', 'Credit', 'MYR', 51250000.00, 'P004', 'REG-NUM-2112004');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY005', 'PAY-COM-005', DATE '2026-05-31', TO_TIMESTAMP('2026-05-31 11:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Cheque', 'Completed', 'REF-INV-005', 'Credit', 'MYR', 39880000.00, 'P005', 'REG-NUM-1711005');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY006', 'PAY-COM-006', DATE '2026-05-10', TO_TIMESTAMP('2026-05-10 13:30:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Completed', 'REF-INV-006', 'Credit', 'MYR', 17730000.00, 'P006', 'REG-NUM-2202006');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY007', 'PAY-COM-007', DATE '2026-06-13', TO_TIMESTAMP('2026-06-13 15:25:00', 'YYYY-MM-DD HH24:MI:SS'), 'Online Banking', 'Completed', 'REF-INV-007', 'Credit', 'MYR', 12720000.00, 'P007', 'REG-NUM-1908007');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY008', 'PAY-PAR-008', DATE '2026-05-19', TO_TIMESTAMP('2026-05-19 10:50:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Partial', 'REF-INV-008', 'Credit', 'MYR', 59520000.00, 'P008', 'REG-NUM-2006008');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY009', 'PAY-COM-009', DATE '2026-05-01', TO_TIMESTAMP('2026-05-01 12:05:00', 'YYYY-MM-DD HH24:MI:SS'), 'Online Banking', 'Completed', 'REF-INV-009', 'Credit', 'MYR', 23070000.00, 'P009', 'REG-NUM-1804009');
insert into payment (payment_id, payment_reference_num, payment_date, payment_timestamp, payment_method, payment_status, payment_reference, transaction_type, payment_currency_code, payment_amount, party_id, registration_number)
values ('PAY010', 'PAY-PAR-010', DATE '2026-06-16', TO_TIMESTAMP('2026-06-16 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 'Bank Transfer', 'Partial', 'REF-INV-010', 'Credit', 'MYR', 77000000.00, 'P010', 'REG-NUM-2307010');


prompt Inserting data into table 'service_request'...
-- (10 records – use your original inserts, R004 has NULL response_date now allowed)
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R001', 'REQ-DEF-001', 'Naval Vessel Construction Request', 'Shipbuilding', DATE '2026-05-10', 'New offshore patrol vessel construction', 'High', 45000000.00, 'Approved', DATE '2026-05-15', 'Formal Submission', 'C001', 'GLC-DEF-4821');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R002', 'REQ-MDE-002', 'Ship Repair Contract', 'Maintenance', DATE '2026-05-20', 'Annual patrol ship repair and servicing', 'High', 32000000.00, 'Approved', DATE '2026-06-01', 'Online Portal', 'C002', 'GOV-MDE-1934');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R003', 'REQ-MRE-003', 'Hull Fabrication Work', 'Fabrication', DATE '2026-04-18', 'Steel hull fabrication for marine vessel', 'Medium', 15000000.00, 'Approved', DATE '2026-04-25', 'Email Submission', 'C003', 'PVT-MRE-7712');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R004', 'REQ-DEF-004', 'Patrol Vessel Upgrade', 'Upgrade Services', DATE '2026-06-05', 'Upgrade of offshore patrol vessel systems', 'High', 50000000.00, 'Pending', null, 'Formal Submission', 'C004', 'GLC-DEF-5603');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R005', 'REQ-SHB-005', 'Engine Overhaul Project', 'Engine Services', DATE '2026-05-25', 'Marine engine overhaul works', 'High', 38000000.00, 'Approved', DATE '2026-05-30', 'Tender System', 'C005', 'CON-SHB-2291');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R006', 'REQ-CGD-006', 'Coast Guard Refitting', 'Refitting', DATE '2026-05-01', 'Refitting of coast guard vessels', 'Medium', 17000000.00, 'Approved', DATE '2026-05-08', 'Government Portal', 'C006', 'GOV-CGD-8045');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R007', 'REQ-MTE-007', 'Radar System Integration', 'Technology', DATE '2026-06-10', 'Integration of radar systems into ships', 'Medium', 12000000.00, 'Approved', DATE '2026-06-12', 'Email Submission', 'C007', 'PVT-MTE-3906');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R008', 'REQ-MDE-008', 'Submarine Support Services', 'Defence', DATE '2026-05-15', 'Submarine maintenance and support', 'High', 60000000.00, 'Approved', DATE '2026-05-18', 'Formal Submission', 'C008', 'GLC-MDE-1187');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R009', 'REQ-OFE-009', 'Offshore Platform Maintenance', 'Offshore', DATE '2026-04-28', 'Offshore platform servicing', 'Medium', 22000000.00, 'Approved', DATE '2026-04-30', 'Email Submission', 'C009', 'CON-OFE-6673');
insert into service_request (request_id, request_code, request_title, request_service, request_date, request_description, request_priority_level, estimated_budget, request_approval_status, request_response_date, request_method, client_id, client_reference_num)
values ('R010', 'REQ-MSE-010', 'Fleet Maintenance Planning', 'Maritime Security', DATE '2026-06-12', 'Long-term naval fleet maintenance planning', 'High', 75000000.00, 'Approved', DATE '2026-06-15', 'Government Letter', 'C010', 'GOV-MSE-9052');

prompt Inserting data into table 'contract' (all 20 records)...
-- CT001 to CT010 (original)
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT001', 'AGR-DEF-001', 'Offshore Patrol Vessel Contract', 'Construction of OPV for defence use', DATE '2026-05-15', DATE '2028-05-16', DATE '2026-05-15', 'Standard defence procurement terms', 'www.lunas.gov.my/ct001', 'Active', 'R001', 'REQ-DEF-001', 'P001', 'REG-NUM-1901001');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT002', 'AGR-MDE-002', 'Ship Repair Agreement', 'Maintenance of naval patrol ships', DATE '2026-06-02', DATE '2027-06-02', DATE '2026-06-01', 'Annual maintenance agreement terms', 'www.lunas.gov.my/ct002', 'Active', 'R002', 'REQ-MDE-002', 'P002', 'REG-NUM-2012002');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT003', 'AGR-MRE-003', 'Hull Fabrication Contract', 'Steel hull fabrication for marine vessels', DATE '2026-04-26', DATE '2027-04-26', DATE '2026-04-25', 'Manufacturing supply conditions', 'www.lunas.gov.my/ct003', 'Active', 'R003', 'REQ-MRE-003', 'P003', 'REG-NUM-1812003');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT004', 'AGR-DEF-004', 'Patrol Vessel Upgrade Contract', 'Upgrade of offshore patrol vessel systems', DATE '2026-06-06', DATE '2028-06-06', DATE '2026-06-05', 'Defence upgrade compliance terms', 'www.lunas.gov.my/ct004', 'Active', 'R004', 'REQ-DEF-004', 'P004', 'REG-NUM-2112004');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT005', 'AGR-SHB-005', 'Engine Overhaul Agreement', 'Marine engine overhaul services', DATE '2026-05-30', DATE '2027-05-30', DATE '2026-05-30', 'Engineering service agreement terms', 'www.lunas.gov.my/ct005', 'Active', 'R005', 'REQ-SHB-005', 'P005', 'REG-NUM-1711005');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT006', 'AGR-CGD-006', 'Coast Guard Refitting Contract', 'Refitting of coast guard vessels', DATE '2026-05-09', DATE '2027-05-09', DATE '2026-05-08', 'Government refit regulations', 'www.lunas.gov.my/ct006', 'Active', 'R006', 'REQ-CGD-006', 'P006', 'REG-NUM-2202006');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT007', 'AGR-MTE-007', 'Radar Integration Contract', 'Integration of radar systems into naval ships', DATE '2026-06-12', DATE '2027-06-12', DATE '2026-06-12', 'Technology integration standards', 'www.lunas.gov.my/ct007', 'Active', 'R007', 'REQ-MTE-007', 'P007', 'REG-NUM-1908007');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT008', 'AGR-MDE-008', 'Submarine Support Agreement', 'Technical support for submarine maintenance', DATE '2026-05-18', DATE '2028-05-18', DATE '2026-05-18', 'Submarine maintenance compliance terms', 'www.lunas.gov.my/ct008', 'Active', 'R008', 'REQ-MDE-008', 'P008', 'REG-NUM-2006008');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT009', 'AGR-OFE-009', 'Offshore Platform Maintenance Contract', 'Maintenance of offshore structures', DATE '2026-04-30', DATE '2027-04-30', DATE '2026-04-30', 'Offshore engineering contract terms', 'www.lunas.gov.my/ct009', 'Active', 'R009', 'REQ-OFE-009', 'P009', 'REG-NUM-1804009');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT010', 'AGR-MSE-010', 'Fleet Maintenance Planning Contract', 'Long-term naval fleet maintenance planning', DATE '2026-06-15', DATE '2029-06-15', DATE '2026-06-15', 'Naval fleet strategic agreement terms', 'www.lunas.gov.my/ct010', 'Active', 'R010', 'REQ-MSE-010', 'P010', 'REG-NUM-2307010');
-- CT011 to CT020 (missing – now inserted)
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT011', 'AGR-DEF-011', 'Precision Cutting Equipment Supply', 'Supply of armoured steel cutting equipment', DATE '2026-05-01', DATE '2027-05-01', DATE '2026-05-01', 'Standard procurement terms', 'www.lunas.gov.my/ct011', 'Active', NULL, NULL, 'P011', 'REG-NUM-1911001');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT012', 'AGR-MDE-012', 'Marine Engine Diagnostic System Supply', 'Procurement of engine test benches', DATE '2026-05-10', DATE '2027-05-10', DATE '2026-05-10', 'Maintenance agreement', 'www.lunas.gov.my/ct012', 'Active', NULL, NULL, 'P012', 'REG-NUM-2001002');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT013', 'AGR-MRE-013', 'Radar Calibration System Supply', 'Calibration equipment for naval radar', DATE '2026-04-20', DATE '2027-04-20', DATE '2026-04-20', 'Technology supply terms', 'www.lunas.gov.my/ct013', 'Active', NULL, NULL, 'P013', 'REG-NUM-1811003');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT014', 'AGR-DEF-014', 'Hydraulic Press System Supply', 'Press system for hull shaping', DATE '2026-06-01', DATE '2027-06-01', DATE '2026-06-01', 'Heavy equipment procurement', 'www.lunas.gov.my/ct014', 'Active', NULL, NULL, 'P014', 'REG-NUM-2110004');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT015', 'AGR-SHB-015', 'Automated Cable Installation System', 'Cable laying equipment for ships', DATE '2026-05-15', DATE '2027-05-15', DATE '2026-05-15', 'Installation service contract', 'www.lunas.gov.my/ct015', 'Active', NULL, NULL, 'P015', 'REG-NUM-1706005');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT016', 'AGR-CGD-016', 'Marine HVAC & Cooling System Supply', 'Cooling units for vessels', DATE '2026-05-03', DATE '2027-05-03', DATE '2026-05-03', 'HVAC procurement terms', 'www.lunas.gov.my/ct016', 'Active', NULL, NULL, 'P016', 'REG-NUM-2205006');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT017', 'AGR-MTE-017', 'Propulsion Balancing System Supply', 'Dynamic balancing equipment', DATE '2026-06-05', DATE '2027-06-05', DATE '2026-06-05', 'Technical supply agreement', 'www.lunas.gov.my/ct017', 'Active', NULL, NULL, 'P017', 'REG-NUM-1910007');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT018', 'AGR-MDE-018', 'Navigation Testing System Supply', 'Navigation suite testing equipment', DATE '2026-05-18', DATE '2027-05-18', DATE '2026-05-18', 'Supply and support', 'www.lunas.gov.my/ct018', 'Active', NULL, NULL, 'P018', 'REG-NUM-2005008');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT019', 'AGR-OFE-019', 'Fuel Diagnostic Equipment Supply', 'Fuel system testing kits', DATE '2026-04-25', DATE '2027-04-25', DATE '2026-04-25', 'Diagnostic equipment terms', 'www.lunas.gov.my/ct019', 'Active', NULL, NULL, 'P019', 'REG-NUM-1811009');
insert into contract (contract_id, agreement_reference_number, contract_title, contract_scope, contract_sign_date, contract_end_date, approved_date, contract_terms_condition, contract_document_url, contract_status, request_id, request_code, party_id, registration_number)
values ('CT020', 'AGR-MSE-020', 'Safety Inspection Equipment Supply', 'Safety and inspection tools', DATE '2026-06-10', DATE '2027-06-10', DATE '2026-06-10', 'Safety equipment procurement', 'www.lunas.gov.my/ct020', 'Active', NULL, NULL, 'P020', 'REG-NUM-2312010');

prompt Inserting data into table 'project'...
-- (10 records – use your original inserts, now allows NULL for finished_date)
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR001', 'PROJ-DEF-001', 'OPV Construction Project', 'Build offshore patrol vessel for defence use', 'Shipbuilding', 'In Progress', DATE '2026-05-16', DATE '2028-05-16', DATE '2028-05-16', 'High', 45000000.00, 'CT001', 'AGR-DEF-001', 'R001', 'REQ-DEF-001', 'C001', 'GLC-DEF-4821');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR002', 'PROJ-MDE-002', 'Naval Ship Repair Project', 'Repair and maintenance of naval patrol ships', 'Maintenance', 'In Progress', DATE '2026-06-02', DATE '2027-06-02', null, 'High', 32000000.00, 'CT002', 'AGR-MDE-002', 'R002', 'REQ-MDE-002', 'C002', 'GOV-MDE-1934');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR003', 'PROJ-MRE-003', 'Hull Fabrication Project', 'Fabrication of steel hull structures', 'Manufacturing', 'Completed', DATE '2026-04-26', DATE '2027-04-26', DATE '2027-04-26', 'Medium', 15000000.00, 'CT003', 'AGR-MRE-003', 'R003', 'REQ-MRE-003', 'C003', 'PVT-MRE-7712');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR004', 'PROJ-DEF-004', 'Patrol Vessel Upgrade Project', 'Upgrade systems of offshore patrol vessel', 'Upgrade', 'In Progress', DATE '2026-06-06', DATE '2028-06-06', null, 'High', 50000000.00, 'CT004', 'AGR-DEF-004', 'R004', 'REQ-DEF-004', 'C004', 'GLC-DEF-5603');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR005', 'PROJ-SHB-005', 'Engine Overhaul Project', 'Overhaul marine engines for naval vessels', 'Maintenance', 'Completed', DATE '2026-05-30', DATE '2027-05-30', DATE '2027-05-30', 'High', 38000000.00, 'CT005', 'AGR-SHB-005', 'R005', 'REQ-SHB-005', 'C005', 'CON-SHB-2291');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR006', 'PROJ-CGD-006', 'Coast Guard Refitting Project', 'Refitting of coast guard vessels', 'Refitting', 'Completed', DATE '2026-05-09', DATE '2027-05-09', DATE '2027-05-09', 'Medium', 17000000.00, 'CT006', 'AGR-CGD-006', 'R006', 'REQ-CGD-006', 'C006', 'GOV-CGD-8045');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR007', 'PROJ-MTE-007', 'Radar Integration Project', 'Integrate radar systems into naval ships', 'Technology', 'In Progress', DATE '2026-06-12', DATE '2027-06-12', null, 'Medium', 12000000.00, 'CT007', 'AGR-MTE-007', 'R007', 'REQ-MTE-007', 'C007', 'PVT-MTE-3906');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR008', 'PROJ-MDE-008', 'Submarine Support Project', 'Submarine maintenance and technical support', 'Defence', 'In Progress', DATE '2026-05-18', DATE '2028-05-18', null, 'High', 60000000.00, 'CT008', 'AGR-MDE-008', 'R008', 'REQ-MDE-008', 'C008', 'GLC-MDE-1187');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR009', 'PROJ-OFE-009', 'Offshore Maintenance Project', 'Maintenance of offshore structures', 'Offshore', 'Completed', DATE '2026-04-30', DATE '2027-04-30', DATE '2027-04-30', 'Medium', 22000000.00, 'CT009', 'AGR-OFE-009', 'R009', 'REQ-OFE-009', 'C009', 'CON-OFE-6673');
insert into project (project_id, project_reference_num, project_name, project_description, project_type, project_status, project_start_date, project_due_date, project_finished_date, project_priority, project_budget, contract_id, agreement_reference_number, request_id, request_code, client_id, client_reference_num)
values ('PR010', 'PROJ-MSE-010', 'Fleet Maintenance Planning Project', 'Long-term naval fleet maintenance strategy', 'Strategic', 'Planned', DATE '2026-06-15', DATE '2029-06-15', null, 'High', 75000000.00, 'CT010', 'AGR-MSE-010', 'R010', 'REQ-MSE-010', 'C010', 'GOV-MSE-9052');

prompt Inserting data into table 'vessel'...
-- (10 records – use your original inserts; fuel capacity values now fit NUMBER(10,2))

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V001', 'VRN-LUN-001', 'KD Lunas Defender', 'Offshore Patrol Vessel', 'Diesel', 120000, 120, 18, DATE '2026-04-10', 3500, 5000, 'Active', 2020, 110, 'C001', 'GLC-DEF-4821', 'CT001', 'AGR-DEF-001');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V002', 'VRN-LUN-002', 'KD Maritime Shield', 'Frigate', 'Diesel-Electric', 150000, 180, 22, DATE '2026-03-15', 4800, 6500, 'Active', 2019, 140, 'C002', 'GOV-MDE-1934', 'CT002', 'AGR-MDE-002');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V003', 'VRN-LUN-003', 'KD Steel Vanguard', 'Corvettes', 'Diesel', 90000, 100, 16, DATE '2026-02-20', 2800, 4500, 'Active', 2021, 95, 'C003', 'PVT-MRE-7712', 'CT003', 'AGR-MRE-003');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V004', 'VRN-LUN-004', 'KD Ocean Sentinel', 'Offshore Support Vessel', 'Diesel', 110000, 90, 20, DATE '2026-05-01', 4000, 6000, 'Active', 2018, 120, 'C004', 'GLC-DEF-5603', 'CT004', 'AGR-DEF-004');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V005', 'VRN-LUN-005', 'KD Naval Guardian', 'Patrol Vessel', 'Diesel', 80000, 75, 15, DATE '2026-01-18', 2600, 4000, 'Maintenance', 2022, 90, 'C005', 'CON-SHB-2291', 'CT005', 'AGR-SHB-005');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V006', 'VRN-LUN-006', 'KD Sea Protector', 'Frigate', 'Diesel-Electric', 140000, 170, 23, DATE '2026-03-28', 5000, 7000, 'Active', 2017, 145, 'C006', 'GOV-CGD-8045', 'CT006', 'AGR-CGD-006');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V007', 'VRN-LUN-007', 'KD Iron Wave', 'Offshore Patrol Vessel', 'Diesel', 100000, 110, 17, DATE '2026-04-22', 3100, 4800, 'Active', 2020, 105, 'C007', 'PVT-MTE-3906', 'CT007', 'AGR-MTE-007');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V008', 'VRN-LUN-008', 'KD Subsea Hunter', 'Submarine Support Vessel', 'Diesel-Electric', 160000, 60, 25, DATE '2026-05-10', 5200, 7500, 'Active', 2016, 150, 'C008', 'GLC-MDE-1187', 'CT008', 'AGR-MDE-008');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V009', 'VRN-LUN-009', 'KD Offshore Titan', 'Offshore Engineering Vessel', 'Diesel', 130000, 95, 19, DATE '2026-02-05', 3600, 5500, 'Active', 2019, 115, 'C009', 'CON-OFE-6673', 'CT009', 'AGR-OFE-009');

insert into vessel (vessel_id, vessel_registration_number, vessel_name, vessel_category, vessel_fuel_type, vessel_fuel_capacity, vessel_capacity, vessel_width, last_maintenance_date, vessel_weight, vessel_distance_max, vessel_status, vessel_build_year, vessel_length, client_id, client_reference_num, contract_id, agreement_reference_number)
values ('V010', 'VRN-LUN-010', 'KD Fleet Command', 'Naval Command Vessel', 'Diesel-Electric', 200000, 200, 30, DATE '2026-06-01', 6000, 9000, 'Active', 2015, 170, 'C010', 'GOV-MSE-9052', 'CT010', 'AGR-MSE-010');


prompt Inserting data into table 'purchase_order'...
-- (10 records – use your original inserts, now references existing contracts CT011-CT020 and suppliers)
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO001', 'PO-EQP-001', 'Precision Cutting Equipment Order', 'APPROVED', 'Armoured steel cutter and cutting accessories', 6, 2.5, 5, 'Fulfilled', DATE '2026-05-01', DATE '2026-05-12', 'S001', 'GLC-ENG-4821', 'PR001', 'PROJ-DEF-001', 'CT011', 'AGR-DEF-011');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO002', 'PO-EQP-002', 'Marine Engine Diagnostic System Order', 'APPROVED', 'Marine engine test bench and diagnostic modules', 6, 2, 3, 'Fulfilled', DATE '2026-05-10', DATE '2026-05-11', 'S002', 'GOV-LOG-1934', 'PR002', 'PROJ-MDE-002', 'CT012', 'AGR-MDE-012');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO003', 'PO-EQP-003', 'Radar Calibration System Order', 'APPROVED', 'Naval radar calibration equipment and software', 6, 2.5, 4, 'Fulfilled', DATE '2026-04-20', DATE '2026-04-21', 'S003', 'PVT-STE-7712', 'PR003', 'PROJ-MRE-003', 'CT013', 'AGR-MRE-013');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO004', 'PO-EQP-004', 'Hydraulic Press System Order', 'REJECTED', 'Ship hull hydraulic press and control components', 6, 3, 2, 'Pending', DATE '2026-06-01', null, 'S004', 'GLC-ENG-5603', 'PR004', 'PROJ-DEF-004', 'CT014', 'AGR-DEF-014');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO005', 'PO-EQP-005', 'Automated Cable Installation System Order', 'APPROVED', 'Automated cable laying system and installation tools', 6, 2, 3, 'Fulfilled', DATE '2026-05-15', DATE '2026-05-16', 'S005', 'CON-SHP-2291', 'PR005', 'PROJ-SHB-005', 'CT015', 'AGR-SHB-015');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO006', 'PO-EQP-006', 'Marine HVAC & Cooling System Order', 'APPROVED', 'Ship cooling and HVAC units with spare parts', 6, 2, 2, 'Fulfilled', DATE '2026-05-03', DATE '2026-05-04', 'S006', 'GOV-MAR-8045', 'PR006', 'PROJ-CGD-006', 'CT016', 'AGR-CGD-016');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO007', 'PO-EQP-007', 'Propulsion Balancing System Order', 'APPROVED', 'Propeller dynamic balancing equipment and sensors', 6, 3, 4, 'Fulfilled', DATE '2026-06-05', DATE '2026-06-06', 'S007', 'PVT-TEC-3906', 'PR007', 'PROJ-MTE-007', 'CT017', 'AGR-MTE-017');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO008', 'PO-EQP-008', 'Navigation Testing System Order', 'APPROVED', 'Navigation system testing suite and calibration devices', 6, 2.5, 5, 'Fulfilled', DATE '2026-05-18', DATE '2026-05-19', 'S008', 'GLC-SUB-1187', 'PR008', 'PROJ-MDE-008', 'CT018', 'AGR-MDE-018');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO009', 'PO-EQP-009', 'Fuel System Diagnostic Equipment Order', 'APPROVED', 'Fuel injection diagnostic analyzer and testing kits', 6, 2, 3, 'Fulfilled', DATE '2026-04-25', DATE '2026-04-26', 'S009', 'CON-OFF-6673', 'PR009', 'PROJ-OFE-009', 'CT019', 'AGR-OFE-019');
insert into purchase_order (purchase_id, purchase_reference_num, purchase_order_name, order_approval_status, order_details, agreed_tax_rate, agreed_service_fee, agreed_discount_percentage, order_fulfillment_status, order_date, order_approval_date, supplier_id, supplier_reference_num, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('PO010', 'PO-EQP-010', 'Safety Inspection Equipment Order', 'REJECTED', 'Safety inspection kits and compliance testing tools', 6, 3.5, 6, 'Pending', DATE '2026-06-10', null, 'S010', 'GOV-FLE-9052', 'PR010', 'PROJ-MSE-010', 'CT020', 'AGR-MSE-020');



prompt Inserting data into table 'invoice' (sales and purchase invoices)...
-- (20 records – use your original inserts; INV001–INV010 are sales, INV011–INV020 are purchase)
-- Already all references exist now

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV001', 'INV-LUN-001', 'Vessel Construction Invoice', 45000000.00, 2700000.00, 500000.00, DATE '2026-05-20', 0.00, 46270000.00, 'Payment for vessel construction project', 'Paid', DATE '2026-06-20', 'Sales', 'PR001', 'PROJ-DEF-001', 'CT001', 'AGR-DEF-001', 'P001', 'REG-NUM-1901001', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV002', 'INV-LUN-002', 'Ship Repair Invoice', 32000000.00, 1920000.00, 300000.00, DATE '2026-06-02', 500000.00, 33620000.00, 'Maintenance and repair services', 'Partial', DATE '2026-07-02', 'Sales', 'PR002', 'PROJ-MDE-002', 'CT002', 'AGR-MDE-002', 'P002', 'REG-NUM-2012002', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV003', 'INV-LUN-003', 'Hull Fabrication Invoice', 15000000.00, 900000.00, 150000.00, DATE '2026-04-26', 0.00, 15785000.00, 'Hull fabrication materials and labor', 'Paid', DATE '2026-05-26', 'Sales', 'PR003', 'PROJ-MRE-003', 'CT003', 'AGR-MRE-003', 'P003', 'REG-NUM-1812003', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV004', 'INV-LUN-004', 'Patrol Vessel Upgrade Invoice', 50000000.00, 3000000.00, 750000.00, DATE '2026-06-06', 1000000.00, 52250000.00, 'Upgrade of naval vessel systems', 'Partial', DATE '2026-07-06', 'Sales', 'PR004', 'PROJ-DEF-004', 'CT004', 'AGR-DEF-004', 'P004', 'REG-NUM-2112004', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV005', 'INV-LUN-005', 'Engine Overhaul Invoice', 38000000.00, 2280000.00, 400000.00, DATE '2026-05-30', 0.00, 39880000.00, 'Engine overhaul and servicing', 'Paid', DATE '2026-06-30', 'Sales', 'PR005', 'PROJ-SHB-005', 'CT005', 'AGR-SHB-005', 'P005', 'REG-NUM-1711005', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV006', 'INV-LUN-006', 'Coast Guard Refitting Invoice', 17000000.00, 1020000.00, 200000.00, DATE '2026-05-09', 0.00, 17730000.00, 'Coast guard vessel refitting', 'Paid', DATE '2026-06-09', 'Sales', 'PR006', 'PROJ-CGD-006', 'CT006', 'AGR-CGD-006', 'P006', 'REG-NUM-2202006', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV007', 'INV-LUN-007', 'Radar Integration Invoice', 12000000.00, 720000.00, 100000.00, DATE '2026-06-12', 0.00, 12720000.00, 'Radar system integration works', 'Paid', DATE '2026-07-12', 'Sales', 'PR007', 'PROJ-MTE-007', 'CT007', 'AGR-MTE-007', 'P007', 'REG-NUM-1908007', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV008', 'INV-LUN-008', 'Submarine Support Invoice', 60000000.00, 3600000.00, 800000.00, DATE '2026-05-18', 1200000.00, 60720000.00, 'Submarine support operations', 'Partial', DATE '2026-06-18', 'Sales', 'PR008', 'PROJ-MDE-008', 'CT008', 'AGR-MDE-008', 'P008', 'REG-NUM-2006008', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV009', 'INV-LUN-009', 'Offshore Maintenance Invoice', 22000000.00, 1320000.00, 250000.00, DATE '2026-04-30', 0.00, 23070000.00, 'Offshore maintenance services', 'Paid', DATE '2026-05-30', 'Sales', 'PR009', 'PROJ-OFE-009', 'CT009', 'AGR-OFE-009', 'P009', 'REG-NUM-1804009', null, null);

insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV010', 'INV-LUN-010', 'Fleet Strategy Invoice', 75000000.00, 4500000.00, 1000000.00, DATE '2026-06-15', 1500000.00, 78500000.00, 'Long-term fleet strategy implementation', 'Partial', DATE '2026-07-15', 'Sales', 'PR010', 'PROJ-MSE-010', 'CT010', 'AGR-MSE-010', 'P010', 'REG-NUM-2307010', null, null);
-- Purchase invoices (INV011 to INV020) – now reference existing purchase orders and contracts
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV011', 'INV-PO-001', 'Precision Cutting Equipment Invoice', 1200000.00, 72000.00, 60000.00, DATE '2026-05-01', 1222000.00, 1212000.00, 'Cutting equipment supply for shipyard', 'Paid', DATE '2026-06-01', 'Purchase', 'PR001', 'PROJ-DEF-001', 'CT011', 'AGR-DEF-011', 'P011', 'REG-NUM-1911001', 'PO001', 'PO-EQP-001');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV012', 'INV-PO-002', 'Marine Engine Diagnostic Invoice', 950000.00, 57000.00, 28500.00, DATE '2026-05-10', 977000.00, 978500.00, 'Engine diagnostic tools procurement', 'Paid', DATE '2026-06-10', 'Purchase', 'PR002', 'PROJ-MDE-002', 'CT012', 'AGR-MDE-012', 'P012', 'REG-NUM-2001002', 'PO002', 'PO-EQP-002');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV013', 'INV-PO-003', 'Radar Calibration System Invoice', 1500000.00, 90000.00, 60000.00, DATE '2026-04-20', 1515000.00, 1530000.00, 'Radar calibration systems supply', 'Paid', DATE '2026-05-20', 'Purchase', 'PR003', 'PROJ-MRE-003', 'CT013', 'AGR-MRE-013', 'P013', 'REG-NUM-1811003', 'PO003', 'PO-EQP-003');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV014', 'INV-PO-004', 'Hydraulic Press System Invoice', 1800000.00, 108000.00, 36000.00, DATE '2026-06-01', 1848000.00, 1902000.00, 'Hydraulic press system procurement', 'Pending', DATE '2026-07-01', 'Purchase', 'PR004', 'PROJ-DEF-004', 'CT014', 'AGR-DEF-014', 'P014', 'REG-NUM-2110004', 'PO004', 'PO-EQP-004');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV015', 'INV-PO-005', 'Cable Installation System Invoice', 800000.00, 48000.00, 24000.00, DATE '2026-05-15', 823000.00, 824000.00, 'Cable installation system purchase', 'Paid', DATE '2026-06-15', 'Purchase', 'PR005', 'PROJ-SHB-005', 'CT015', 'AGR-SHB-015', 'P015', 'REG-NUM-1706005', 'PO005', 'PO-EQP-005');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV016', 'INV-PO-006', 'Marine HVAC System Invoice', 2100000.00, 126000.00, 42000.00, DATE '2026-05-03', 2126000.00, 2184000.00, 'HVAC system procurement', 'Paid', DATE '2026-06-03', 'Purchase', 'PR006', 'PROJ-CGD-006', 'CT016', 'AGR-CGD-016', 'P016', 'REG-NUM-2205006', 'PO006', 'PO-EQP-006');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV017', 'INV-PO-007', 'Propulsion Balancing System Invoice', 1100000.00, 66000.00, 44000.00, DATE '2026-06-05', 1126000.00, 1122000.00, 'Propulsion balancing system purchase', 'Paid', DATE '2026-07-05', 'Purchase', 'PR007', 'PROJ-MTE-007', 'CT017', 'AGR-MTE-017', 'P017', 'REG-NUM-1910007', 'PO007', 'PO-EQP-007');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV018', 'INV-PO-008', 'Navigation Testing System Invoice', 2500000.00, 150000.00, 125000.00, DATE '2026-05-18', 2530000.00, 2625000.00, 'Navigation testing equipment supply', 'Paid', DATE '2026-06-18', 'Purchase', 'PR008', 'PROJ-MDE-008', 'CT018', 'AGR-MDE-018', 'P018', 'REG-NUM-2005008', 'PO008', 'PO-EQP-008');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV019', 'INV-PO-009', 'Fuel Diagnostic Equipment Invoice', 900000.00, 54000.00, 27000.00, DATE '2026-04-25', 934000.00, 927000.00, 'Fuel system diagnostic tools', 'Paid', DATE '2026-05-25', 'Purchase', 'PR009', 'PROJ-OFE-009', 'CT019', 'AGR-OFE-019', 'P019', 'REG-NUM-1811009', 'PO009', 'PO-EQP-009');
insert into invoice (invoice_id, invoice_number, invoice_title, subtotal_amount, tax_amount, discount_amount, invoice_date, outstanding_balance, total_amount, invoice_description, invoice_status, invoice_due_date, invoice_type, project_id, project_reference_num, contract_id, agreement_reference_number, party_id, registration_number, purchase_id, purchase_reference_num)
values ('INV020', 'INV-PO-010', 'Safety Inspection Equipment Invoice', 3000000.00, 180000.00, 150000.00, DATE '2026-06-10', 3030000.00, 3030000.00, 'Safety inspection equipment procurement', 'Pending', DATE '2026-07-10', 'Purchase', 'PR010', 'PROJ-MSE-010', 'CT020', 'AGR-MSE-020', 'P020', 'REG-NUM-2312010', 'PO010', 'PO-EQP-010');

prompt Inserting data into table 'delivery'...
-- (10 records – use your original inserts; DEL004 and DEL010 have NULL actual_arrived_date now allowed)
-- supplier_reference_num in delivery must match supplier's reference number from supplier table.
-- In original data, supplier_reference_num used in delivery: GLC-ENG-4821 etc. This matches S001's supplier_reference_num.
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL001', 'TRK-LUN-001', DATE '2026-05-02', 'LUNA Shipyard, Lumut, Perak', 'Freight', 'Delivered', DATE '2026-05-05', DATE '2026-05-05', 2500.00, '03-77881001', 'PO001', 'PO-EQP-001', 'INV011', 'INV-PO-001', 'S001', 'GLC-ENG-4821');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL002', 'TRK-LUN-002', DATE '2026-05-11', 'LUNA Shipyard, Lumut, Perak', 'Air Freight', 'Delivered', DATE '2026-05-14', DATE '2026-05-14', 3200.00, '03-77881002', 'PO002', 'PO-EQP-002', 'INV012', 'INV-PO-002', 'S002', 'GOV-LOG-1934');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL003', 'TRK-LUN-003', DATE '2026-04-21', 'LUNA Warehouse, Lumut', 'Sea Freight', 'Delivered', DATE '2026-04-25', DATE '2026-04-25', 1800.00, '03-77881003', 'PO003', 'PO-EQP-003', 'INV013', 'INV-PO-003', 'S003', 'PVT-STE-7712');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL004', 'TRK-LUN-004', DATE '2026-06-02', 'LUNA Shipyard, Lumut, Perak', 'Truck', 'In Transit', DATE '2026-06-06', null, 4000.00, '03-77881004', 'PO004', 'PO-EQP-004', 'INV014', 'INV-PO-004', 'S004', 'GLC-ENG-5603');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL005', 'TRK-LUN-005', DATE '2026-05-16', 'LUNA Storage Facility', 'Freight', 'Delivered', DATE '2026-05-19', DATE '2026-05-19', 2200.00, '03-77881005', 'PO005', 'PO-EQP-005', 'INV015', 'INV-PO-005', 'S005', 'CON-SHP-2291');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL006', 'TRK-LUN-006', DATE '2026-05-04', 'LUNA Shipyard, Lumut', 'Sea Freight', 'Delivered', DATE '2026-05-08', DATE '2026-05-08', 2600.00, '03-77881006', 'PO006', 'PO-EQP-006', 'INV016', 'INV-PO-006', 'S006', 'GOV-MAR-8045');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL007', 'TRK-LUN-007', DATE '2026-06-06', 'LUNA Warehouse, Lumut', 'Air Freight', 'Delivered', DATE '2026-06-09', DATE '2026-06-09', 3000.00, '03-77881007', 'PO007', 'PO-EQP-007', 'INV017', 'INV-PO-007', 'S007', 'PVT-TEC-3906');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL008', 'TRK-LUN-008', DATE '2026-05-19', 'LUNA Offshore Yard', 'Sea Freight', 'Delivered', DATE '2026-05-23', DATE '2026-05-23', 3500.00, '03-77881008', 'PO008', 'PO-EQP-008', 'INV018', 'INV-PO-008', 'S008', 'GLC-SUB-1187');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL009', 'TRK-LUN-009', DATE '2026-04-26', 'LUNA Storage Hub', 'Truck', 'Delivered', DATE '2026-04-30', DATE '2026-04-30', 2000.00, '03-77881009', 'PO009', 'PO-EQP-009', 'INV019', 'INV-PO-009', 'S009', 'CON-OFF-6673');
insert into delivery (delivery_id, tracking_number, delivery_shipping_date, delivery_address, delivery_method, delivery_status, estimated_arrival_date, actual_arrived_date, delivery_fee, delivery_contact_number, purchase_id, purchase_reference_num, invoice_id, invoice_number, supplier_id, supplier_reference_num)
values ('DEL010', 'TRK-LUN-010', DATE '2026-06-11', 'LUNA Shipyard HQ', 'Freight', 'Pending', DATE '2026-06-15', null, 5000.00, '03-77881010', 'PO010', 'PO-EQP-010', 'INV020', 'INV-PO-010', 'S010', 'GOV-FLE-9052');

prompt Inserting data into table 'equipment'...
-- (10 records – now with invoice_id and invoice_number populated)
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ001', 'EQ-LUN-001-STEEL', 'Precision Cutting Equipment', 'Bosch', DATE '2021-03-10', '3 Years', DATE '2024-03-10', DATE '2026-04-10', 'Good', 'Warehouse B', 'Active', 'BOS-MTE-100', '10 Years', 'S001', 'GLC-ENG-4821', 'PO001', 'PO-EQP-001', 'DEL001', 'TRK-LUN-001', 'INV011', 'INV-PO-001', 'INV011', 'INV-EQP-011');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ002', 'EQ-LUN-002-ENG', 'Marine Engine Diagnostic System', 'Siemens', DATE '2020-06-15', '5 Years', DATE '2025-06-15', DATE '2026-03-15', 'Excellent', 'Warehouse A', 'Active', 'SI-MNT-200', '12 Years', 'S002', 'GOV-LOG-1934', 'PO002', 'PO-EQP-002', 'DEL002', 'TRK-LUN-002', 'INV012', 'INV-PO-002', 'INV012', 'INV-EQP-012');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ003', 'EQ-LUN-003-RAD', 'Radar Calibration System', 'Thales', DATE '2022-01-20', '4 Years', DATE '2026-01-20', DATE '2026-02-20', 'Good', 'Dry Dock B', 'Active', 'TH-MRE-300', '10 Years', 'S003', 'PVT-STE-7712', 'PO003', 'PO-EQP-003', 'DEL003', 'TRK-LUN-003', 'INV013', 'INV-PO-003', 'INV013', 'INV-EQP-013');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ004', 'EQ-LUN-004-HYD', 'Hydraulic Press System', 'Caterpillar', DATE '2019-11-05', '5 Years', DATE '2024-11-05', DATE '2026-05-01', 'Fair', 'Workshop', 'Maintenance', 'CAT-DEF-400', '8 Years', 'S004', 'GLC-ENG-5603', 'PO004', 'PO-EQP-004', 'DEL004', 'TRK-LUN-004', 'INV014', 'INV-PO-004', 'INV014', 'INV-EQP-014');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ005', 'EQ-LUN-005-CAB', 'Automated Cable Installation System', 'Schneider Electric', DATE '2023-02-12', '3 Years', DATE '2026-02-12', DATE '2026-01-18', 'Good', 'Workshop', 'Active', 'SE-SHB-500', '10 Years', 'S005', 'CON-SHP-2291', 'PO005', 'PO-EQP-005', 'DEL005', 'TRK-LUN-005', 'INV015', 'INV-PO-005', 'INV015', 'INV-EQP-015');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ006', 'EQ-LUN-006-CLG', 'Marine HVAC & Cooling System', 'Daikin', DATE '2021-08-18', '4 Years', DATE '2025-08-18', DATE '2026-03-28', 'Excellent', 'Repair Bay', 'Active', 'DAI-CGD-600', '11 Years', 'S006', 'GOV-MAR-8045', 'PO006', 'PO-EQP-006', 'DEL006', 'TRK-LUN-006', 'INV016', 'INV-PO-006', 'INV016', 'INV-EQP-016');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ007', 'EQ-LUN-007-PRP', 'Propulsion Balancing System', 'Rolls-Royce Marine', DATE '2018-07-22', '6 Years', DATE '2024-07-22', DATE '2026-04-22', 'Good', 'Workshop', 'Maintenance', 'RR-MTE-700', '9 Years', 'S007', 'PVT-TEC-3906', 'PO007', 'PO-EQP-007', 'DEL007', 'TRK-LUN-007', 'INV017', 'INV-PO-007', 'INV017', 'INV-EQP-017');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ008', 'EQ-LUN-008-NAV', 'Navigation Testing System', 'Garmin', DATE '2022-09-30', '3 Years', DATE '2025-09-30', DATE '2026-05-10', 'Excellent', 'Project Site A', 'Active', 'GAR-MDE-800', '10 Years', 'S008', 'GLC-SUB-1187', 'PO008', 'PO-EQP-008', 'DEL008', 'TRK-LUN-008', 'INV018', 'INV-PO-008', 'INV018', 'INV-EQP-018');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ009', 'EQ-LUN-009-FUL', 'Fuel System Diagnostic Equipment', 'Delphi', DATE '2020-12-01', '5 Years', DATE '2025-12-01', DATE '2026-02-05', 'Good', 'Service Bay', 'Active', 'DEL-OFE-900', '10 Years', 'S009', 'CON-OFF-6673', 'PO009', 'PO-EQP-009', 'DEL009', 'TRK-LUN-009', 'INV019', 'INV-PO-009', 'INV019', 'INV-EQP-019');
insert into equipment (equipment_id, equipment_serial_num, equipment_type, manufacturer, purchase_date, warranty_period, warranty_expiry_date, last_maintenance_date, equipment_condition, equipment_used_location, equipment_status, model_number, expected_lifespan, supplier_id, supplier_reference_num, purchase_id, purchase_reference_num, delivery_id, tracking_number, invoice_id, invoice_number, inventory_item_id, inventory_reference_number)
values ('EQ010', 'EQ-LUN-010-SAF', 'Safety Inspection Equipment', '3M Safety', DATE '2024-01-10', '3 Years', DATE '2027-01-10', DATE '2026-06-01', 'Excellent', 'Inspection Area', 'Active', '3M-MSE-100', '8 Years', 'S010', 'GOV-FLE-9052', 'PO010', 'PO-EQP-010', 'DEL010', 'TRK-LUN-010', 'INV020', 'INV-PO-010', 'INV020', 'INV-EQP-020');

prompt Inserting data into table 'material'...
-- (10 records – use your original inserts; they don't have FK issues)
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT001', 'STL-A36', 'Metal', 'Hull Construction', 'Tonnes', 500, 50, 'Good', 'Low', 3650, 'Dry Warehouse', DATE '2035-01-01', null, null, 'INV001', 'INV-MAT-001');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT002', 'ENG-GR', 'Mechanical', 'Engine Assembly', 'Units', 120, 10, 'Good', 'Medium', 3000, 'Controlled Temperature', DATE '2034-06-01', null, null, 'INV002', 'INV-MAT-002');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT003', 'RAD-MOD', 'Electronic', 'Surveillance System', 'Units', 80, 5, 'Excellent', 'High', 2000, 'Secure Vault', DATE '2032-12-01', null, null, 'INV003', 'INV-MAT-003');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT004', 'HYD-PMP', 'Mechanical', 'Hydraulic System', 'Units', 60, 8, 'Good', 'Medium', 2500, 'Dry Warehouse', DATE '2033-08-01', null, null, 'INV004', 'INV-MAT-004');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT005', 'CAB-MAR', 'Electrical', 'Ship Wiring', 'Rolls', 300, 20, 'Fair', 'Low', 1500, 'Dry Storage', DATE '2030-01-01', null, null, 'INV005', 'INV-MAT-005');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT006', 'CLG-UNIT', 'Mechanical', 'Cooling System', 'Units', 70, 6, 'Good', 'Medium', 2700, 'Cooling Facility', DATE '2033-11-01', null, null, 'INV006', 'INV-MAT-006');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT007', 'PRP-BLD', 'Mechanical', 'Propulsion', 'Units', 40, 4, 'Excellent', 'High', 3200, 'Reinforced Storage', DATE '2036-01-01', null, null, 'INV007', 'INV-MAT-007');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT008', 'NAV-SEN', 'Electronic', 'Navigation System', 'Units', 90, 7, 'Good', 'Low', 4000, 'Secure Warehouse', DATE '2037-05-01', null, null, 'INV008', 'INV-MAT-008');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT009', 'FUL-PMP', 'Mechanical', 'Fuel System', 'Units', 110, 12, 'Good', 'Medium', 2800, 'Dry Warehouse', DATE '2034-02-01', null, null, 'INV009', 'INV-MAT-009');
insert into material (material_item_id, material_code, material_item_type, material_usage_purpose, material_unit_measurement, quantity_available, quantity_reserved, material_current_condition, material_hazard_category, shelf_life_days, storage_condition, expiry_date, equipment_id, equipment_serial_num, inventory_item_id, inventory_reference_number)
values ('MAT010', 'SAF-HLM', 'Safety', 'Personnel Protection', 'Sets', 500, 60, 'Excellent', 'Low', 5000, 'PPE Storage Area', DATE '2038-01-01', null, null, 'INV010', 'INV-MAT-010');

prompt Inserting data into table 'work_order'...
-- (10 records – use your original inserts; WO001, WO004, WO007, WO008, WO010 have NULL work_actual_end_date now allowed)
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO001', 'WON-DEF-001', 'Vessel Construction Work Order', 'Construction of offshore patrol vessel hull and systems', 'Construction', 'In Progress', 'High', DATE '2026-05-16', DATE '2028-05-16', null, 'V001', 'VRN-LUN-001', 'PR001', 'PROJ-DEF-001', 'CT001', 'AGR-DEF-001');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO002', 'WON-MDE-002', 'Ship Repair Work Order', 'Repair and maintenance of naval patrol ship systems', 'Maintenance', 'Completed', 'High', DATE '2026-06-02', DATE '2027-06-02', DATE '2027-06-02', 'V002', 'VRN-LUN-002', 'PR002', 'PROJ-MDE-002', 'CT002', 'AGR-MDE-002');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO003', 'WON-MRE-003', 'Hull Fabrication Work Order', 'Fabrication of steel hull sections', 'Fabrication', 'Completed', 'Medium', DATE '2026-04-26', DATE '2027-04-26', DATE '2027-04-26', 'V003', 'VRN-LUN-003', 'PR003', 'PROJ-MRE-003', 'CT003', 'AGR-MRE-003');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO004', 'WON-DEF-004', 'Patrol Vessel Upgrade Work Order', 'Upgrade radar and navigation systems', 'Upgrade', 'In Progress', 'High', DATE '2026-06-06', DATE '2028-06-06', null, 'V004', 'VRN-LUN-004', 'PR004', 'PROJ-DEF-004', 'CT004', 'AGR-DEF-004');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO005', 'WON-SHB-005', 'Engine Overhaul Work Order', 'Overhaul marine propulsion engines', 'Maintenance', 'Completed', 'High', DATE '2026-05-30', DATE '2027-05-30', DATE '2027-05-30', 'V005', 'VRN-LUN-005', 'PR005', 'PROJ-SHB-005', 'CT005', 'AGR-SHB-005');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO006', 'WON-CGD-006', 'Coast Guard Refitting Work Order', 'Refitting and system replacement', 'Refitting', 'Completed', 'Medium', DATE '2026-05-09', DATE '2027-05-09', DATE '2027-05-09', 'V006', 'VRN-LUN-006', 'PR006', 'PROJ-CGD-006', 'CT006', 'AGR-CGD-006');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO007', 'WON-MTE-007', 'Radar Integration Work Order', 'Install radar systems on vessels', 'Technology', 'In Progress', 'Medium', DATE '2026-06-12', DATE '2027-06-12', null, 'V007', 'VRN-LUN-007', 'PR007', 'PROJ-MTE-007', 'CT007', 'AGR-MTE-007');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO008', 'WON-MDE-008', 'Submarine Support Work Order', 'Submarine maintenance and support operations', 'Defence', 'In Progress', 'High', DATE '2026-05-18', DATE '2028-05-18', null, 'V008', 'VRN-LUN-008', 'PR008', 'PROJ-MDE-008', 'CT008', 'AGR-MDE-008');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO009', 'WON-OFE-009', 'Offshore Maintenance Work Order', 'Offshore platform structural maintenance', 'Offshore', 'Completed', 'Medium', DATE '2026-04-30', DATE '2027-04-30', DATE '2027-04-30', 'V009', 'VRN-LUN-009', 'PR009', 'PROJ-OFE-009', 'CT009', 'AGR-OFE-009');
insert into work_order (work_order_id, work_order_num, work_order_title, work_order_details, work_order_type, work_order_status, work_priority_level, work_start_date, work_due_date, work_actual_end_date, vessel_id, vessel_registration_number, project_id, project_reference_num, contract_id, agreement_reference_number)
values ('WO010', 'WON-MSE-010', 'Fleet Maintenance Planning Work Order', 'Long-term naval fleet maintenance planning', 'Strategic', 'Planned', 'High', DATE '2026-06-15', DATE '2029-06-15', null, 'V010', 'VRN-LUN-010', 'PR010', 'PROJ-MSE-010', 'CT010', 'AGR-MSE-010');

prompt Inserting data into table 'work_report'...
-- (10 records – use your original inserts; now references existing employees, work_orders, clients, contracts, etc.)

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT001', 'REP-MNT-001', 'Maintenance', 'Engine Performance Report', DATE '2026-05-20', 'Report on vessel engine efficiency and issues', DATE '2026-05-22', 'www.lunas.gov.my/rpt001.pdf', 'Repair engine components', 'Completed', 'V001', 'VRN-LUN-001', 'WO001', 'WON-DEF-001', '2003150001', '900101-14-5678', 'C001', 'GLC-DEF-4821', 'CT001', 'AGR-DEF-001', 'PR001', 'PROJ-DEF-001', 'INV001', 'INV-LUN-001', 'PAY001', 'PAY-COM-001');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT002', 'REP-INS-002', 'Inspection', 'Hull Integrity Report', DATE '2026-06-01', 'Structural inspection of ship hull condition', DATE '2026-06-02', 'www.lunas.gov.my/rpt002.pdf', 'Reinforce hull structure', 'Completed', 'V002', 'VRN-LUN-002', 'WO002', 'WON-MDE-002', '1908120004', '880212-10-3344', 'C002', 'GOV-MDE-1934', 'CT002', 'AGR-MDE-002', 'PR002', 'PROJ-MDE-002', 'INV002', 'INV-LUN-002', 'PAY002', 'PAY-PAR-002');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT003', 'REP-PRG-003', 'Progress', 'Project Progress Report', DATE '2026-04-28', 'Progress update on fabrication works', DATE '2026-04-30', 'www.lunas.gov.my/rpt003.pdf', 'Continue fabrication schedule', 'Completed', 'V003', 'VRN-LUN-003', 'WO003', 'WON-MRE-003', '2007060007', '910305-08-7788', 'C003', 'PVT-MRE-7712', 'CT003', 'AGR-MRE-003', 'PR003', 'PROJ-MRE-003', 'INV003', 'INV-LUN-003', 'PAY003', 'PAY-COM-003');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT004', 'REP-HSE-004', 'Safety', 'Safety Compliance Report', DATE '2026-06-10', 'Safety audit for shipyard operations', DATE '2026-06-11', 'www.lunas.gov.my/rpt004.pdf', 'Improve safety protocols', 'Completed', 'V004', 'VRN-LUN-004', 'WO004', 'WON-DEF-004', '2139140011', '850617-12-9900', 'C004', 'GLC-DEF-5603', 'CT004', 'AGR-DEF-004', 'PR004', 'PROJ-DEF-004', 'INV004', 'INV-LUN-004', 'PAY004', 'PAY-PAR-004');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT005', 'REP-TEC-005', 'Technical', 'Radar System Report', DATE '2026-05-15', 'Evaluation of radar integration performance', DATE '2026-05-16', 'www.lunas.gov.my/rpt005.pdf', 'Optimize radar calibration', 'Completed', 'V005', 'VRN-LUN-005', 'WO005', 'WON-SHB-005', '2304030005', '920808-07-2211', 'C005', 'CON-SHB-2291', 'CT005', 'AGR-SHB-005', 'PR005', 'PROJ-SHB-005', 'INV005', 'INV-LUN-005', 'PAY005', 'PAY-COM-005');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT006', 'REP-MNT-006', 'Maintenance', 'Submarine Support Report', DATE '2026-05-18', 'Submarine maintenance findings', DATE '2026-05-19', 'www.lunas.gov.my/rpt006.pdf', 'Schedule submarine servicing', 'Completed', 'V006', 'VRN-LUN-006', 'WO006', 'WON-CGD-006', '2111180006', '870909-05-4455', 'C006', 'GOV-CGD-8045', 'CT006', 'AGR-CGD-006', 'PR006', 'PROJ-CGD-006', 'INV006', 'INV-LUN-006', 'PAY006', 'PAY-COM-006');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT007', 'REP-OPR-007', 'Operational', 'Fleet Readiness Report', DATE '2026-06-12', 'Assessment of fleet operational readiness', DATE '2026-06-13', 'www.lunas.gov.my/rpt007.pdf', 'Increase fleet readiness checks', 'Completed', 'V007', 'VRN-LUN-007', 'WO007', 'WON-MTE-007', '2201200003', '930111-03-6677', 'C007', 'PVT-MTE-3906', 'CT007', 'AGR-MTE-007', 'PR007', 'PROJ-MTE-007', 'INV007', 'INV-LUN-007', 'PAY007', 'PAY-COM-007');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT008', 'REP-ENG-008', 'Engineering', 'Offshore Structure Report', DATE '2026-04-30', 'Structural analysis of offshore platform', DATE '2026-05-01', 'www.lunas.gov.my/rpt008.pdf', 'Strengthen offshore structures', 'Completed', 'V008', 'VRN-LUN-008', 'WO008', 'WON-MDE-008', '2402010008', '860223-09-8899', 'C008', 'GLC-MDE-1187', 'CT008', 'AGR-MDE-008', 'PR008', 'PROJ-MDE-008', 'INV008', 'INV-LUN-008', 'PAY008', 'PAY-PAR-008');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT009', 'REP-LOG-009', 'Logistics', 'Supply Chain Report', DATE '2026-05-25', 'Review of logistics and supply efficiency', DATE '2026-05-26', 'www.lunas.gov.my/rpt009.pdf', 'Improve supply chain efficiency', 'Completed', 'V009', 'VRN-LUN-009', 'WO009', 'WON-OFE-009', '1806250009', '900404-11-1122', 'C009', 'CON-OFE-6673', 'CT009', 'AGR-OFE-009', 'PR009', 'PROJ-OFE-009', 'INV009', 'INV-LUN-009', 'PAY009', 'PAY-COM-009');

insert into work_report (report_id, report_reference_num, report_type, report_title, report_created_date, report_description, report_updated_date, report_attachment_reference_url, suggestion_action, report_status, vessel_id, vessel_registration_number, work_order_id, work_order_num, employee_id, employee_nric, client_id, client_reference_num, contract_id, agreement_reference_number, project_id, project_reference_num, invoice_id, invoice_number, payment_id, payment_reference_num)
values ('RPT010', 'REP-STR-010', 'Strategic', 'Naval Fleet Strategy Report', DATE '2026-06-15', 'Long-term fleet planning analysis', DATE '2026-06-16', 'www.lunas.gov.my/rpt010.pdf', 'Revise fleet strategy planning', 'Completed', 'V010', 'VRN-LUN-010', 'WO010', 'WON-MSE-010', '2209140010', '940505-02-5566', 'C010', 'GOV-MSE-9052', 'CT010', 'AGR-MSE-010', 'PR010', 'PROJ-MSE-010', 'INV010', 'INV-LUN-010', 'PAY010', 'PAY-PAR-010');

prompt Inserting data into table 'attendance'...

insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT001', 'ATT-ENG-001', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 07:55:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:10:00', 'YYYY-MM-DD HH24:MI:SS'), 9.25, 'Present', 'Biometric', '2003150001', '900101-14-5678', 'D001', 'ENG');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT002', 'ATT-FIN-002', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:35:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:40:00', 'YYYY-MM-DD HH24:MI:SS'), 9.00, 'Present', 'Manual', '1908120004', '880212-10-3344', 'D004', 'FIN');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT003', 'ATT-IT-003', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:10:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:05:00', 'YYYY-MM-DD HH24:MI:SS'), 8.75, 'Present', 'Biometric', '2007060007', '910305-08-7788', 'D003', 'IT');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT004', 'ATT-OPS-004', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9.00, 'Present', 'RFID', '2304030005', '920808-07-2211', 'D005', 'OPS');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT005', 'ATT-PROC-005', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:25:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:35:00', 'YYYY-MM-DD HH24:MI:SS'), 9.25, 'Present', 'Biometric', '2111180006', '870909-05-4455', 'D006', 'PROC');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT006', 'ATT-HR-006', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 09:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 18:10:00', 'YYYY-MM-DD HH24:MI:SS'), 9.00, 'Present', 'Manual', '2402010008', '860223-09-8899', 'D002', 'HR');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT007', 'ATT-IT-007', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:15:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:20:00', 'YYYY-MM-DD HH24:MI:SS'), 8.75, 'Present', 'Biometric', '2201200003', '930111-03-6677', 'D003', 'IT');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT008', 'ATT-HR-008', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 18:00:00', 'YYYY-MM-DD HH24:MI:SS'), 9.00, 'Present', 'RFID', '2402010008', '860223-09-8899', 'D002', 'HR');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT009', 'ATT-OPS-009', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:05:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:00:00', 'YYYY-MM-DD HH24:MI:SS'), 8.75, 'Present', 'Biometric', '1806250009', '900404-11-1122', 'D005', 'OPS');
insert into attendance (attendance_id, attendance_code, attendance_date, scheduled_checkin_time, scheduled_checkout_time, checkin_time, checkout_time, hours_worked, attendance_status, attendance_method, employee_id, employee_nric, department_id, department_code) 
values ('AT010', 'ATT-FIN-010', DATE '2026-06-01', TO_TIMESTAMP('2026-06-01 08:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:30:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 08:40:00', 'YYYY-MM-DD HH24:MI:SS'), TO_TIMESTAMP('2026-06-01 17:45:00', 'YYYY-MM-DD HH24:MI:SS'), 9.00, 'Present', 'Manual', '2209140010', '940505-02-5566', 'D004', 'FIN');

prompt Inserting data into table 'payslip'...
-- (10 records – use your original inserts)
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS001', 'PSL-ENG-001', DATE '2026-01-31', DATE '2026-01-30', 8500.00, 500.00, 8000.00, DATE '2026-02-01', 'ACC-1001', 'Paid', '2003150001', '900101-14-5678', 'D001', 'ENG');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS002', 'PSL-FIN-002', DATE '2026-01-31', DATE '2026-01-30', 4500.00, 200.00, 4300.00, DATE '2026-02-01', 'ACC-1002', 'Paid', '1908120004', '880212-10-3344', 'D004', 'FIN');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS003', 'PSL-IT-003', DATE '2026-01-31', DATE '2026-01-30', 6200.00, 300.00, 5900.00, DATE '2026-02-01', 'ACC-1003', 'Paid', '2007060007', '910305-08-7788', 'D003', 'IT');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS004', 'PSL-FIN-004', DATE '2026-01-31', DATE '2026-01-30', 7800.00, 400.00, 7400.00, DATE '2026-02-01', 'ACC-1004', 'Paid', '2139140011', '850617-12-9900', 'D004', 'FIN');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS005', 'PSL-OPS-005', DATE '2026-01-31', DATE '2026-01-30', 5000.00, 250.00, 4750.00, DATE '2026-02-01', 'ACC-1005', 'Paid', '2304030005', '920808-07-2211', 'D005', 'OPS');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS006', 'PSL-PROC-006', DATE '2026-01-31', DATE '2026-01-30', 4800.00, 200.00, 4600.00, DATE '2026-02-01', 'ACC-1006', 'Paid', '2111180006', '870909-05-4455', 'D006', 'PROC');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS007', 'PSL-IT-007', DATE '2026-01-31', DATE '2026-01-30', 6500.00, 350.00, 6150.00, DATE '2026-02-01', 'ACC-1007', 'Paid', '2201200003', '930111-03-6677', 'D003', 'IT');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS008', 'PSL-HR-008', DATE '2026-01-31', DATE '2026-01-30', 3200.00, 100.00, 3100.00, DATE '2026-02-01', 'ACC-1008', 'Paid', '2402010008', '860223-09-8899', 'D002', 'HR');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS009', 'PSL-OPS-009', DATE '2026-01-31', DATE '2026-01-30', 9200.00, 600.00, 8600.00, DATE '2026-02-01', 'ACC-1009', 'Paid', '1806250009', '900404-11-1122', 'D005', 'OPS');
insert into payslip (payslip_id, payslip_code, scheduled_date, received_date, gross_salary, deductions, net_salary, salary_payment_date, account_number, payslip_status, employee_id, employee_nric, department_id, department_code)
values ('PS010', 'PSL-FIN-010', DATE '2026-01-31', DATE '2026-01-30', 5500.00, 300.00, 5200.00, DATE '2026-02-01', 'ACC-1010', 'Paid', '2209140010', '940505-02-5566', 'D004', 'FIN');

prompt Inserting data into table 'company_certification'...
-- (10 records – use your original inserts)
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT001', 'CERT-HSE-001', 'Occupational Safety Certification', 'Safety', DATE '2023-01-15', DATE '2026-01-15', DATE '2025-12-15', DATE '2025-12-20', 'Maritime Certification Board', 'Active', 'D001', 'ENG');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT002', 'CERT-ENG-002', 'Marine Engineering Certification', 'Technical', DATE '2022-06-10', DATE '2027-06-10', DATE '2027-05-10', DATE '2025-06-15', 'Maritime Certification Board', 'Active', 'D001', 'ENG');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT003', 'CERT-IT-003', 'Information Security Certification', 'Professional', DATE '2024-03-20', DATE '2027-03-20', DATE '2027-02-20', DATE '2015-03-25', 'IT Governance Council', 'Active', 'D003', 'IT');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT004', 'CERT-FIN-004', 'Financial Compliance Certification', 'Compliance', DATE '2023-08-05', DATE '2026-08-05', DATE '2026-07-05', DATE '2015-07-10', 'Financial Standards Authority', 'Active', 'D004', 'FIN');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT005', 'CERT-OPS-005', 'Shipyard Operations Certification', 'Operational', DATE '2022-11-18', DATE '2027-11-18', DATE '2027-10-18', DATE '2015-11-25', 'Marine Operations Council', 'Active', 'D005', 'OPS');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT006', 'CERT-PRO-006', 'Procurement Management Certification', 'Professional', DATE '2024-01-12', DATE '2027-01-12', DATE '2026-12-12', DATE '2015-12-18', 'Procurement Standards Board', 'Active', 'D006', 'PROC');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT007', 'CERT-ENG-007', 'Structural Inspection Certification', 'Technical', DATE '2023-04-08', DATE '2026-04-08', DATE '2026-03-08', DATE '2015-03-15', 'Maritime Certification Board', 'Active', 'D001', 'ENG');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT008', 'CERT-HR-008', 'Human Resource Management Certification', 'Professional', DATE '2024-02-01', DATE '2027-02-01', DATE '2026-12-01', DATE '2015-12-05', 'Human Resource Development Board', 'Active', 'D002', 'HR');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT009', 'CERT-OPS-009', 'Maritime Safety Management Certification', 'Safety', DATE '2022-09-22', DATE '2027-09-22', DATE '2027-08-22', DATE '2015-08-28', 'Marine Safety Authority', 'Active', 'D005', 'OPS');
insert into company_certification (certification_id, certificate_serial_num, certificate_name, certificate_type, issue_date, expiry_date, renewal_date, verification_date, verified_by, certificate_status, department_id, department_code)
values ('CERT010', 'CERT-FIN-010', 'Audit & Risk Certification', 'Compliance', DATE '2023-05-30', DATE '2026-05-30', DATE '2026-04-30', DATE '2015-05-05', 'Financial Standards Authority', 'Active', 'D004', 'FIN');

prompt Inserting data into all junction tables...
-- All junction tables: use your original INSERT statements.
-- They will now succeed because all parent records exist.

-- contract_employee
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT001', 'AGR-DEF-001', '2003150001', '900101-14-5678');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT002', 'AGR-MDE-002', '1908120004', '880212-10-3344');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT003', 'AGR-MRE-003', '2007060007', '910305-08-7788');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT004', 'AGR-DEF-004', '2139140011', '850617-12-9900');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT005', 'AGR-SHB-005', '2304030005', '920808-07-2211');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT006', 'AGR-CGD-006', '2111180006', '870909-05-4455');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT007', 'AGR-MTE-007', '2201200003', '930111-03-6677');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT008', 'AGR-MDE-008', '2402010008', '860223-09-8899');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT009', 'AGR-OFE-009', '1806250009', '900404-11-1122');
insert into contract_employee (contract_id, agreement_reference_number, employee_id, employee_nric) values ('CT010', 'AGR-MSE-010', '2209140010', '940505-02-5566');

-- employee_purchase_order (now references existing purchase orders)
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2003150001', '900101-14-5678', 'PO001', 'PO-EQP-001');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('1908120004', '880212-10-3344', 'PO002', 'PO-EQP-002');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2007060007', '910305-08-7788', 'PO003', 'PO-EQP-003');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2139140011', '850617-12-9900', 'PO004', 'PO-EQP-004');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2304030005', '920808-07-2211', 'PO005', 'PO-EQP-005');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2111180006', '870909-05-4455', 'PO006', 'PO-EQP-006');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2201200003', '930111-03-6677', 'PO007', 'PO-EQP-007');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2402010008', '860223-09-8899', 'PO008', 'PO-EQP-008');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('1806250009', '900404-11-1122', 'PO009', 'PO-EQP-009');
insert into employee_purchase_order (employee_id, employee_nric, purchase_id, purchase_reference_num) values ('2209140010', '940505-02-5566', 'PO010', 'PO-EQP-010');

-- employee_delivery (now references existing deliveries)
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2003150001', '900101-14-5678', 'DEL001', 'TRK-LUN-001');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('1908120004', '880212-10-3344', 'DEL002', 'TRK-LUN-002');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2007060007', '910305-08-7788', 'DEL003', 'TRK-LUN-003');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2139140011', '850617-12-9900', 'DEL004', 'TRK-LUN-004');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2304030005', '920808-07-2211', 'DEL005', 'TRK-LUN-005');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2111180006', '870909-05-4455', 'DEL006', 'TRK-LUN-006');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2201200003', '930111-03-6677', 'DEL007', 'TRK-LUN-007');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2402010008', '860223-09-8899', 'DEL008', 'TRK-LUN-008');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('1806250009', '900404-11-1122', 'DEL009', 'TRK-LUN-009');
insert into employee_delivery (employee_id, employee_nric, delivery_id, tracking_number) values ('2209140010', '940505-02-5566', 'DEL010', 'TRK-LUN-010');

-- work_order_employee
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO001', 'WON-DEF-001', '2003150001', '900101-14-5678');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO002', 'WON-MDE-002', '1908120004', '880212-10-3344');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO003', 'WON-MRE-003', '2007060007', '910305-08-7788');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO004', 'WON-DEF-004', '2139140011', '850617-12-9900');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO005', 'WON-SHB-005', '2304030005', '920808-07-2211');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO006', 'WON-CGD-006', '2111180006', '870909-05-4455');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO007', 'WON-MTE-007', '2201200003', '930111-03-6677');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO008', 'WON-MDE-008', '2402010008', '860223-09-8899');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO009', 'WON-OFE-009', '1806250009', '900404-11-1122');
insert into work_order_employee (work_order_id, work_order_num, employee_id, employee_nric) values ('WO010', 'WON-MSE-010', '2209140010', '940505-02-5566');

-- invoice_employee (now references existing invoices)
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV001', 'INV-LUN-001', '2003150001', '900101-14-5678');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV002', 'INV-LUN-002', '1908120004', '880212-10-3344');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV003', 'INV-LUN-003', '2007060007', '910305-08-7788');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV004', 'INV-LUN-004', '2139140011', '850617-12-9900');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV005', 'INV-LUN-005', '2304030005', '920808-07-2211');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV006', 'INV-LUN-006', '2111180006', '870909-05-4455');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV007', 'INV-LUN-007', '2201200003', '930111-03-6677');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV008', 'INV-LUN-008', '2402010008', '860223-09-8899');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV009', 'INV-LUN-009', '1806250009', '900404-11-1122');
insert into invoice_employee (invoice_id, invoice_number, employee_id, employee_nric) values ('INV010', 'INV-LUN-010', '2209140010', '940505-02-5566');

-- vessel_employee (now references existing vessels)
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V001', 'VRN-LUN-001', '2003150001', '900101-14-5678');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V002', 'VRN-LUN-002', '1908120004', '880212-10-3344');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V003', 'VRN-LUN-003', '2007060007', '910305-08-7788');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V004', 'VRN-LUN-004', '2139140011', '850617-12-9900');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V005', 'VRN-LUN-005', '2304030005', '920808-07-2211');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V006', 'VRN-LUN-006', '2111180006', '870909-05-4455');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V007', 'VRN-LUN-007', '2201200003', '930111-03-6677');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V008', 'VRN-LUN-008', '2402010008', '860223-09-8899');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V009', 'VRN-LUN-009', '1806250009', '900404-11-1122');
insert into vessel_employee (vessel_id, vessel_registration_number, employee_id, employee_nric) values ('V010', 'VRN-LUN-010', '2209140010', '940505-02-5566');

-- employee_company_certification (no FK issues)
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2003150001', '900101-14-5678', 'CERT001', 'CERT-HSE-001');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('1908120004', '880212-10-3344', 'CERT002', 'CERT-ENG-002');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2007060007', '910305-08-7788', 'CERT003', 'CERT-IT-003');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2139140011', '850617-12-9900', 'CERT004', 'CERT-FIN-004');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2304030005', '920808-07-2211', 'CERT005', 'CERT-OPS-005');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2111180006', '870909-05-4455', 'CERT006', 'CERT-PRO-006');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2201200003', '930111-03-6677', 'CERT007', 'CERT-ENG-007');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2402010008', '860223-09-8899', 'CERT008', 'CERT-HR-008');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('1806250009', '900404-11-1122', 'CERT009', 'CERT-OPS-009');
insert into employee_company_certification (employee_id, employee_nric, certification_id, certificate_serial_num) values ('2209140010', '940505-02-5566', 'CERT010', 'CERT-FIN-010');

-- employee_service_request
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2003150001', '900101-14-5678', 'R001', 'REQ-DEF-001');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('1908120004', '880212-10-3344', 'R002', 'REQ-MDE-002');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2007060007', '910305-08-7788', 'R003', 'REQ-MRE-003');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2139140011', '850617-12-9900', 'R004', 'REQ-DEF-004');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2304030005', '920808-07-2211', 'R005', 'REQ-SHB-005');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2111180006', '870909-05-4455', 'R006', 'REQ-CGD-006');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2201200003', '930111-03-6677', 'R007', 'REQ-MTE-007');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2402010008', '860223-09-8899', 'R008', 'REQ-MDE-008');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('1806250009', '900404-11-1122', 'R009', 'REQ-OFE-009');
insert into employee_service_request (employee_id, employee_nric, request_id, request_code) values ('2209140010', '940505-02-5566', 'R010', 'REQ-MSE-010');

-- department_work_order (now references existing work orders)
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D001', 'ENG', 'WO001', 'WON-DEF-001');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D002', 'HR', 'WO002', 'WON-MDE-002');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D003', 'IT', 'WO003', 'WON-MRE-003');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D004', 'FIN', 'WO004', 'WON-DEF-004');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D005', 'OPS', 'WO005', 'WON-SHB-005');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D006', 'PROC', 'WO006', 'WON-CGD-006');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D007', 'QAQC', 'WO007', 'WON-MTE-007');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D008', 'LOG', 'WO008', 'WON-MDE-008');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D009', 'RND', 'WO009', 'WON-OFE-009');
insert into department_work_order (department_id, department_code, work_order_id, work_order_num) values ('D010', 'LEG', 'WO010', 'WON-MSE-010');

-- department_external_party
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P001', 'REG-NUM-1901001', 'D001', 'ENG');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P002', 'REG-NUM-2012002', 'D002', 'HR');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P003', 'REG-NUM-1812003', 'D003', 'IT');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P004', 'REG-NUM-2112004', 'D004', 'FIN');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P005', 'REG-NUM-1711005', 'D005', 'OPS');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P006', 'REG-NUM-2202006', 'D006', 'PROC');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P007', 'REG-NUM-1908007', 'D007', 'QAQC');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P008', 'REG-NUM-2006008', 'D008', 'LOG');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P009', 'REG-NUM-1804009', 'D009', 'RND');
insert into department_external_party (party_id, registration_number, department_id, department_code) values ('P010', 'REG-NUM-2307010', 'D010', 'LEG');

-- external_party_employee
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P001', 'REG-NUM-1901001', '2003150001', '900101-14-5678');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P002', 'REG-NUM-2012002', '1908120004', '880212-10-3344');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P003', 'REG-NUM-1812003', '2007060007', '910305-08-7788');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P004', 'REG-NUM-2112004', '2139140011', '850617-12-9900');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P005', 'REG-NUM-1711005', '2304030005', '920808-07-2211');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P006', 'REG-NUM-2202006', '2111180006', '870909-05-4455');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P007', 'REG-NUM-1908007', '2201200003', '930111-03-6677');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P008', 'REG-NUM-2006008', '2402010008', '860223-09-8899');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P009', 'REG-NUM-1804009', '1806250009', '900404-11-1122');
insert into external_party_employee (party_id, registration_number, employee_id, employee_nric) values ('P010', 'REG-NUM-2307010', '2209140010', '940505-02-5566');

-- material_delivery (now references existing deliveries)
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT001', 'STL-A36', 'DEL001', 'TRK-LUN-001');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT002', 'ENG-GR', 'DEL002', 'TRK-LUN-002');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT003', 'RAD-MOD', 'DEL003', 'TRK-LUN-003');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT004', 'HYD-PMP', 'DEL004', 'TRK-LUN-004');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT005', 'CAB-MAR', 'DEL005', 'TRK-LUN-005');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT006', 'CLG-UNIT', 'DEL006', 'TRK-LUN-006');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT007', 'PRP-BLD', 'DEL007', 'TRK-LUN-007');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT008', 'NAV-SEN', 'DEL008', 'TRK-LUN-008');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT009', 'FUL-PMP', 'DEL009', 'TRK-LUN-009');
insert into material_delivery (material_item_id, material_code, delivery_id, tracking_number) values ('MAT010', 'SAF-HLM', 'DEL010', 'TRK-LUN-010');

-- employee_project (now references existing projects)
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2003150001', '900101-14-5678', 'PR001', 'PROJ-DEF-001');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('1908120004', '880212-10-3344', 'PR002', 'PROJ-MDE-002');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2007060007', '910305-08-7788', 'PR003', 'PROJ-MRE-003');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2139140011', '850617-12-9900', 'PR004', 'PROJ-DEF-004');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2304030005', '920808-07-2211', 'PR005', 'PROJ-SHB-005');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2111180006', '870909-05-4455', 'PR006', 'PROJ-CGD-006');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2201200003', '930111-03-6677', 'PR007', 'PROJ-MTE-007');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2402010008', '860223-09-8899', 'PR008', 'PROJ-MDE-008');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('1806250009', '900404-11-1122', 'PR009', 'PROJ-OFE-009');
insert into employee_project (employee_id, employee_nric, project_id, project_reference_num) values ('2209140010', '940505-02-5566', 'PR010', 'PROJ-MSE-010');

-- purchase_order_material (now references existing purchase orders)
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO001', 'PO-EQP-001', 'MAT001', 'STL-A36');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO002', 'PO-EQP-002', 'MAT002', 'ENG-GR');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO003', 'PO-EQP-003', 'MAT003', 'RAD-MOD');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO004', 'PO-EQP-004', 'MAT004', 'HYD-PMP');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO005', 'PO-EQP-005', 'MAT005', 'CAB-MAR');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO006', 'PO-EQP-006', 'MAT006', 'CLG-UNIT');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO007', 'PO-EQP-007', 'MAT007', 'PRP-BLD');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO008', 'PO-EQP-008', 'MAT008', 'NAV-SEN');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO009', 'PO-EQP-009', 'MAT009', 'FUL-PMP');
insert into purchase_order_material (purchase_id, purchase_reference_num, material_item_id, material_code) values ('PO010', 'PO-EQP-010', 'MAT010', 'SAF-HLM');

-- project_vessel (now references existing vessels)
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR001', 'PROJ-DEF-001', 'V001', 'VRN-LUN-001');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR002', 'PROJ-MDE-002', 'V002', 'VRN-LUN-002');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR003', 'PROJ-MRE-003', 'V003', 'VRN-LUN-003');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR004', 'PROJ-DEF-004', 'V004', 'VRN-LUN-004');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR005', 'PROJ-SHB-005', 'V005', 'VRN-LUN-005');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR006', 'PROJ-CGD-006', 'V006', 'VRN-LUN-006');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR007', 'PROJ-MTE-007', 'V007', 'VRN-LUN-007');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR008', 'PROJ-MDE-008', 'V008', 'VRN-LUN-008');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR009', 'PROJ-OFE-009', 'V009', 'VRN-LUN-009');
insert into project_vessel (project_id, project_reference_num, vessel_id, vessel_registration_number) values ('PR010', 'PROJ-MSE-010', 'V010', 'VRN-LUN-010');

-- department_service_request (now references existing service requests)
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D001', 'ENG', 'R001', 'REQ-DEF-001');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D002', 'HR', 'R002', 'REQ-MDE-002');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D003', 'IT', 'R003', 'REQ-MRE-003');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D004', 'FIN', 'R004', 'REQ-DEF-004');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D005', 'OPS', 'R005', 'REQ-SHB-005');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D006', 'PROC', 'R006', 'REQ-CGD-006');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D007', 'QAQC', 'R007', 'REQ-MTE-007');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D008', 'LOG', 'R008', 'REQ-MDE-008');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D009', 'RND', 'R009', 'REQ-OFE-009');
insert into department_service_request (department_id, department_code, request_id, request_code) values ('D010', 'LEG', 'R010', 'REQ-MSE-010');

-- project_company_certification (now references existing projects)
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR001', 'PROJ-DEF-001', 'CERT001', 'CERT-HSE-001');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR002', 'PROJ-MDE-002', 'CERT002', 'CERT-ENG-002');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR003', 'PROJ-MRE-003', 'CERT003', 'CERT-IT-003');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR004', 'PROJ-DEF-004', 'CERT004', 'CERT-FIN-004');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR005', 'PROJ-SHB-005', 'CERT005', 'CERT-OPS-005');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR006', 'PROJ-CGD-006', 'CERT006', 'CERT-PRO-006');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR007', 'PROJ-MTE-007', 'CERT007', 'CERT-ENG-007');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR008', 'PROJ-MDE-008', 'CERT008', 'CERT-HR-008');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR009', 'PROJ-OFE-009', 'CERT009', 'CERT-OPS-009');
insert into project_company_certification (project_id, project_reference_num, certification_id, certificate_serial_num) values ('PR010', 'PROJ-MSE-010', 'CERT010', 'CERT-FIN-010');

-- invoice_payment (now references existing invoices and payments)
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV001', 'INV-LUN-001', 'PAY001', 'PAY-COM-001');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV002', 'INV-LUN-002', 'PAY002', 'PAY-PAR-002');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV003', 'INV-LUN-003', 'PAY003', 'PAY-COM-003');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV004', 'INV-LUN-004', 'PAY004', 'PAY-PAR-004');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV005', 'INV-LUN-005', 'PAY005', 'PAY-COM-005');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV006', 'INV-LUN-006', 'PAY006', 'PAY-COM-006');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV007', 'INV-LUN-007', 'PAY007', 'PAY-COM-007');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV008', 'INV-LUN-008', 'PAY008', 'PAY-PAR-008');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV009', 'INV-LUN-009', 'PAY009', 'PAY-COM-009');
insert into invoice_payment (invoice_id, invoice_number, payment_id, payment_reference_num) values ('INV010', 'INV-LUN-010', 'PAY010', 'PAY-PAR-010');

-- employee_payment (no FK issues)
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2003150001', '900101-14-5678', 'PAY001', 'PAY-COM-001');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('1908120004', '880212-10-3344', 'PAY002', 'PAY-PAR-002');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2007060007', '910305-08-7788', 'PAY003', 'PAY-COM-003');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2139140011', '850617-12-9900', 'PAY004', 'PAY-PAR-004');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2304030005', '920808-07-2211', 'PAY005', 'PAY-COM-005');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2111180006', '870909-05-4455', 'PAY006', 'PAY-COM-006');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2201200003', '930111-03-6677', 'PAY007', 'PAY-COM-007');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2402010008', '860223-09-8899', 'PAY008', 'PAY-PAR-008');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('1806250009', '900404-11-1122', 'PAY009', 'PAY-COM-009');
insert into employee_payment (employee_id, employee_nric, payment_id, payment_reference_num) values ('2209140010', '940505-02-5566', 'PAY010', 'PAY-PAR-010');

-- project_payment (now references existing projects)
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY001', 'PAY-COM-001', 'PR001', 'PROJ-DEF-001');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY002', 'PAY-PAR-002', 'PR002', 'PROJ-MDE-002');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY003', 'PAY-COM-003', 'PR003', 'PROJ-MRE-003');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY004', 'PAY-PAR-004', 'PR004', 'PROJ-DEF-004');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY005', 'PAY-COM-005', 'PR005', 'PROJ-SHB-005');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY006', 'PAY-COM-006', 'PR006', 'PROJ-CGD-006');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY007', 'PAY-COM-007', 'PR007', 'PROJ-MTE-007');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY008', 'PAY-PAR-008', 'PR008', 'PROJ-MDE-008');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY009', 'PAY-COM-009', 'PR009', 'PROJ-OFE-009');
insert into project_payment (payment_id, payment_reference_num, project_id, project_reference_num) values ('PAY010', 'PAY-PAR-010', 'PR010', 'PROJ-MSE-010');

-- equipment_project (now references existing equipment and projects)
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ001', 'EQ-LUN-001-STEEL', 'PR001', 'PROJ-DEF-001');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ002', 'EQ-LUN-002-ENG', 'PR002', 'PROJ-MDE-002');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ003', 'EQ-LUN-003-RAD', 'PR003', 'PROJ-MRE-003');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ004', 'EQ-LUN-004-HYD', 'PR004', 'PROJ-DEF-004');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ005', 'EQ-LUN-005-CAB', 'PR005', 'PROJ-SHB-005');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ006', 'EQ-LUN-006-CLG', 'PR006', 'PROJ-CGD-006');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ007', 'EQ-LUN-007-PRP', 'PR007', 'PROJ-MTE-007');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ008', 'EQ-LUN-008-NAV', 'PR008', 'PROJ-MDE-008');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ009', 'EQ-LUN-009-FUL', 'PR009', 'PROJ-OFE-009');
insert into equipment_project (equipment_id, equipment_serial_num, project_id, project_reference_num) values ('EQ010', 'EQ-LUN-010-SAF', 'PR010', 'PROJ-MSE-010');

-- department_vessel (now references existing vessels)
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D001', 'ENG', 'V001', 'VRN-LUN-001');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D002', 'HR', 'V002', 'VRN-LUN-002');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D003', 'IT', 'V003', 'VRN-LUN-003');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D004', 'FIN', 'V004', 'VRN-LUN-004');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D005', 'OPS', 'V005', 'VRN-LUN-005');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D006', 'PROC', 'V006', 'VRN-LUN-006');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D007', 'QAQC', 'V007', 'VRN-LUN-007');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D008', 'LOG', 'V008', 'VRN-LUN-008');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D009', 'RND', 'V009', 'VRN-LUN-009');
insert into department_vessel (department_id, department_code, vessel_id, vessel_registration_number) values ('D010', 'LEG', 'V010', 'VRN-LUN-010');

-- department_work_report (now references existing work reports)
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D001', 'ENG', 'RPT001', 'REP-MNT-001');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D002', 'HR', 'RPT002', 'REP-INS-002');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D003', 'IT', 'RPT003', 'REP-PRG-003');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D004', 'FIN', 'RPT004', 'REP-HSE-004');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D005', 'OPS', 'RPT005', 'REP-TEC-005');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D006', 'PROC', 'RPT006', 'REP-MNT-006');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D007', 'QAQC', 'RPT007', 'REP-OPR-007');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D008', 'LOG', 'RPT008', 'REP-ENG-008');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D009', 'RND', 'RPT009', 'REP-LOG-009');
insert into department_work_report (department_id, department_code, report_id, report_reference_num) values ('D010', 'LEG', 'RPT010', 'REP-STR-010');

-- purchase_order_payment (now references existing purchase orders and payments)
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO001', 'PO-EQP-001', 'PAY001', 'PAY-COM-001');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO002', 'PO-EQP-002', 'PAY002', 'PAY-PAR-002');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO003', 'PO-EQP-003', 'PAY003', 'PAY-COM-003');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO004', 'PO-EQP-004', 'PAY004', 'PAY-PAR-004');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO005', 'PO-EQP-005', 'PAY005', 'PAY-COM-005');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO006', 'PO-EQP-006', 'PAY006', 'PAY-COM-006');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO007', 'PO-EQP-007', 'PAY007', 'PAY-COM-007');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO008', 'PO-EQP-008', 'PAY008', 'PAY-PAR-008');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO009', 'PO-EQP-009', 'PAY009', 'PAY-COM-009');
insert into purchase_order_payment (purchase_id, purchase_reference_num, payment_id, payment_reference_num) values ('PO010', 'PO-EQP-010', 'PAY010', 'PAY-PAR-010');

-- supplier_material (now references existing suppliers)
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S001', 'GLC-ENG-4821', 'MAT001', 'STL-A36');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S002', 'GOV-LOG-1934', 'MAT002', 'ENG-GR');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S003', 'PVT-STE-7712', 'MAT003', 'RAD-MOD');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S004', 'GLC-ENG-5603', 'MAT004', 'HYD-PMP');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S005', 'CON-SHP-2291', 'MAT005', 'CAB-MAR');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S006', 'GOV-MAR-8045', 'MAT006', 'CLG-UNIT');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S007', 'PVT-TEC-3906', 'MAT007', 'PRP-BLD');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S008', 'GLC-SUB-1187', 'MAT008', 'NAV-SEN');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S009', 'CON-OFF-6673', 'MAT009', 'FUL-PMP');
insert into supplier_material (supplier_id, supplier_reference_num, material_item_id, material_code) values ('S010', 'GOV-FLE-9052', 'MAT010', 'SAF-HLM');

-- department_purchase_order (now references existing purchase orders)
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO001', 'PO-EQP-001', 'D001', 'ENG');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO002', 'PO-EQP-002', 'D002', 'HR');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO003', 'PO-EQP-003', 'D003', 'IT');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO004', 'PO-EQP-004', 'D004', 'FIN');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO005', 'PO-EQP-005', 'D005', 'OPS');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO006', 'PO-EQP-006', 'D006', 'PROC');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO007', 'PO-EQP-007', 'D007', 'QAQC');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO008', 'PO-EQP-008', 'D008', 'LOG');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO009', 'PO-EQP-009', 'D009', 'RND');
insert into department_purchase_order (purchase_id, purchase_reference_num, department_id, department_code) values ('PO010', 'PO-EQP-010', 'D010', 'LEG');

-- department_invoice (now references existing invoices)
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV001', 'INV-LUN-001', 'D001', 'ENG');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV002', 'INV-LUN-002', 'D002', 'HR');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV003', 'INV-LUN-003', 'D003', 'IT');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV004', 'INV-LUN-004', 'D004', 'FIN');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV005', 'INV-LUN-005', 'D005', 'OPS');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV006', 'INV-LUN-006', 'D006', 'PROC');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV007', 'INV-LUN-007', 'D007', 'QAQC');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV008', 'INV-LUN-008', 'D008', 'LOG');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV009', 'INV-LUN-009', 'D009', 'RND');
insert into department_invoice (invoice_id, invoice_number, department_id, department_code) values ('INV010', 'INV-LUN-010', 'D010', 'LEG');

-- material_project (now references existing projects)
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT001', 'STL-A36', 'PR001', 'PROJ-DEF-001');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT002', 'ENG-GR', 'PR002', 'PROJ-MDE-002');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT003', 'RAD-MOD', 'PR003', 'PROJ-MRE-003');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT004', 'HYD-PMP', 'PR004', 'PROJ-DEF-004');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT005', 'CAB-MAR', 'PR005', 'PROJ-SHB-005');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT006', 'CLG-UNIT', 'PR006', 'PROJ-CGD-006');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT007', 'PRP-BLD', 'PR007', 'PROJ-MTE-007');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT008', 'NAV-SEN', 'PR008', 'PROJ-MDE-008');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT009', 'FUL-PMP', 'PR009', 'PROJ-OFE-009');
insert into material_project (material_item_id, material_code, project_id, project_reference_num) values ('MAT010', 'SAF-HLM', 'PR010', 'PROJ-MSE-010');

-- employee_material (no FK issues)
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2003150001', '900101-14-5678', 'MAT001', 'STL-A36');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('1908120004', '880212-10-3344', 'MAT002', 'ENG-GR');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2007060007', '910305-08-7788', 'MAT003', 'RAD-MOD');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2139140011', '850617-12-9900', 'MAT004', 'HYD-PMP');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2304030005', '920808-07-2211', 'MAT005', 'CAB-MAR');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2111180006', '870909-05-4455', 'MAT006', 'CLG-UNIT');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2201200003', '930111-03-6677', 'MAT007', 'PRP-BLD');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2402010008', '860223-09-8899', 'MAT008', 'NAV-SEN');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('1806250009', '900404-11-1122', 'MAT009', 'FUL-PMP');
insert into employee_material (employee_id, employee_nric, material_item_id, material_code) values ('2209140010', '940505-02-5566', 'MAT010', 'SAF-HLM');

-- employee_equipment (now references existing equipment)
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2003150001', '900101-14-5678', 'EQ001', 'EQ-LUN-001-STEEL');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('1908120004', '880212-10-3344', 'EQ002', 'EQ-LUN-002-ENG');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2007060007', '910305-08-7788', 'EQ003', 'EQ-LUN-003-RAD');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2139140011', '850617-12-9900', 'EQ004', 'EQ-LUN-004-HYD');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2304030005', '920808-07-2211', 'EQ005', 'EQ-LUN-005-CAB');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2111180006', '870909-05-4455', 'EQ006', 'EQ-LUN-006-CLG');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2201200003', '930111-03-6677', 'EQ007', 'EQ-LUN-007-PRP');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2402010008', '860223-09-8899', 'EQ008', 'EQ-LUN-008-NAV');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('1806250009', '900404-11-1122', 'EQ009', 'EQ-LUN-009-FUL');
insert into employee_equipment (employee_id, employee_nric, equipment_id, equipment_serial_num) values ('2209140010', '940505-02-5566', 'EQ010', 'EQ-LUN-010-SAF');

-- equipment_vessel (now references existing equipment and vessels)
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ001', 'EQ-LUN-001-STEEL', 'V001', 'VRN-LUN-001');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ002', 'EQ-LUN-002-ENG', 'V002', 'VRN-LUN-002');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ003', 'EQ-LUN-003-RAD', 'V003', 'VRN-LUN-003');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ004', 'EQ-LUN-004-HYD', 'V004', 'VRN-LUN-004');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ005', 'EQ-LUN-005-CAB', 'V005', 'VRN-LUN-005');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ006', 'EQ-LUN-006-CLG', 'V006', 'VRN-LUN-006');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ007', 'EQ-LUN-007-PRP', 'V007', 'VRN-LUN-007');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ008', 'EQ-LUN-008-NAV', 'V008', 'VRN-LUN-008');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ009', 'EQ-LUN-009-FUL', 'V009', 'VRN-LUN-009');
insert into equipment_vessel (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number) values ('EQ010', 'EQ-LUN-010-SAF', 'V010', 'VRN-LUN-010');

-- material_vessel (now references existing vessels)
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT001', 'STL-A36', 'V001', 'VRN-LUN-001');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT002', 'ENG-GR', 'V002', 'VRN-LUN-002');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT003', 'RAD-MOD', 'V003', 'VRN-LUN-003');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT004', 'HYD-PMP', 'V004', 'VRN-LUN-004');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT005', 'CAB-MAR', 'V005', 'VRN-LUN-005');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT006', 'CLG-UNIT', 'V006', 'VRN-LUN-006');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT007', 'PRP-BLD', 'V007', 'VRN-LUN-007');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT008', 'NAV-SEN', 'V008', 'VRN-LUN-008');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT009', 'FUL-PMP', 'V009', 'VRN-LUN-009');
insert into material_vessel (material_item_id, material_code, vessel_id, vessel_registration_number) values ('MAT010', 'SAF-HLM', 'V010', 'VRN-LUN-010');

-- equipment_work_order (now references existing equipment and work orders)
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ001', 'EQ-LUN-001-STEEL', 'WO001', 'WON-DEF-001');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ002', 'EQ-LUN-002-ENG', 'WO002', 'WON-MDE-002');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ003', 'EQ-LUN-003-RAD', 'WO003', 'WON-MRE-003');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ004', 'EQ-LUN-004-HYD', 'WO004', 'WON-DEF-004');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ005', 'EQ-LUN-005-CAB', 'WO005', 'WON-SHB-005');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ006', 'EQ-LUN-006-CLG', 'WO006', 'WON-CGD-006');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ007', 'EQ-LUN-007-PRP', 'WO007', 'WON-MTE-007');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ008', 'EQ-LUN-008-NAV', 'WO008', 'WON-MDE-008');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ009', 'EQ-LUN-009-FUL', 'WO009', 'WON-OFE-009');
insert into equipment_work_order (equipment_id, equipment_serial_num, work_order_id, work_order_num) values ('EQ010', 'EQ-LUN-010-SAF', 'WO010', 'WON-MSE-010');

-- material_work_order (now references existing work orders)
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT001', 'STL-A36', 'WO001', 'WON-DEF-001');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT002', 'ENG-GR', 'WO002', 'WON-MDE-002');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT003', 'RAD-MOD', 'WO003', 'WON-MRE-003');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT004', 'HYD-PMP', 'WO004', 'WON-DEF-004');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT005', 'CAB-MAR', 'WO005', 'WON-SHB-005');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT006', 'CLG-UNIT', 'WO006', 'WON-CGD-006');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT007', 'PRP-BLD', 'WO007', 'WON-MTE-007');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT008', 'NAV-SEN', 'WO008', 'WON-MDE-008');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT009', 'FUL-PMP', 'WO009', 'WON-OFE-009');
insert into material_work_order (material_item_id, material_code, work_order_id, work_order_num) values ('MAT010', 'SAF-HLM', 'WO010', 'WON-MSE-010');

-- equipment_work_report (now references existing equipment and work reports)
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ001', 'EQ-LUN-001-STEEL', 'RPT001', 'REP-MNT-001');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ002', 'EQ-LUN-002-ENG', 'RPT002', 'REP-INS-002');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ003', 'EQ-LUN-003-RAD', 'RPT003', 'REP-PRG-003');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ004', 'EQ-LUN-004-HYD', 'RPT004', 'REP-HSE-004');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ005', 'EQ-LUN-005-CAB', 'RPT005', 'REP-TEC-005');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ006', 'EQ-LUN-006-CLG', 'RPT006', 'REP-MNT-006');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ007', 'EQ-LUN-007-PRP', 'RPT007', 'REP-OPR-007');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ008', 'EQ-LUN-008-NAV', 'RPT008', 'REP-ENG-008');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ009', 'EQ-LUN-009-FUL', 'RPT009', 'REP-LOG-009');
insert into equipment_work_report (equipment_id, equipment_serial_num, report_id, report_reference_num) values ('EQ010', 'EQ-LUN-010-SAF', 'RPT010', 'REP-STR-010');

-- material_work_report (now references existing work reports)
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT001', 'STL-A36', 'RPT001', 'REP-MNT-001');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT002', 'ENG-GR', 'RPT002', 'REP-INS-002');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT003', 'RAD-MOD', 'RPT003', 'REP-PRG-003');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT004', 'HYD-PMP', 'RPT004', 'REP-HSE-004');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT005', 'CAB-MAR', 'RPT005', 'REP-TEC-005');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT006', 'CLG-UNIT', 'RPT006', 'REP-MNT-006');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT007', 'PRP-BLD', 'RPT007', 'REP-OPR-007');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT008', 'NAV-SEN', 'RPT008', 'REP-ENG-008');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT009', 'FUL-PMP', 'RPT009', 'REP-LOG-009');
insert into material_work_report (material_item_id, material_code, report_id, report_reference_num) values ('MAT010', 'SAF-HLM', 'RPT010', 'REP-STR-010');

-- material_contract (now references existing contracts)
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT001', 'STL-A36', 'CT001', 'AGR-DEF-001');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT002', 'ENG-GR', 'CT002', 'AGR-MDE-002');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT003', 'RAD-MOD', 'CT003', 'AGR-MRE-003');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT004', 'HYD-PMP', 'CT004', 'AGR-DEF-004');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT005', 'CAB-MAR', 'CT005', 'AGR-SHB-005');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT006', 'CLG-UNIT', 'CT006', 'AGR-CGD-006');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT007', 'PRP-BLD', 'CT007', 'AGR-MTE-007');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT008', 'NAV-SEN', 'CT008', 'AGR-MDE-008');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT009', 'FUL-PMP', 'CT009', 'AGR-OFE-009');
insert into material_contract (material_item_id, material_code, contract_id, agreement_reference_number) values ('MAT010', 'SAF-HLM', 'CT010', 'AGR-MSE-010');

-- equipment_contract (now references existing equipment and contracts)
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ001', 'EQ-LUN-001-STEEL', 'CT001', 'AGR-DEF-001');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ002', 'EQ-LUN-002-ENG', 'CT002', 'AGR-MDE-002');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ003', 'EQ-LUN-003-RAD', 'CT003', 'AGR-MRE-003');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ004', 'EQ-LUN-004-HYD', 'CT004', 'AGR-DEF-004');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ005', 'EQ-LUN-005-CAB', 'CT005', 'AGR-SHB-005');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ006', 'EQ-LUN-006-CLG', 'CT006', 'AGR-CGD-006');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ007', 'EQ-LUN-007-PRP', 'CT007', 'AGR-MTE-007');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ008', 'EQ-LUN-008-NAV', 'CT008', 'AGR-MDE-008');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ009', 'EQ-LUN-009-FUL', 'CT009', 'AGR-OFE-009');
insert into equipment_contract (equipment_id, equipment_serial_num, contract_id, agreement_reference_number) values ('EQ010', 'EQ-LUN-010-SAF', 'CT010', 'AGR-MSE-010');

-- invoice_material (now references existing invoices)
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV001', 'INV-LUN-001', 'MAT001', 'STL-A36');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV002', 'INV-LUN-002', 'MAT002', 'ENG-GR');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV003', 'INV-LUN-003', 'MAT003', 'RAD-MOD');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV004', 'INV-LUN-004', 'MAT004', 'HYD-PMP');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV005', 'INV-LUN-005', 'MAT005', 'CAB-MAR');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV006', 'INV-LUN-006', 'MAT006', 'CLG-UNIT');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV007', 'INV-LUN-007', 'MAT007', 'PRP-BLD');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV008', 'INV-LUN-008', 'MAT008', 'NAV-SEN');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV009', 'INV-LUN-009', 'MAT009', 'FUL-PMP');
insert into invoice_material (invoice_id, invoice_number, material_item_id, material_code) values ('INV010', 'INV-LUN-010', 'MAT010', 'SAF-HLM');

-- payment_equipment (now references existing equipment)
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY001', 'PAY-COM-001', 'EQ001', 'EQ-LUN-001-STEEL');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY002', 'PAY-PAR-002', 'EQ002', 'EQ-LUN-002-ENG');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY003', 'PAY-COM-003', 'EQ003', 'EQ-LUN-003-RAD');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY004', 'PAY-PAR-004', 'EQ004', 'EQ-LUN-004-HYD');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY005', 'PAY-COM-005', 'EQ005', 'EQ-LUN-005-CAB');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY006', 'PAY-COM-006', 'EQ006', 'EQ-LUN-006-CLG');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY007', 'PAY-COM-007', 'EQ007', 'EQ-LUN-007-PRP');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY008', 'PAY-PAR-008', 'EQ008', 'EQ-LUN-008-NAV');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY009', 'PAY-COM-009', 'EQ009', 'EQ-LUN-009-FUL');
insert into payment_equipment (payment_id, payment_reference_num, equipment_id, equipment_serial_num) values ('PAY010', 'PAY-PAR-010', 'EQ010', 'EQ-LUN-010-SAF');

-- delivery_payment (now references existing deliveries)
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL001', 'TRK-LUN-001', 'PAY001', 'PAY-COM-001');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL002', 'TRK-LUN-002', 'PAY002', 'PAY-PAR-002');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL003', 'TRK-LUN-003', 'PAY003', 'PAY-COM-003');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL004', 'TRK-LUN-004', 'PAY004', 'PAY-PAR-004');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL005', 'TRK-LUN-005', 'PAY005', 'PAY-COM-005');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL006', 'TRK-LUN-006', 'PAY006', 'PAY-COM-006');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL007', 'TRK-LUN-007', 'PAY007', 'PAY-COM-007');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL008', 'TRK-LUN-008', 'PAY008', 'PAY-PAR-008');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL009', 'TRK-LUN-009', 'PAY009', 'PAY-COM-009');
insert into delivery_payment (delivery_id, tracking_number, payment_id, payment_reference_num) values ('DEL010', 'TRK-LUN-010', 'PAY010', 'PAY-PAR-010');

-- employee_supervisor (self-referencing) -- fixed
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2003150001', '900101-14-5678');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '1908120004', '880212-10-3344');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2007060007', '910305-08-7788');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2139140011', '850617-12-9900');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2304030005', '920808-07-2211');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2111180006', '870909-05-4455');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2201200003', '930111-03-6677');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2402010008', '860223-09-8899');
insert into employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) values ('1806250009', '900404-11-1122', '2209140010', '940505-02-5566');
INSERT INTO employee_supervisor (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric) VALUES ('2003150001', '900101-14-5678', '2304030005', '920808-07-2211');



-- payment_material (no FK issues)
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY001', 'PAY-COM-001', 'MAT001', 'STL-A36');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY002', 'PAY-PAR-002', 'MAT002', 'ENG-GR');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY003', 'PAY-COM-003', 'MAT003', 'RAD-MOD');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY004', 'PAY-PAR-004', 'MAT004', 'HYD-PMP');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY005', 'PAY-COM-005', 'MAT005', 'CAB-MAR');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY006', 'PAY-COM-006', 'MAT006', 'CLG-UNIT');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY007', 'PAY-COM-007', 'MAT007', 'PRP-BLD');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY008', 'PAY-PAR-008', 'MAT008', 'NAV-SEN');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY009', 'PAY-COM-009', 'MAT009', 'FUL-PMP');
insert into payment_material (payment_id, payment_reference_num, material_item_id, material_code) values ('PAY010', 'PAY-PAR-010', 'MAT010', 'SAF-HLM');

prompt
prompt .......... ALL DATA INSERTED SUCCESSFULLY ..........
prompt

commit;