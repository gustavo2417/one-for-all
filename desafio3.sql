SELECT user.user_name AS usuario,
COUNT(history.song) AS qt_de_musicas_ouvidas,
ROUND((SUM(duration)) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.playback_history AS history ON history.user_id = user.user_id
INNER JOIN SpotifyClone.musics AS music ON music.song = history.song
GROUP BY user.user_name
ORDER BY user.user_name;