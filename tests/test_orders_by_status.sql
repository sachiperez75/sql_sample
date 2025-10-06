-- Test Case: Ensure orders are grouped by status with counts
-- Expected result: Provides counts of orders per status for the past 30 days
SELECT status,
       COUNT(*) AS total_orders
FROM   orders
WHERE  created_at >= CURRENT_DATE - INTERVAL '30 days'
GROUP  BY status
ORDER  BY total_orders DESC;
