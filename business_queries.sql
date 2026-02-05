
-- AI Product Analytics: User Feedback Analysis

-- 1. High severity issue percentage
SELECT 
  ROUND(100.0 * SUM(CASE WHEN severity = 'High' THEN 1 ELSE 0 END) / COUNT(*), 2) AS high_severity_pct
FROM user_feedback;

-- 2. Top 5 issues by severity x frequency
SELECT 
  feedback_type,
  COUNT(*) AS issue_count,
  AVG(CASE 
        WHEN severity = 'Low' THEN 1 
        WHEN severity = 'Medium' THEN 2 
        WHEN severity = 'High' THEN 3 
      END) AS avg_severity,
  COUNT(*) * AVG(CASE 
        WHEN severity = 'Low' THEN 1 
        WHEN severity = 'Medium' THEN 2 
        WHEN severity = 'High' THEN 3 
      END) AS priority_score
FROM user_feedback
GROUP BY feedback_type
ORDER BY priority_score DESC
LIMIT 5;
