SELECT COUNT(history.song) AS quantidade_musicas_no_historico
FROM SpotifyClone.playback_history AS history
INNER JOIN SpotifyClone.users AS user ON user.user_id = history.user_id
WHERE user.user_name = 'Barbara Liskov';