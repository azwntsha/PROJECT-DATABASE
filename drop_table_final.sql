prompt
prompt
prompt This program will drop all tables in the database schema.
prompt Please wait....
prompt
prompt

rem DROPPING ALL TABLES (with cascade constraints)

drop table employee_supervisor cascade constraints;
drop table payment_material cascade constraints;
drop table delivery_payment cascade constraints;
drop table payment_equipment cascade constraints;
drop table invoice_material cascade constraints;
drop table equipment_contract cascade constraints;
drop table material_contract cascade constraints;
drop table material_work_report cascade constraints;
drop table equipment_work_report cascade constraints;
drop table material_work_order cascade constraints;
drop table equipment_work_order cascade constraints;
drop table material_vessel cascade constraints;
drop table equipment_vessel cascade constraints;
drop table employee_equipment cascade constraints;
drop table employee_material cascade constraints;
drop table material_project cascade constraints;
drop table department_invoice cascade constraints;
drop table department_purchase_order cascade constraints;
drop table supplier_material cascade constraints;
drop table purchase_order_payment cascade constraints;
drop table department_work_report cascade constraints;
drop table department_vessel cascade constraints;
drop table equipment_project cascade constraints;
drop table project_payment cascade constraints;
drop table employee_payment cascade constraints;
drop table invoice_payment cascade constraints;
drop table project_company_certification cascade constraints;
drop table department_service_request cascade constraints;
drop table project_vessel cascade constraints;
drop table purchase_order_material cascade constraints;
drop table employee_project cascade constraints;
drop table material_delivery cascade constraints;
drop table external_party_employee cascade constraints;
drop table department_external_party cascade constraints;
drop table department_work_order cascade constraints;
drop table employee_service_request cascade constraints;
drop table employee_company_certification cascade constraints;
drop table vessel_employee cascade constraints;
drop table invoice_employee cascade constraints;
drop table work_order_employee cascade constraints;
drop table employee_delivery cascade constraints;
drop table employee_purchase_order cascade constraints;
drop table contract_employee cascade constraints;

drop table payslip cascade constraints;
drop table attendance cascade constraints;
drop table work_report cascade constraints;
drop table work_order cascade constraints;
drop table company_certification cascade constraints;
drop table material cascade constraints;
drop table equipment cascade constraints;
drop table delivery cascade constraints;
drop table invoice cascade constraints;
drop table payment cascade constraints;
drop table vessel cascade constraints;
drop table purchase_order cascade constraints;
drop table project cascade constraints;
drop table contract cascade constraints;
drop table service_request cascade constraints;
drop table supplier cascade constraints;
drop table client cascade constraints;
drop table employee cascade constraints;
drop table inventory cascade constraints;
drop table department cascade constraints;
drop table external_party cascade constraints;

prompt
prompt All existing tables have been dropped.
prompt

prompt
prompt
prompt .......... ALL DATABASE TABLES ARE SUCCESSFULLY DROPPED ..........
prompt
prompt

commit;
