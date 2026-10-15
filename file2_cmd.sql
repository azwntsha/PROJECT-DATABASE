-- File2.sql
SET LINESIZE 200 
SET COLSEP ' | '
COLUMN equipment_type FORMAT A50
COLUMN total_equipment FORMAT 99,999,999
COLUMN total_cost FORMAT 99,999,999



SELECT 
    e.equipment_type, 
    COUNT(e.equipment_id) AS total_equipment,
    SUM(i.unit_cost) AS total_cost
FROM purchase_order po -- 2 time
JOIN delivery d -- 1 time
    ON po.purchase_id = d.purchase_id 
   AND po.purchase_reference_num = d.purchase_reference_num
JOIN equipment e -- 1 time
    ON d.delivery_id = e.delivery_id 
   AND d.tracking_number = e.tracking_number
JOIN inventory i -- 1 time
    ON e.inventory_item_id = i.inventory_item_id 
   AND e.inventory_reference_number = i.inventory_reference_number
WHERE po.order_approval_status = 'APPROVED'
  AND d.delivery_status = 'Delivered'
  AND e.equipment_condition = 'Good'
GROUP BY e.equipment_type;

