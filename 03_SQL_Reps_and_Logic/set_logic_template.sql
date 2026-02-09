/* PROJECT: 03 - Set Theory Joins
PURPOSE: Identifying overlapping data between two sets (Inner Join).
*/

SELECT 
    a.customer_id,
    a.total_spent,
    b.last_login_date
FROM revenue_table a
INNER JOIN user_activity_table b 
    ON a.customer_id = b.customer_id;