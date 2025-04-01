SELECT u.username AS usuario, 
        COUNT(c.name) AS qt_de_musicas_ouvidas,
        ROUND(SUM(c.length)/60,2) AS total_minutos
     FROM SpotifyClone.user_cantion_date AS ucd
INNER JOIN SpotifyClone.user AS u
ON ucd.user_id = u.user_id
INNER JOIN SpotifyClone.cantion AS c
ON ucd.cantion_id = c.cantion_id
GROUP BY usuario
ORDER BY usuario;
