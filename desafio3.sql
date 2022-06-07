SELECT
    users.usuario AS usuario,
    COUNT(users.usuario_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(cancoes.duracao / 60), 2) AS total_minutos
FROM
    SpotifyClone.users AS users
    INNER JOIN SpotifyClone.users_play_history AS history ON users.usuario_id = history.usuario_id
    INNER JOIN SpotifyClone.cancoes AS cancoes ON history.cancao_id = cancoes.cancao_id
GROUP BY
    users.usuario;