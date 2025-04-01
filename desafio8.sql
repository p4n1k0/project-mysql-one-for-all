SELECT a.name AS artista,
	   al.name AS album              
FROM SpotifyClone.album AS al
INNER JOIN SpotifyClone.artist AS a
ON al.artist_id = a.artist_id
WHERE a.name = "Elis Regina";
