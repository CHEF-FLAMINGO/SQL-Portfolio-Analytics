SELECT DISTINCT 
    UPPER(TRIM(student_name)) AS standardized_name,
    payment_amount,
    COALESCE(payment_status, 'Unverified') AS status
FROM raw_payment_log
WHERE payment_amount > 0;