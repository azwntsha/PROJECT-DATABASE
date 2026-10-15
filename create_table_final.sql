
Create table external_party 
(
    party_id            VARCHAR2(16)  not null,
    registration_number VARCHAR2(20)  not null,
    company_name        VARCHAR2(255) not null,
    company_email       VARCHAR2(255) not null,
    company_address     VARCHAR2(1000) not null,
    contact_person      VARCHAR2(30)  not null,
    contact_number      VARCHAR2(30)  not null,
    financial_status    VARCHAR2(16)  not null,
    constraint external_party_pk primary key (party_id, registration_number),
    constraint uk_external_party_party_id unique (party_id),
    constraint uk_external_party_reg_num unique (registration_number)
);

Create table department 
(
    department_id             VARCHAR2(16)  not null,
    department_code           VARCHAR2(20)  not null,
    department_name           VARCHAR2(50)  not null,
    department_description    VARCHAR2(255) not null,
    department_type           VARCHAR2(50)  not null,
    department_contact_number VARCHAR2(25)  not null,
    department_official_email VARCHAR2(50)  not null,
    department_office_location VARCHAR2(100) not null,
    employee_count            INTEGER       not null,
    department_status         VARCHAR2(20)  not null,
    constraint department_pk primary key (department_id, department_code),
    constraint uk_department_id unique (department_id),
    constraint uk_department_code unique (department_code),
    constraint department_contact_num_unique unique (department_contact_number),
    constraint department_official_email_unique unique (department_official_email)
);

Create table inventory
(
    inventory_item_id         VARCHAR2(16)  not null,
    inventory_reference_number VARCHAR2(20)  not null,
    item_name                 VARCHAR2(255) not null,
    storage_location          VARCHAR2(30)  not null,
    unit_cost                 NUMBER(20,2)  not null,
    item_description          VARCHAR2(1000) not null,
    constraint inventory_pk primary key (inventory_item_id, inventory_reference_number),
    constraint uk_inventory_item_id unique (inventory_item_id),
    constraint uk_inventory_ref_num unique (inventory_reference_number)
);

Create table employee
(
    employee_id               VARCHAR2(16)  not null,
    employee_nric             VARCHAR2(20)  not null,
    employee_name             VARCHAR2(255) not null,
    employee_gender           VARCHAR2(10),
    employee_email_address    VARCHAR2(50)  not null,
    employee_age              INTEGER       not null,
    employee_contact_number   VARCHAR2(30)  not null,
    employee_emergency_contact VARCHAR2(30)  not null,
    employee_job_position     VARCHAR2(50)  not null,
    employment_status         VARCHAR2(20)  check (employment_status in ('Active','Resigned','Suspended','On Leave','Retired','Contract')),
    employee_salary           NUMBER(20,2)  not null,
    employee_hire_date        DATE          not null,
    employee_home_address     VARCHAR2(1000) not null,
    employee_mailing_address  VARCHAR2(1000) not null,
    department_id             VARCHAR2(16)  not null,
    department_code           VARCHAR2(20)  not null,
    constraint employee_pk primary key (employee_id, employee_nric),
    constraint uk_employee_id unique (employee_id),
    constraint uk_employee_nric unique (employee_nric),
    constraint employee_gender_check check (employee_gender in ('M','F')),
    constraint employee_dept_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);

Create table client
(
    client_id                  VARCHAR2(16)  not null,
    client_reference_num       VARCHAR2(20)  not null,
    client_ownership_type      VARCHAR2(25)  not null,
    industry_sector            VARCHAR2(30)  not null,
    preferred_service_type     VARCHAR2(50)  not null,
    last_request_date          DATE          not null,
    project_count              INTEGER       not null,
    client_status              VARCHAR2(20)  not null,
    client_loyalty             VARCHAR2(50)  not null,
    total_outstanding_balance  NUMBER(20,2)  not null,
    client_discount_eligibility VARCHAR2(50) not null,
    total_purchase_value       NUMBER(20,2)  not null,
    party_id                   VARCHAR2(16)  not null,
    registration_number        VARCHAR2(20)  not null,
    constraint client_pk primary key (client_id, client_reference_num),
    constraint uk_client_id unique (client_id),
    constraint uk_client_ref_num unique (client_reference_num),
    constraint client_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number)
);

Create table supplier
(
    supplier_id               VARCHAR2(16)  not null,
    supplier_reference_num    VARCHAR2(20)  not null,
    product_category          VARCHAR2(50)  not null,
    supply_cycle              VARCHAR2(50)  not null,
    last_supply_date          DATE          not null,
    operating_hours           VARCHAR2(50)  not null,
    website_url               VARCHAR2(255) not null,
    supplier_coverage_area    VARCHAR2(50)  not null,
    preferred_shipping_method VARCHAR2(50)  not null,
    logistic_partner          VARCHAR2(50)  not null,
    price_stability           VARCHAR2(20)  not null,
    supplier_type             VARCHAR2(50)  not null,
    party_id                  VARCHAR2(16)  not null,
    registration_number       VARCHAR2(20)  not null,
    constraint supplier_pk primary key (supplier_id, supplier_reference_num),
    constraint uk_supplier_id unique (supplier_id),
    constraint uk_supplier_ref_num unique (supplier_reference_num),
    constraint supplier_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number)
);

