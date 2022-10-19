SELECT music.music_name AS nome,
COUNT(history.song) AS reproducoes
FROM SpotifyClone.musics AS music
INNER JOIN SpotifyClone.playback_history AS history ON history.song = music.song
INNER JOIN SpotifyClone.users AS user ON user.user_id = history.user_id
WHERE user.plan_id IN (1, 4)
GROUP BY music.song
ORDER BY nome;