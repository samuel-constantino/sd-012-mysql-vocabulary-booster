SELECT 
    C1.ContactName AS `Nome`,
    C1.Country AS País,
    C2.countrymen_quantity AS 'Número de compatriotas'
FROM
    w3schools.customers AS C1,
    (SELECT 
        Country, (COUNT(*) - 1) AS countrymen_quantity
    FROM
        w3schools.customers
    GROUP BY Country) AS C2
WHERE
    C1.Country = C2.Country
        AND C2.countrymen_quantity > 0
ORDER BY Nome;
  