Create table service_request
(
    request_id             VARCHAR2(16)  not null,
    request_code           VARCHAR2(20)  not null,
    request_title          VARCHAR2(255) not null,
    request_service        VARCHAR2(255) not null,
    request_date           DATE          not null,
    request_description    VARCHAR2(1000) not null,
    request_priority_level VARCHAR2(20)  not null,
    estimated_budget       NUMBER(20,2)  not null,
    request_approval_status VARCHAR2(20) not null,
    request_response_date  DATE,
    request_method         VARCHAR2(50)  not null,
    client_id              VARCHAR2(16)  not null,
    client_reference_num   VARCHAR2(20)  not null,
    constraint service_request_pk primary key (request_id, request_code),
    constraint uk_request_id unique (request_id),
    constraint uk_request_code unique (request_code),
    constraint sr_client_fk foreign key (client_id, client_reference_num)
        references client (client_id, client_reference_num)
);

Create table contract
(
    contract_id                VARCHAR2(16)  not null,
    agreement_reference_number VARCHAR2(20)  not null,
    contract_title             VARCHAR2(255) not null,
    contract_scope             VARCHAR2(128) not null,
    contract_sign_date         DATE          not null,
    contract_end_date          DATE          not null,
    approved_date              DATE          not null,
    contract_terms_condition   VARCHAR2(1000) not null,
    contract_document_url      VARCHAR2(255) not null,
    contract_status            VARCHAR2(255) not null,
    request_id                 VARCHAR2(16),
    request_code               VARCHAR2(20),
    party_id                   VARCHAR2(16),
    registration_number        VARCHAR2(20),
    constraint contract_pk primary key (contract_id, agreement_reference_number),
    constraint uk_contract_id unique (contract_id),
    constraint uk_agreement_ref_num unique (agreement_reference_number),
    constraint contract_sr_fk foreign key (request_id, request_code)
        references service_request (request_id, request_code),
    constraint contract_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number)
);

Create table project
(
    project_id              VARCHAR2(16)  not null,
    project_reference_num   VARCHAR2(20)  not null,
    project_name            VARCHAR2(255) not null,
    project_description     VARCHAR2(1000) not null,
    project_type            VARCHAR2(50)  not null,
    project_status          VARCHAR2(30)  not null,
    project_start_date      DATE          not null,
    project_due_date        DATE          not null,
    project_finished_date   DATE,
    project_priority        VARCHAR2(50)  not null,
    project_budget          NUMBER(20,2)  not null,
    contract_id             VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    request_id              VARCHAR2(16),
    request_code            VARCHAR2(20),
    client_id               VARCHAR2(16),
    client_reference_num    VARCHAR2(20),
    constraint project_pk primary key (project_id, project_reference_num),
    constraint uk_project_id unique (project_id),
    constraint uk_project_ref_num unique (project_reference_num),
    constraint project_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number),
    constraint project_sr_fk foreign key (request_id, request_code)
        references service_request (request_id, request_code),
    constraint project_client_fk foreign key (client_id, client_reference_num)
        references client (client_id, client_reference_num)
);

Create table purchase_order 
(
    purchase_id              VARCHAR2(16)  not null,
    purchase_reference_num   VARCHAR2(20)  not null,
    purchase_order_name      VARCHAR2(255) not null,
    order_approval_status    VARCHAR2(30)  not null,
    order_details            VARCHAR2(1000) not null,
    agreed_tax_rate          NUMBER(20,2)  not null,
    agreed_service_fee       NUMBER(20,2)  not null,
    agreed_discount_percentage NUMBER(5,2) not null,
    order_fulfillment_status VARCHAR2(30)  not null,
    order_date               DATE          not null,
    order_approval_date      DATE,
    supplier_id              VARCHAR2(16),
    supplier_reference_num   VARCHAR2(20),
    project_id               VARCHAR2(16),
    project_reference_num    VARCHAR2(20),
    contract_id              VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    constraint purchase_order_pk primary key (purchase_id, purchase_reference_num),
    constraint uk_purchase_id unique (purchase_id),
    constraint uk_purchase_ref_num unique (purchase_reference_num),
    constraint po_supplier_fk foreign key (supplier_id, supplier_reference_num)
        references supplier (supplier_id, supplier_reference_num),
    constraint po_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint po_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number)
);

Create table vessel
(
    vessel_id                 VARCHAR2(16)  not null,
    vessel_registration_number VARCHAR2(20) not null,
    vessel_name               VARCHAR2(255),
    vessel_category           VARCHAR2(50)  not null,
    vessel_fuel_type          VARCHAR2(20)  not null,
    vessel_fuel_capacity      NUMBER(10,2)   not null,
    vessel_capacity           NUMBER        not null,
    vessel_width              NUMBER(10,2)  not null,
    last_maintenance_date     DATE          not null,
    vessel_weight             NUMBER(20,2)  not null,
    vessel_distance_max       NUMBER(20,2)  not null,
    vessel_status             VARCHAR2(30)  not null,
    vessel_build_year         NUMBER        not null,
    vessel_length             NUMBER(10,2)  not null,
    client_id                 VARCHAR2(16)  not null,
    client_reference_num      VARCHAR2(20)  not null,
    contract_id               VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    constraint vessel_pk primary key (vessel_id, vessel_registration_number),
    constraint uk_vessel_id unique (vessel_id),
    constraint uk_vessel_reg_num unique (vessel_registration_number),
    constraint vessel_client_fk foreign key (client_id, client_reference_num)
        references client (client_id, client_reference_num),
    constraint vessel_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number)
);

