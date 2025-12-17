
CREATE TABLE news_topics (
    topic VARCHAR(255) NOT NULL,
    category VARCHAR(50) NOT NULL CHECK (category IN ('Technology', 'Entertainment', 'Cybersecurity')),
    date DATE NOT NULL,
    summary TEXT NOT NULL
);

