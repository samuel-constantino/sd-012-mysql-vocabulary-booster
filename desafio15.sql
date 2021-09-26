USE hr;

DELIMITER $$
CREATE PROCEDURE buscar_media_por_cargo(IN jobTitle VARCHAR(200))
BEGIN
  SELECT
    ROUND(AVG(E.SALARY), 2) AS `Média salarial`
  FROM
    hr.employees AS E
  INNER JOIN
    hr.jobs AS J ON E.JOB_ID = J.JOB_ID
  WHERE
    J.JOB_TITLE = jobTitle
  GROUP BY
    J.JOB_ID;
END $$
DELIMITER ;