Create table payment
(
    payment_id           VARCHAR2(16)  not null,
    payment_reference_num VARCHAR2(20) not null,
    payment_date         DATE          not null,
    payment_timestamp    DATE          not null,
    payment_method       VARCHAR2(50)  not null,
    payment_status       VARCHAR2(50)  not null,
    payment_reference    VARCHAR2(255) not null,
    transaction_type     VARCHAR2(100) not null,
    payment_currency_code VARCHAR2(10) not null,
    payment_amount       NUMBER(20,2)  not null,
    party_id             VARCHAR2(16)  not null,
    registration_number  VARCHAR2(20)  not null,
    constraint payment_pk primary key (payment_id, payment_reference_num),
    constraint uk_payment_id unique (payment_id),
    constraint uk_payment_ref_num unique (payment_reference_num),
    constraint payment_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number)
);

Create table invoice
(
    invoice_id               VARCHAR2(16)  not null,
    invoice_number           VARCHAR2(20)  not null,
    invoice_title            VARCHAR2(255) not null,
    subtotal_amount          NUMBER(20,2)  not null,
    tax_amount               NUMBER(20,2)  not null,
    discount_amount          NUMBER(20,2)  not null,
    invoice_date             DATE          not null,
    outstanding_balance      NUMBER(20,2)  not null,
    total_amount             NUMBER(20,2)  not null,
    invoice_description      VARCHAR2(1000) not null,
    invoice_status           VARCHAR2(30)  not null,
    invoice_due_date         DATE          not null,
    invoice_type             VARCHAR2(50)  not null,
    project_id               VARCHAR2(16),
    project_reference_num    VARCHAR2(20),
    contract_id              VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    party_id                 VARCHAR2(16),
    registration_number      VARCHAR2(20),
    purchase_id              VARCHAR2(16),
    purchase_reference_num   VARCHAR2(20),
    constraint invoice_pk primary key (invoice_id, invoice_number),
    constraint uk_invoice_id unique (invoice_id),
    constraint uk_invoice_number unique (invoice_number),
    constraint invoice_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint invoice_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number),
    constraint invoice_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number),
    constraint invoice_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num)
);

Create table delivery 
(
    delivery_id           VARCHAR2(16)  not null,
    tracking_number       VARCHAR2(20)  not null,
    delivery_shipping_date DATE         not null,
    delivery_address      VARCHAR2(1000) not null,
    delivery_method       VARCHAR2(50)  not null,
    delivery_status       VARCHAR2(30)  not null,
    estimated_arrival_date DATE         not null,
    actual_arrived_date   DATE,
    delivery_fee          NUMBER(20,2)  not null,
    delivery_contact_number VARCHAR2(30) not null,
    purchase_id           VARCHAR2(16),
    purchase_reference_num VARCHAR2(20),
    invoice_id            VARCHAR2(16),
    invoice_number        VARCHAR2(20),
    supplier_id           VARCHAR2(16),
    supplier_reference_num VARCHAR2(20),
    constraint delivery_pk primary key (delivery_id, tracking_number),
    constraint uk_delivery_id unique (delivery_id),
    constraint uk_tracking_number unique (tracking_number),
    constraint delivery_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num),
    constraint delivery_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint delivery_supplier_fk foreign key (supplier_id, supplier_reference_num)
        references supplier (supplier_id, supplier_reference_num)
);

Create table equipment 
(
    equipment_id            VARCHAR2(16)  not null,
    equipment_serial_num    VARCHAR2(20)  not null,
    equipment_type          VARCHAR2(50)  not null,
    manufacturer            VARCHAR2(100) not null,
    purchase_date           DATE          not null,
    warranty_period         VARCHAR2(30)  not null,
    warranty_expiry_date    DATE          not null,
    last_maintenance_date   DATE          not null,
    equipment_condition     VARCHAR2(255) not null,
    equipment_used_location VARCHAR2(50)  not null,
    equipment_status        VARCHAR2(255) not null,
    model_number            VARCHAR2(50)  not null,
    expected_lifespan       VARCHAR2(50)  not null,
    supplier_id             VARCHAR2(16),
    supplier_reference_num  VARCHAR2(20),
    purchase_id             VARCHAR2(16),
    purchase_reference_num  VARCHAR2(20),
    delivery_id             VARCHAR2(16),
    tracking_number         VARCHAR2(20),
    invoice_id              VARCHAR2(16),
    invoice_number          VARCHAR2(20),
    inventory_item_id       VARCHAR2(16),
    inventory_reference_number VARCHAR2(20),
    constraint equipment_pk primary key (equipment_id, equipment_serial_num),
    constraint uk_equipment_id unique (equipment_id),
    constraint uk_equipment_serial unique (equipment_serial_num),
    constraint equip_supplier_fk foreign key (supplier_id, supplier_reference_num)
        references supplier (supplier_id, supplier_reference_num),
    constraint equip_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num),
    constraint equip_delivery_fk foreign key (delivery_id, tracking_number)
        references delivery (delivery_id, tracking_number),
    constraint equip_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint equip_inventory_fk foreign key (inventory_item_id, inventory_reference_number)
        references inventory (inventory_item_id, inventory_reference_number)
);

