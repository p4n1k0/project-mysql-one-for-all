SELECT c.name AS cancao,
       COUNT(c.name) AS reproducoes
    FROM SpotifyClone.user_cantion_date AS ucd
INNER JOIN SpotifyClone.cantion AS c
ON ucd.cantion_id = c.cantion_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
