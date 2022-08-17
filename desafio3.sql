SELECT
  u.username AS usuario,
  COUNT(ucd.cantion_id) AS qt_de_musicas_ouvidas,
  ROUND((SUM(c.length)/60), 2) AS total_minutos 
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_cantion_date AS ucd 
ON u.user_id = ucd.user_id
INNER JOIN SpotifyClone.cantion AS c 
ON ucd.cantion_id = c.cantion_id
GROUP BY u.user_id
ORDER BY u.username; 