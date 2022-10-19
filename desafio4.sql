SELECT user.user_name AS usuario,
IF(MAX(YEAR(history.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.users AS user
INNER JOIN SpotifyClone.playback_history AS history ON history.user_id = user.user_id
GROUP BY user.user_name
ORDER BY user.user_name;