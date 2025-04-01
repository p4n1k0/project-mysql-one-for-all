SELECT COUNT(*) AS quantidade_musicas_no_historico
	FROM SpotifyClone.user_cantion_date AS ucd
INNER JOIN SpotifyClone.user AS u
ON ucd.user_id = u.user_id
WHERE u.username = 'Barbara Liskov';
