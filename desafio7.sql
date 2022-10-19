SELECT arti.artist_name AS artista,
alb.album_name AS album,
COUNT(follows.artist_id) AS seguidores
FROM SpotifyClone.artists AS arti
INNER JOIN SpotifyClone.albums AS alb ON arti.artist_id = alb.artist_id
INNER JOIN SpotifyClone.followers AS follows ON arti.artist_id = follows.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;