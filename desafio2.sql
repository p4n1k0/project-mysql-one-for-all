SELECT COUNT(DISTINCT c.cantion_id) AS cancoes,
	   COUNT(DISTINCT al.album_id) AS albuns, 
       COUNT(DISTINCT a.artist_id) AS artistas        
FROM SpotifyClone.cantion AS c
INNER JOIN SpotifyClone.album AS al 
ON c.album_id = al.album_id
INNER JOIN SpotifyClone.artist AS a
ON c.artist_id = a.artist_id;
