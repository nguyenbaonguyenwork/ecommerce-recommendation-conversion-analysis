/*
Business Question:
How do users interact with the platform?
Which devices and behaviors drive engagement?
*/

-- 1.1 Device type with highest engagement
SELECT 
    device_type,
    SUM(engagement_score) AS total_engagement
FROM ECOMMERCE
GROUP BY device_type
ORDER BY total_engagement DESC;


-- 1.2 Relationship between engagement actions and purchase behavior
SELECT
    purchase_flag,
    AVG(view_duration_sec) AS avg_view_duration,
    AVG(click_count) AS avg_click_count,
    AVG(engagement_score) AS avg_engagement
FROM ECOMMERCE
GROUP BY purchase_flag;