Create table material
(
    material_item_id         VARCHAR2(16)  not null,
    material_code            VARCHAR2(20)  not null,
    material_item_type       VARCHAR2(255) not null,
    material_usage_purpose   VARCHAR2(255) not null,
    material_unit_measurement VARCHAR2(30) not null,
    quantity_available       INTEGER       not null,
    quantity_reserved        INTEGER       not null,
    material_current_condition VARCHAR2(255) not null,
    material_hazard_category VARCHAR2(255) not null,
    shelf_life_days          INTEGER       not null,
    storage_condition        VARCHAR2(50)  not null,
    expiry_date              DATE          not null,
    equipment_id             VARCHAR2(16),
    equipment_serial_num     VARCHAR2(20),
    inventory_item_id        VARCHAR2(16),
    inventory_reference_number VARCHAR2(20),
    constraint material_pk primary key (material_item_id, material_code),
    constraint uk_material_item_id unique (material_item_id),
    constraint uk_material_code unique (material_code),
    constraint material_equip_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint material_inventory_fk foreign key (inventory_item_id, inventory_reference_number)
        references inventory (inventory_item_id, inventory_reference_number)
);

Create table work_order 
(
    work_order_id            VARCHAR2(16)  not null,
    work_order_num           VARCHAR2(20)  not null,
    work_order_title         VARCHAR2(255) not null,
    work_order_details       VARCHAR2(1000) not null,
    work_order_type          VARCHAR2(255) not null,
    work_order_status        VARCHAR2(20)  not null,
    work_priority_level      VARCHAR2(30)  not null,
    work_start_date          DATE          not null,
    work_due_date            DATE          not null,
    work_actual_end_date     DATE,
    vessel_id                VARCHAR2(16),
    vessel_registration_number VARCHAR2(20),
    project_id               VARCHAR2(16),
    project_reference_num    VARCHAR2(20),
    contract_id              VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    constraint work_order_pk primary key (work_order_id, work_order_num),
    constraint uk_work_order_id unique (work_order_id),
    constraint uk_work_order_num unique (work_order_num),
    constraint wo_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number),
    constraint wo_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint wo_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number)
);

Create table work_report 
(
    report_id                VARCHAR2(16)  not null,
    report_reference_num     VARCHAR2(20)  not null,
    report_type              VARCHAR2(255) not null,
    report_title             VARCHAR2(255) not null,
    report_created_date      DATE          not null,
    report_description       VARCHAR2(1000) not null,
    report_updated_date      DATE          not null,
    report_attachment_reference_url VARCHAR2(255) not null,
    suggestion_action        VARCHAR2(255) not null,
    report_status            VARCHAR2(30)  not null,
    vessel_id                VARCHAR2(16),
    vessel_registration_number VARCHAR2(20),
    work_order_id            VARCHAR2(16),
    work_order_num           VARCHAR2(20),
    employee_id              VARCHAR2(16),
    employee_nric            VARCHAR2(20),
    client_id                VARCHAR2(16),
    client_reference_num     VARCHAR2(20),
    contract_id              VARCHAR2(16),
    agreement_reference_number VARCHAR2(20),
    project_id               VARCHAR2(16),
    project_reference_num    VARCHAR2(20),
    invoice_id               VARCHAR2(16),
    invoice_number           VARCHAR2(20),
    payment_id               VARCHAR2(16),
    payment_reference_num    VARCHAR2(20),
    constraint work_report_pk primary key (report_id, report_reference_num),
    constraint uk_report_id unique (report_id),
    constraint uk_report_ref_num unique (report_reference_num),
    constraint wr_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number),
    constraint wr_workorder_fk foreign key (work_order_id, work_order_num)
        references work_order (work_order_id, work_order_num),
    constraint wr_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint wr_client_fk foreign key (client_id, client_reference_num)
        references client (client_id, client_reference_num),
    constraint wr_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number),
    constraint wr_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint wr_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint wr_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num)
);

Create table attendance 
(
    attendance_id           VARCHAR2(16)  not null,
    attendance_code         VARCHAR2(20)  not null,
    attendance_date         DATE          not null,
    scheduled_checkin_time  DATE          not null,
    scheduled_checkout_time DATE          not null,
    checkin_time            DATE          not null,
    checkout_time           DATE          not null,
    hours_worked            INTEGER       not null,
    attendance_status       VARCHAR2(30)  not null,
    attendance_method       VARCHAR2(30)  not null,
    employee_id             VARCHAR2(16),
    employee_nric           VARCHAR2(20),
    department_id   VARCHAR2(16),
    department_code VARCHAR2(20),
    constraint attendance_pk primary key (attendance_id, attendance_code),
    constraint uk_attendance_id unique (attendance_id),
    constraint uk_attendance_code unique (attendance_code),
    constraint attendance_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    CONSTRAINT attendance_dept_fk FOREIGN KEY (department_id, department_code) 
        REFERENCES department (department_id, department_code)
);

