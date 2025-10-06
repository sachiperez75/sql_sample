-- Test Case: Validate monthly sales aggregation including tax calculation
-- Expected result: Returns monthly revenue totals with tax adjustments
SELECT DATE_TRUNC('month', order_date) AS sales_month,
       SUM(subtotal) AS total_subtotal,
       SUM(tax_amount) AS total_tax,
       SUM(subtotal + tax_amount) AS total_revenue
FROM   invoices
GROUP  BY sales_month
ORDER  BY sales_month;
