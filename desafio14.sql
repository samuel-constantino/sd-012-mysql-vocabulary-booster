SELECT
  Countries_Union.Country AS `País`
FROM
  (
    (
      SELECT
        C.Country
      FROM
        w3schools.customers AS C
      GROUP BY
        C.Country
    )
    UNION
    (
      SELECT
        S.Country
      FROM
        w3schools.suppliers AS S
      GROUP BY
        S.Country
    )
  ) AS Countries_Union
ORDER BY
  `País`
LIMIT 5;
