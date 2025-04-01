SELECT MIN(p.value_plan) AS faturamento_minimo,
	   MAX(p.value_plan) AS faturamento_maximo,
       ROUND(AVG(p.value_plan), 2) AS faturamento_medio,
       SUM(p.value_plan) AS faturamento_total
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.plan AS p
ON u.plan_id = p.plan_id;
