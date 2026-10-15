SET LINESIZE 200 
SET COLSEP ' | '
COLUMN CLIENT_ID       FORMAT A15
COLUMN REQUEST_ID      FORMAT A15
COLUMN CONTRACT_ID     FORMAT A15
COLUMN CLIENT_INFO     FORMAT A40
COLUMN REQUEST_INFO    FORMAT A50

CREATE OR REPLACE VIEW recent_contracts_view AS
SELECT 
    c.client_id,
    sr.request_id,
    ct.contract_id,
    c.client_ownership_type || ' - ' || c.client_loyalty AS client_info,
    sr.request_title || ' - ' || sr.request_service AS request_info
FROM client c
JOIN service_request sr 
    ON c.client_id = sr.client_id 
   AND c.client_reference_num = sr.client_reference_num
JOIN contract ct 
    ON sr.request_id = ct.request_id 
   AND sr.request_code = ct.request_code
WHERE ct.contract_sign_date > DATE '2026-05-10'
ORDER BY ct.contract_sign_date;
SELECT * FROM recent_contracts_view;