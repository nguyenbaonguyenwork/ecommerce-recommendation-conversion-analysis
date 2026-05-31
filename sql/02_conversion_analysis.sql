/*
Business Question:
What behaviors lead to purchase conversion?
*/

-- 2.1 Cart behavior vs conversion
SELECT
    cart_add_count,
    COUNT(*) AS total_users,
    SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM ECOMMERCE
GROUP BY cart_add_count
ORDER BY cart_add_count;


-- 2.2 Wishlist / discount behavior vs conversion
WITH base AS (
    SELECT *,
           (discount_percentage * 100.0 / item_price) AS discount_pct
    FROM ECOMMERCE
)
SELECT
    CASE 
        WHEN discount_pct = 0 THEN '0%'
        WHEN discount_pct <= 10 THEN '1-10%'
        WHEN discount_pct <= 20 THEN '11-20%'
        WHEN discount_pct <= 30 THEN '21-30%'
        ELSE '30%+'
    END AS discount_bucket,
    COUNT(*) AS total_users,
    SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM base
GROUP BY 
    CASE 
        WHEN discount_pct = 0 THEN '0%'
        WHEN discount_pct <= 10 THEN '1-10%'
        WHEN discount_pct <= 20 THEN '11-20%'
        WHEN discount_pct <= 30 THEN '21-30%'
        ELSE '30%+'
    END
ORDER BY discount_bucket;