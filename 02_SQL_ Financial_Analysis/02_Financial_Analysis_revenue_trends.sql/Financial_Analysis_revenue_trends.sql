SELECT 
    revenue_month,
    current_total,
    LAG(current_total) OVER (ORDER BY revenue_month) AS previous_month,
    ROUND(((current_total - LAG(current_total) OVER (ORDER BY revenue_month)) / 
    NULLIF(LAG(current_total) OVER (ORDER BY revenue_month), 0)) * 100, 2) AS growth_pct
FROM business_sales_table;