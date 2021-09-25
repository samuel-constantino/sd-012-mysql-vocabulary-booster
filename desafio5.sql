SELECT 
    j.JOB_TITLE AS Cargo,
    (j.MAX_SALARY - j.MIN_SALARY) AS 'Variação Salarial',
    ROUND(AVG(j.MIN_SALARY / 12), 2) AS 'Média mínima mensal',
    ROUND(AVG(j.MAX_SALARY / 12), 2) AS 'Média máxima mensal'
FROM
    hr.jobs AS j
GROUP BY j.JOB_ID
ORDER BY (j.MAX_SALARY - j.MIN_SALARY), Cargo;
