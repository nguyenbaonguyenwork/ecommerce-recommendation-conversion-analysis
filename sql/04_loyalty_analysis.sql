/*
Business Question:
Do loyal users behave differently and convert better?
*/

-- 4.1 Membership level vs conversion
SELECT
    membership_level,
    COUNT(*) AS total_users,
    SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM ECOMMERCE
GROUP BY membership_level;


-- 4.2 Loyalty segmentation analysis
WITH base AS (
    SELECT 
        user_loyalty_score,
        cart_add_count,
        purchase_flag,
        NTILE(3) OVER (ORDER BY user_loyalty_score) AS loyalty_bucket
    FROM ECOMMERCE
)
SELECT 
    CASE loyalty_bucket
        WHEN 1 THEN 'Low'
        WHEN 2 THEN 'Mid'
        WHEN 3 THEN 'High'
    END AS loyalty_level,
    COUNT(*) AS total_users,
    AVG(cart_add_count) AS avg_cart_activity,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM base
GROUP BY loyalty_bucket
ORDER BY loyalty_bucket;