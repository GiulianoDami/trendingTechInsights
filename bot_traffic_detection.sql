
-- Identifies bot-driven traffic patterns using summary keywords
SELECT 
    category,
    COUNT(*) AS topic_count
FROM news_topics
WHERE 
    summary LIKE '%bots%' 
    OR summary LIKE '%spam%'
    OR summary LIKE '%automated%'
GROUP BY category
ORDER BY topic_count DESC;

