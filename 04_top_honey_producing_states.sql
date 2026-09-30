SELECT 
    s.State AS State_Name,
    SUM(h.Value) AS Total_Honey_Production,
    COUNT(h.Year) AS Years_Reported
FROM honey_production h
JOIN state_lookup s ON h.State_ANSI = s.State_ANSI
GROUP BY s.State
HAVING COUNT(h.Year) >= 10
ORDER BY Total_Honey_Production DESC
LIMIT 5;