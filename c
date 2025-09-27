SELECT
    Description,
    AVG(UnitPrice) AS AvgItemPrice
FROM
    retail
GROUP BY
    Description
HAVING
    AVG(UnitPrice) > (
        SELECT AVG(UnitPrice) -- Subquery: Calculates the overall average price
        FROM retail
        WHERE UnitPrice > 0
    )
ORDER BY
    AvgItemPrice DESC
LIMIT 5;
