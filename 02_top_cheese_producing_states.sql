SELECT 
    s.State AS State_Name,
    SUM(c.Value) AS Total_Cheese_Production
FROM cheese_production c
JOIN state_lookup s ON c.State_ANSI = s.State_ANSI
WHERE c.Period = 'YEAR'
GROUP BY s.State
ORDER BY Total_Cheese_Production DESC
LIMIT 5;