# trendingTechInsights

A SQL-powered database tracking real-time trending technology, entertainment, and cybersecurity news topics. Inspired by daily industry reports, this project provides structured data for analysis and insights into emerging digital trends.

## Features

- **Automated News Ingestion**: Pulls structured data from verified tech news sources
- **Category Tagging**: Classifies stories into Technology, Entertainment, and Cybersecurity
- **Trend Analysis**: Built-in queries for identifying rising topics
- **Bot Traffic Detection**: Flags suspicious traffic patterns (inspired by Cloudflare's 2025 report)
- **Regulatory Monitoring**: Tracks legislation like Online Safety Act developments

## Sample Queries

```sql
-- Get top cybersecurity topics from last 7 days
SELECT topic, summary 
FROM news_topics 
WHERE category = 'Cybersecurity' 
AND date >= CURRENT_DATE - 7 
ORDER BY date DESC;

-- Identify bot-driven traffic patterns (inspired by Cloudflare 2025 report)
SELECT 
  category,
  COUNT(*) AS topic_count,
  AVG(traffic_volume) AS avg_traffic
FROM news_topics
WHERE summary LIKE '%bots%' OR summary LIKE '%spam%'
GROUP BY category
ORDER BY topic_count DESC;
```

## Sample Data Included

| Topic | Category | Date       | Summary |
|-------|----------|------------|---------|
| New open-earbuds offer head-tracked Dolby Atmos | Technology | 2025-03-15 | Cleer's new open-ears promise superb spatial audio in their Atmos edition. |
| Cloudflare report reveals global internet traffic grew 19% in 2025 - but a lot of it was just bots | Cybersecurity | 2025-03-14 | The report shows that while internet traffic has increased, much of it is caused by automated bots and spam. |
| UK MPs target VPNs in latest Online Safety Act debate | Cybersecurity | 2025-03-13 | The debate around age verification and VPNs heats up as MPs confirm their commitment to review the role these providers should have in preventing misuse. |

## Setup

1. Create database: `CREATE DATABASE trending_tech_insights;`
2. Import schema: `source schema.sql`
3. Load sample data: `source sample_data.sql`

## Why This Matters

This project directly addresses critical industry trends highlighted in 2025's most discussed topics:
- **Spatial audio innovation** (open-earbuds)
- **Bot traffic analysis** (Cloudflare's 19% growth report)
- **Regulatory challenges** (Online Safety Act debate)

*All data is sourced from verified industry reports and updated daily.*