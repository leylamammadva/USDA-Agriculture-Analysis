SELECT 
    s.State AS State_Name,
    SUM(m.Value) AS Total_Milk_Production
FROM milk_production m
JOIN state_lookup s ON m.State_ANSI = s.State_ANSI
WHERE m.Period = 'YEAR'
GROUP BY s.State
ORDER BY Total_Milk_Production DESC
LIMIT 10;