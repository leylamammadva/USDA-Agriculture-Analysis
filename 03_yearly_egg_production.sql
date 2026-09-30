SELECT 
    Year,
    SUM(Value) AS Total_Egg_Production
FROM egg_production
WHERE Period = 'YEAR'
GROUP BY Year
ORDER BY Year ASC;