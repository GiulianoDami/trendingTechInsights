
-- Tracks regulatory developments like Online Safety Act
SELECT 
    topic, 
    date,
    summary
FROM news_topics
WHERE 
    summary LIKE '%Online Safety Act%'
    OR summary LIKE '%legislation%'
    OR summary LIKE '%regulation%'
    OR summary LIKE '%MPs%'
ORDER BY date DESC;