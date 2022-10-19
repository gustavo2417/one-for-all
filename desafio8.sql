SELECT arti.artist_name AS artista,
alb.album_name AS album
FROM SpotifyClone.artists AS arti
INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = arti.artist_id
WHERE arti.artist_name = 'Elis Regina';