Create table payslip 
(
    payslip_id          VARCHAR2(16)  not null,
    payslip_code        VARCHAR2(20)  not null,
    scheduled_date      DATE          not null,
    received_date       DATE          not null,
    gross_salary        NUMBER(10,2)  not null,
    deductions          NUMBER(10,2)  not null,
    net_salary          NUMBER(10,2)  not null,
    salary_payment_date DATE          not null,
    account_number      VARCHAR2(50)  not null,
    payslip_status      VARCHAR2(30)  not null,
    employee_id         VARCHAR2(16),
    employee_nric       VARCHAR2(20),
    department_id       VARCHAR2(16),
    department_code     VARCHAR2(20),
    constraint payslip_pk primary key (payslip_id, payslip_code),
    constraint uk_payslip_id unique (payslip_id),
    constraint uk_payslip_code unique (payslip_code),
    constraint payslip_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint payslip_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);

Create table company_certification 
(
    certification_id      VARCHAR2(16)  not null,
    certificate_serial_num VARCHAR2(20) not null,
    certificate_name      VARCHAR2(255) not null,
    certificate_type      VARCHAR2(50)  not null,
    issue_date            DATE          not null,
    expiry_date           DATE          not null,
    renewal_date          DATE          not null,
    verification_date     DATE          not null,
    verified_by           VARCHAR2(50)  not null,
    certificate_status    VARCHAR2(30)  not null,
    department_id         VARCHAR2(16),
    department_code       VARCHAR2(20),
    constraint certification_pk primary key (certification_id, certificate_serial_num),
    constraint uk_certification_id unique (certification_id),
    constraint uk_cert_serial_num unique (certificate_serial_num),
    constraint cert_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);


-- Now create all junction tables

Create table contract_employee
(
    contract_id                VARCHAR2(16) not null,
    agreement_reference_number VARCHAR2(20) not null,
    employee_id                VARCHAR2(16) not null,
    employee_nric              VARCHAR2(20) not null,
    constraint contract_employee_pk primary key (contract_id, agreement_reference_number, employee_id, employee_nric),
    constraint ce_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number),
    constraint ce_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric)
);

Create table employee_purchase_order
(
    employee_id          VARCHAR2(16) not null,
    employee_nric        VARCHAR2(20) not null,
    purchase_id          VARCHAR2(16) not null,
    purchase_reference_num VARCHAR2(20) not null,
    constraint employee_purchase_order_pk primary key (employee_id, employee_nric, purchase_id, purchase_reference_num),
    constraint epo_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint epo_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num)
);

Create table employee_delivery
(
    employee_id    VARCHAR2(16) not null,
    employee_nric  VARCHAR2(20) not null,
    delivery_id    VARCHAR2(16) not null,
    tracking_number VARCHAR2(20) not null,
    constraint employee_delivery_pk primary key (employee_id, employee_nric, delivery_id, tracking_number),
    constraint ed_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint ed_delivery_fk foreign key (delivery_id, tracking_number)
        references delivery (delivery_id, tracking_number)
);

Create table work_order_employee
(
    work_order_id    VARCHAR2(16) not null,
    work_order_num   VARCHAR2(20) not null,
    employee_id      VARCHAR2(16) not null,
    employee_nric    VARCHAR2(20) not null,
    constraint work_order_employee_pk primary key (work_order_id, work_order_num, employee_id, employee_nric),
    constraint woe_workorder_fk foreign key (work_order_id, work_order_num)
        references work_order (work_order_id, work_order_num),
    constraint woe_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric)
);

Create table invoice_employee
(
    invoice_id     VARCHAR2(16) not null,
    invoice_number VARCHAR2(20) not null,
    employee_id    VARCHAR2(16) not null,
    employee_nric  VARCHAR2(20) not null,
    constraint invoice_employee_pk primary key (invoice_id, invoice_number, employee_id, employee_nric),
    constraint ie_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint ie_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric)
);

Create table vessel_employee
(
    vessel_id                 VARCHAR2(16) not null,
    vessel_registration_number VARCHAR2(20) not null,
    employee_id               VARCHAR2(16) not null,
    employee_nric             VARCHAR2(20) not null,
    constraint vessel_employee_pk primary key (vessel_id, vessel_registration_number, employee_id, employee_nric),
    constraint ve_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number),
    constraint ve_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric)
);

Create table employee_company_certification
(
    employee_id          VARCHAR2(16) not null,
    employee_nric        VARCHAR2(20) not null,
    certification_id     VARCHAR2(16) not null,
    certificate_serial_num VARCHAR2(20) not null,
    constraint employee_company_cert_pk primary key (employee_id, employee_nric, certification_id, certificate_serial_num),
    constraint ecc_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint ecc_cert_fk foreign key (certification_id, certificate_serial_num)
        references company_certification (certification_id, certificate_serial_num)
);

Create table employee_service_request
(
    employee_id   VARCHAR2(16) not null,
    employee_nric VARCHAR2(20) not null,
    request_id    VARCHAR2(16) not null,
    request_code  VARCHAR2(20) not null,
    constraint employee_service_request_pk primary key (employee_id, employee_nric, request_id, request_code),
    constraint esr_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint esr_sr_fk foreign key (request_id, request_code)
        references service_request (request_id, request_code)
);

