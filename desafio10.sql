SELECT c.name AS nome, COUNT(c.name) AS reproducoes 
FROM SpotifyClone.user_cantion_date AS ucd
INNER JOIN SpotifyClone.cantion AS c ON ucd.cantion_id = c.cantion_id
INNER JOIN SpotifyClone.user AS u ON ucd.user_id = u.user_id
INNER JOIN SpotifyClone.plan AS p ON u.plan_id = p.plan_id
WHERE p.name_plan = "gratuito" OR p.name_plan = "pessoal"
GROUP BY nome
ORDER BY nome
;
