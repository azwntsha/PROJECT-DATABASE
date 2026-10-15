-- File1.sql
SET LINESIZE 150
COLUMN purchase_order_name FORMAT A50
SET COLSEP ' | ' 
COLUMN SUBTOTAL_AMOUNT FORMAT 99,999,999
SELECT 
    po.purchase_order_name, -- 1 time
    i.subtotal_amount -- 1 time
FROM purchase_order po
JOIN invoice i 
    ON po.purchase_id = i.purchase_id 
   AND po.purchase_reference_num = i.purchase_reference_num
WHERE po.order_approval_status = 'APPROVED'
  AND i.subtotal_amount > 900000
ORDER BY i.invoice_date;