Create table department_work_order
(
    department_id    VARCHAR2(16) not null,
    department_code  VARCHAR2(20) not null,
    work_order_id    VARCHAR2(16) not null,
    work_order_num   VARCHAR2(20) not null,
    constraint department_work_order_pk primary key (department_id, department_code, work_order_id, work_order_num),
    constraint dwo_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code),
    constraint dwo_workorder_fk foreign key (work_order_id, work_order_num)
        references work_order (work_order_id, work_order_num)
);

Create table department_external_party
(
    party_id           VARCHAR2(16) not null,
    registration_number VARCHAR2(20) not null,
    department_id      VARCHAR2(16) not null,
    department_code    VARCHAR2(20) not null,
    constraint department_external_party_pk primary key (party_id, registration_number, department_id, department_code),
    constraint epd_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number),
    constraint epd_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);

Create table external_party_employee
(
    party_id           VARCHAR2(16) not null,
    registration_number VARCHAR2(20) not null,
    employee_id        VARCHAR2(16) not null,
    employee_nric      VARCHAR2(20) not null,
    constraint external_party_employee_pk primary key (party_id, registration_number, employee_id, employee_nric),
    constraint epe_extparty_fk foreign key (party_id, registration_number)
        references external_party (party_id, registration_number),
    constraint epe_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric)
);

Create table material_delivery
(
    material_item_id VARCHAR2(16) not null,
    material_code    VARCHAR2(20) not null,
    delivery_id      VARCHAR2(16) not null,
    tracking_number  VARCHAR2(20) not null,
    constraint material_delivery_pk primary key (material_item_id, material_code, delivery_id, tracking_number),
    constraint md_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint md_delivery_fk foreign key (delivery_id, tracking_number)
        references delivery (delivery_id, tracking_number)
);

Create table employee_project
(
    employee_id         VARCHAR2(16) not null,
    employee_nric       VARCHAR2(20) not null,
    project_id          VARCHAR2(16) not null,
    project_reference_num VARCHAR2(20) not null,
    constraint employee_project_pk primary key (employee_id, employee_nric, project_id, project_reference_num),
    constraint ep_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint ep_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num)
);

Create table purchase_order_material
(
    purchase_id          VARCHAR2(16) not null,
    purchase_reference_num VARCHAR2(20) not null,
    material_item_id     VARCHAR2(16) not null,
    material_code        VARCHAR2(20) not null,
    constraint purchase_order_material_pk primary key (purchase_id, purchase_reference_num, material_item_id, material_code),
    constraint pom_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num),
    constraint pom_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code)
);

Create table project_vessel
(
    project_id               VARCHAR2(16) not null,
    project_reference_num    VARCHAR2(20) not null,
    vessel_id                VARCHAR2(16) not null,
    vessel_registration_number VARCHAR2(20) not null,
    constraint project_vessel_pk primary key (project_id, project_reference_num, vessel_id, vessel_registration_number),
    constraint pv_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint pv_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number)
);

Create table department_service_request
(
    department_id   VARCHAR2(16) not null,
    department_code VARCHAR2(20) not null,
    request_id      VARCHAR2(16) not null,
    request_code    VARCHAR2(20) not null,
    constraint department_service_request_pk primary key (department_id, department_code, request_id, request_code),
    constraint dsr_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code),
    constraint dsr_sr_fk foreign key (request_id, request_code)
        references service_request (request_id, request_code)
);

Create table project_company_certification
(
    project_id           VARCHAR2(16) not null,
    project_reference_num VARCHAR2(20) not null,
    certification_id     VARCHAR2(16) not null,
    certificate_serial_num VARCHAR2(20) not null,
    constraint project_company_cert_pk primary key (project_id, project_reference_num, certification_id, certificate_serial_num),
    constraint pcc_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num),
    constraint pcc_cert_fk foreign key (certification_id, certificate_serial_num)
        references company_certification (certification_id, certificate_serial_num)
);

Create table invoice_payment
(
    invoice_id          VARCHAR2(16) not null,
    invoice_number      VARCHAR2(20) not null,
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    constraint invoice_payment_pk primary key (invoice_id, invoice_number, payment_id, payment_reference_num),
    constraint ip_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint ip_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num)
);

Create table employee_payment
(
    employee_id         VARCHAR2(16) not null,
    employee_nric       VARCHAR2(20) not null,
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    constraint employee_payment_pk primary key (employee_id, employee_nric, payment_id, payment_reference_num),
    constraint epay_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint epay_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num)
);

Create table project_payment
(
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    project_id          VARCHAR2(16) not null,
    project_reference_num VARCHAR2(20) not null,
    constraint project_payment_pk primary key (payment_id, payment_reference_num, project_id, project_reference_num),
    constraint pp_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num),
    constraint pp_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num)
);

Create table equipment_project
(
    equipment_id        VARCHAR2(16) not null,
    equipment_serial_num VARCHAR2(20) not null,
    project_id          VARCHAR2(16) not null,
    project_reference_num VARCHAR2(20) not null,
    constraint equipment_project_pk primary key (equipment_id, equipment_serial_num, project_id, project_reference_num),
    constraint eqp_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint eqp_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num)
);

