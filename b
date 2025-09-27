SELECT
    t1.InvoiceNo,
    t1.Description,
    t2.Country
FROM
    retail AS t1
LEFT JOIN
    customers AS t2 ON t1.CustomerID = t2.CustomerID;

and


SELECT
    t1.CustomerID,
    SUM(t1.Quantity * t1.UnitPrice) AS CustomerRevenue,
    t2.Country
FROM
    retail AS t1
INNER JOIN
    customers AS t2 ON t1.CustomerID = t2.CustomerID 
WHERE
    t1.Quantity > 0
GROUP BY
    t1.CustomerID, t2.Country
ORDER BY
    CustomerRevenue DESC
LIMIT 5;
