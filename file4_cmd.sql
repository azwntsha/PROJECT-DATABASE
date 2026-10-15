
-- File4.sql
SET LINESIZE 250
SET FEEDBACK OFF
SET COLSEP ' | '
SET TRIMOUT ON
SET TRIMSPOOL ON
SET WRAP ON

COLUMN CLIENT_OWNERSHIP_TYPE FORMAT A25
COLUMN PROJECT_NAME FORMAT A35
COLUMN WORK_ORDER_TITLE FORMAT A37
COLUMN EMPLOYEE_NAME FORMAT A15
COLUMN DEPARTMENT_CONTACT_NUMBER FORMAT A26
COLUMN ATTENDANCE_STATUS FORMAT A20
COLUMN GROSS_SALARY FORMAT 99,999 
COLUMN MATERIAL_HAZARD_CATEGORY FORMAT A25
SELECT DISTINCT
    c.client_ownership_type,      -- 2 time    
    p.project_name,               -- 2 time   
    wo.work_order_title,          -- 1 time
    e.employee_name,              -- 2 time
    d.DEPARTMENT_CONTACT_NUMBER , -- 1 time         
    a.ATTENDANCE_STATUS   ,       -- 1 time     
    ps.gross_salary,              -- 1 time  
    m.MATERIAL_HAZARD_CATEGORY    -- 1 time
FROM client c
JOIN project p 
    ON c.client_id = p.client_id 
    AND c.client_reference_num = p.client_reference_num
JOIN work_order wo 
    ON p.project_id = wo.project_id 
    AND p.project_reference_num = wo.project_reference_num
JOIN employee_project ep 
    ON p.project_id = ep.project_id 
    AND p.project_reference_num = ep.project_reference_num
JOIN employee e 
    ON ep.employee_id = e.employee_id 
    AND ep.employee_nric = e.employee_nric
JOIN department d 
    ON e.department_id = d.department_id 
    AND e.department_code = d.department_code
JOIN attendance a 
    ON e.employee_id = a.employee_id 
    AND e.employee_nric = a.employee_nric
JOIN payslip ps 
    ON e.employee_id = ps.employee_id 
    AND e.employee_nric = ps.employee_nric
JOIN material_work_order mwo 
    ON wo.work_order_id = mwo.work_order_id 
    AND wo.work_order_num = mwo.work_order_num
JOIN material m 
    ON mwo.material_item_id = m.material_item_id 
    AND mwo.material_code = m.material_code
WHERE c.client_status = 'Active'
  AND ps.gross_salary >= 5000
  AND e.employment_status = 'Active'
  AND p.project_start_date >= DATE '2026-05-10'
  AND a.ATTENDANCE_DATE  >= DATE '2026-05-10'
ORDER BY c.CLIENT_OWNERSHIP_TYPE  DESC;