Create table department_vessel
(
    department_id            VARCHAR2(16) not null,
    department_code          VARCHAR2(20) not null,
    vessel_id                VARCHAR2(16) not null,
    vessel_registration_number VARCHAR2(20) not null,
    constraint department_vessel_pk primary key (department_id, department_code, vessel_id, vessel_registration_number),
    constraint dv_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code),
    constraint dv_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number)
);

Create table department_work_report
(
    department_id        VARCHAR2(16) not null,
    department_code      VARCHAR2(20) not null,
    report_id            VARCHAR2(16) not null,
    report_reference_num VARCHAR2(20) not null,
    constraint department_work_report_pk primary key (department_id, department_code, report_id, report_reference_num),
    constraint dwr_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code),
    constraint dwr_report_fk foreign key (report_id, report_reference_num)
        references work_report (report_id, report_reference_num)
);

Create table purchase_order_payment
(
    purchase_id          VARCHAR2(16) not null,
    purchase_reference_num VARCHAR2(20) not null,
    payment_id           VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    constraint purchase_order_payment_pk primary key (purchase_id, purchase_reference_num, payment_id, payment_reference_num),
    constraint pop_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num),
    constraint pop_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num)
);

Create table supplier_material
(
    supplier_id          VARCHAR2(16) not null,
    supplier_reference_num VARCHAR2(20) not null,
    material_item_id     VARCHAR2(16) not null,
    material_code        VARCHAR2(20) not null,
    constraint supplier_material_pk primary key (supplier_id, supplier_reference_num, material_item_id, material_code),
    constraint sm_supplier_fk foreign key (supplier_id, supplier_reference_num)
        references supplier (supplier_id, supplier_reference_num),
    constraint sm_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code)
);

Create table department_purchase_order
(
    purchase_id          VARCHAR2(16) not null,
    purchase_reference_num VARCHAR2(20) not null,
    department_id        VARCHAR2(16) not null,
    department_code      VARCHAR2(20) not null,
    constraint department_purchase_order_pk primary key (purchase_id, purchase_reference_num, department_id, department_code),
    constraint pod_purchase_fk foreign key (purchase_id, purchase_reference_num)
        references purchase_order (purchase_id, purchase_reference_num),
    constraint pod_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);

Create table department_invoice
(
    invoice_id       VARCHAR2(16) not null,
    invoice_number   VARCHAR2(20) not null,
    department_id    VARCHAR2(16) not null,
    department_code  VARCHAR2(20) not null,
    constraint department_invoice_pk primary key (invoice_id, invoice_number, department_id, department_code),
    constraint id_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint id_department_fk foreign key (department_id, department_code)
        references department (department_id, department_code)
);

Create table material_project
(
    material_item_id     VARCHAR2(16) not null,
    material_code        VARCHAR2(20) not null,
    project_id           VARCHAR2(16) not null,
    project_reference_num VARCHAR2(20) not null,
    constraint material_project_pk primary key (material_item_id, material_code, project_id, project_reference_num),
    constraint mp_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint mp_project_fk foreign key (project_id, project_reference_num)
        references project (project_id, project_reference_num)
);

Create table employee_material
(
    employee_id      VARCHAR2(16) not null,
    employee_nric    VARCHAR2(20) not null,
    material_item_id VARCHAR2(16) not null,
    material_code    VARCHAR2(20) not null,
    constraint employee_material_pk primary key (employee_id, employee_nric, material_item_id, material_code),
    constraint em_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint em_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code)
);

Create table employee_equipment
(
    employee_id         VARCHAR2(16) not null,
    employee_nric       VARCHAR2(20) not null,
    equipment_id        VARCHAR2(16) not null,
    equipment_serial_num VARCHAR2(20) not null,
    constraint employee_equipment_pk primary key (employee_id, employee_nric, equipment_id, equipment_serial_num),
    constraint ee_employee_fk foreign key (employee_id, employee_nric)
        references employee (employee_id, employee_nric),
    constraint ee_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num)
);

Create table equipment_vessel
(
    equipment_id            VARCHAR2(16) not null,
    equipment_serial_num    VARCHAR2(20) not null,
    vessel_id               VARCHAR2(16) not null,
    vessel_registration_number VARCHAR2(20) not null,
    constraint equipment_vessel_pk primary key (equipment_id, equipment_serial_num, vessel_id, vessel_registration_number),
    constraint eqv_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint eqv_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number)
);

Create table material_vessel
(
    material_item_id         VARCHAR2(16) not null,
    material_code            VARCHAR2(20) not null,
    vessel_id                VARCHAR2(16) not null,
    vessel_registration_number VARCHAR2(20) not null,
    constraint material_vessel_pk primary key (material_item_id, material_code, vessel_id, vessel_registration_number),
    constraint mv_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint mv_vessel_fk foreign key (vessel_id, vessel_registration_number)
        references vessel (vessel_id, vessel_registration_number)
);

Create table equipment_work_order
(
    equipment_id        VARCHAR2(16) not null,
    equipment_serial_num VARCHAR2(20) not null,
    work_order_id       VARCHAR2(16) not null,
    work_order_num      VARCHAR2(20) not null,
    constraint equipment_work_order_pk primary key (equipment_id, equipment_serial_num, work_order_id, work_order_num),
    constraint ewo_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint ewo_workorder_fk foreign key (work_order_id, work_order_num)
        references work_order (work_order_id, work_order_num)
);

