SELECT music.music_name AS cancao,
COUNT(history.user_id) AS reproducoes
FROM SpotifyClone.musics AS music
INNER JOIN SpotifyClone.playback_history AS history ON music.song = history.song
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;