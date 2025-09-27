CREATE VIEW Customer_Revenue_View AS
SELECT
    t1.CustomerID,
    t2.Country,
    SUM(t1.Quantity * t1.UnitPrice) AS TotalRevenue,
    COUNT(DISTINCT t1.InvoiceNo) AS TotalOrders
FROM
    retail AS t1
INNER JOIN
    customers AS t2 ON t1.CustomerID = t2.CustomerID
GROUP BY
    t1.CustomerID, t2.Country;

SELECT *
FROM Customer_Revenue_View
WHERE TotalRevenue > 10000;
