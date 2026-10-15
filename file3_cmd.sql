-- File3.sql
SET LINESIZE 500
SET WRAP OFF
SET TRIMOUT ON
SET TRIMSPOOL ON

-- 2. Add the pipe separator with spaces for readability
SET COLSEP ' | '

-- 3. Headers every 100 rows
SET PAGESIZE 100

-- 4. Remove "rows selected" message
SET FEEDBACK OFF

-- 5. CRITICAL: Define exact, fixed widths for ALL 12 columns
--    (This stops the massive whitespace and aligns everything)
COLUMN CLIENT_OWNERSHIP_TYPE     FORMAT A25
COLUMN INDUSTRY_SECTOR           FORMAT A20
COLUMN REQUEST_TITLE             FORMAT A30
COLUMN REQUEST_SERVICE           FORMAT A20
COLUMN CONTRACT_TITLE            FORMAT A35
COLUMN CONTRACT_SCOPE            FORMAT A45
COLUMN PROJECT_NAME              FORMAT A30
COLUMN PROJECT_TYPE              FORMAT A15
COLUMN VESSEL_NAME               FORMAT A20
COLUMN VESSEL_CATEGORY           FORMAT A25
COLUMN EMPLOYEE_NAME             FORMAT A15
COLUMN EMPLOYEE_JOB_POSITION     FORMAT A25
SELECT 
    c.client_ownership_type, -- 1 time
    c.industry_sector,
    sr.request_title, -- 1 time
    sr.request_service,
    ct.contract_title, -- 1 time
    ct.contract_scope,
    p.project_name, -- 1 time
    p.project_type,
    v.vessel_name, -- 1 time
    v.vessel_category,
    e.employee_name, -- 1 time
    e.employee_job_position
FROM client c
JOIN service_request sr 
    ON c.client_id = sr.client_id 
   AND c.client_reference_num = sr.client_reference_num
JOIN contract ct 
    ON sr.request_id = ct.request_id 
   AND sr.request_code = ct.request_code
JOIN project p 
    ON ct.contract_id = p.contract_id 
   AND ct.agreement_reference_number = p.agreement_reference_number
JOIN project_vessel pv 
    ON p.project_id = pv.project_id 
   AND p.project_reference_num = pv.project_reference_num
JOIN vessel v 
    ON pv.vessel_id = v.vessel_id 
   AND pv.vessel_registration_number = v.vessel_registration_number
JOIN vessel_employee ve 
    ON v.vessel_id = ve.vessel_id 
   AND v.vessel_registration_number = ve.vessel_registration_number
JOIN employee e 
    ON ve.employee_id = e.employee_id 
   AND ve.employee_nric = e.employee_nric
WHERE c.client_status = 'Active'
  AND sr.request_priority_level = 'High'
  AND ct.contract_sign_date > DATE '2026-05-15'
  AND p.project_status = 'In Progress'
ORDER BY p.project_start_date;