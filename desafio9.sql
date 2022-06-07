SELECT
    COUNT(history.usuario_id) AS quantidade_musicas_no_historico
FROM
    SpotifyClone.users AS users
    INNER JOIN SpotifyClone.users_play_history AS history ON users.usuario_id = history.usuario_id
    AND users.usuario = 'Bill';