Create table material_work_order
(
    material_item_id VARCHAR2(16) not null,
    material_code    VARCHAR2(20) not null,
    work_order_id    VARCHAR2(16) not null,
    work_order_num   VARCHAR2(20) not null,
    constraint material_work_order_pk primary key (material_item_id, material_code, work_order_id, work_order_num),
    constraint mwo_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint mwo_workorder_fk foreign key (work_order_id, work_order_num)
        references work_order (work_order_id, work_order_num)
);

Create table equipment_work_report
(
    equipment_id        VARCHAR2(16) not null,
    equipment_serial_num VARCHAR2(20) not null,
    report_id           VARCHAR2(16) not null,
    report_reference_num VARCHAR2(20) not null,
    constraint equipment_work_report_pk primary key (equipment_id, equipment_serial_num, report_id, report_reference_num),
    constraint ewr_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint ewr_report_fk foreign key (report_id, report_reference_num)
        references work_report (report_id, report_reference_num)
);

Create table material_work_report
(
    material_item_id     VARCHAR2(16) not null,
    material_code        VARCHAR2(20) not null,
    report_id            VARCHAR2(16) not null,
    report_reference_num VARCHAR2(20) not null,
    constraint material_work_report_pk primary key (material_item_id, material_code, report_id, report_reference_num),
    constraint mwr_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint mwr_report_fk foreign key (report_id, report_reference_num)
        references work_report (report_id, report_reference_num)
);

Create table material_contract
(
    material_item_id         VARCHAR2(16) not null,
    material_code            VARCHAR2(20) not null,
    contract_id              VARCHAR2(16) not null,
    agreement_reference_number VARCHAR2(20) not null,
    constraint material_contract_pk primary key (material_item_id, material_code, contract_id, agreement_reference_number),
    constraint mc_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code),
    constraint mc_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number)
);

Create table equipment_contract
(
    equipment_id             VARCHAR2(16) not null,
    equipment_serial_num     VARCHAR2(20) not null,
    contract_id              VARCHAR2(16) not null,
    agreement_reference_number VARCHAR2(20) not null,
    constraint equipment_contract_pk primary key (equipment_id, equipment_serial_num, contract_id, agreement_reference_number),
    constraint ec_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num),
    constraint ec_contract_fk foreign key (contract_id, agreement_reference_number)
        references contract (contract_id, agreement_reference_number)
);

Create table invoice_material
(
    invoice_id        VARCHAR2(16) not null,
    invoice_number    VARCHAR2(20) not null,
    material_item_id  VARCHAR2(16) not null,
    material_code     VARCHAR2(20) not null,
    constraint invoice_material_pk primary key (invoice_id, invoice_number, material_item_id, material_code),
    constraint im_invoice_fk foreign key (invoice_id, invoice_number)
        references invoice (invoice_id, invoice_number),
    constraint im_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code)
);

Create table payment_equipment
(
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    equipment_id        VARCHAR2(16) not null,
    equipment_serial_num VARCHAR2(20) not null,
    constraint payment_equipment_pk primary key (payment_id, payment_reference_num, equipment_id, equipment_serial_num),
    constraint pe_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num),
    constraint pe_equipment_fk foreign key (equipment_id, equipment_serial_num)
        references equipment (equipment_id, equipment_serial_num)
);

Create table delivery_payment
(
    delivery_id         VARCHAR2(16) not null,
    tracking_number     VARCHAR2(20) not null,
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    constraint delivery_payment_pk primary key (delivery_id, tracking_number, payment_id, payment_reference_num),
    constraint dp_delivery_fk foreign key (delivery_id, tracking_number)
        references delivery (delivery_id, tracking_number),
    constraint dp_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num)
);

Create table employee_supervisor
(
    supervisor_employee_id   VARCHAR2(16) not null,
    supervisor_employee_nric VARCHAR2(20) not null,
    supervisee_employee_id   VARCHAR2(16) not null,
    supervisee_employee_nric VARCHAR2(20) not null,
    constraint employee_supervisor_pk primary key (supervisor_employee_id, supervisor_employee_nric, supervisee_employee_id, supervisee_employee_nric),
    constraint es_supervisor_fk foreign key (supervisor_employee_id, supervisor_employee_nric)
        references employee (employee_id, employee_nric),
    constraint es_supervisee_fk foreign key (supervisee_employee_id, supervisee_employee_nric)
        references employee (employee_id, employee_nric)
);

Create table payment_material
(
    payment_id          VARCHAR2(16) not null,
    payment_reference_num VARCHAR2(20) not null,
    material_item_id    VARCHAR2(16) not null,
    material_code       VARCHAR2(20) not null,
    constraint payment_material_pk primary key (payment_id, payment_reference_num, material_item_id, material_code),
    constraint pm_payment_fk foreign key (payment_id, payment_reference_num)
        references payment (payment_id, payment_reference_num),
    constraint pm_material_fk foreign key (material_item_id, material_code)
        references material (material_item_id, material_code)
);


prompt
prompt
prompt .......... ALL DATABASE TABLES ARE SUCCESSFULLY CREATED ..........
prompt
prompt

commit;