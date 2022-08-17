SELECT a.name AS artista,
	   al.name AS album,
       COUNT(fa.user_id) AS seguidores       
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS a
ON al.artist_id = a.artist_id
INNER JOIN SpotifyClone.favorite_artist AS fa
ON a.artist_id = fa.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;