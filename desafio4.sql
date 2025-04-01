SELECT u.username AS usuario,
IF(YEAR(MAX(ucd.date_reprodution)) >= 2021,
'Usuário ativo','Usuário inativo') AS status_usuario
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.user_cantion_date AS ucd
ON ucd.user_id = u.user_id
GROUP BY usuario
ORDER BY usuario;
