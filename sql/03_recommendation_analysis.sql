/*
Business Question:
Does the recommendation system influence purchase behavior?
*/

-- 3.1 Recommendation score vs purchase
SELECT 
    purchase_flag,
    COUNT(*) AS total_users,
    AVG(final_recommendation_score) AS avg_recommendation_score
FROM ECOMMERCE
GROUP BY purchase_flag;


-- 3.2 Candidate rank vs conversion
SELECT
    candidate_rank,
    COUNT(*) AS total_users,
    SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate
FROM ECOMMERCE
GROUP BY candidate_rank
ORDER BY candidate_rank;


-- 3.3 Affinity score segmentation analysis
WITH base AS (
    SELECT 
        purchase_flag,
        user_item_affinity_score,
        NTILE(3) OVER (ORDER BY user_item_affinity_score) AS affinity_bucket
    FROM ECOMMERCE
)
SELECT
    affinity_bucket,
    COUNT(*) AS total_users,
    SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) AS purchases,
    ROUND(
        SUM(CASE WHEN purchase_flag = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
        2
    ) AS conversion_rate,
    AVG(user_item_affinity_score) AS avg_affinity_score
FROM base
GROUP BY affinity_bucket
ORDER BY affinity_bucket;