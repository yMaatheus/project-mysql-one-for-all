SELECT
    cancoes.cancao AS nome,
    COUNT(history.cancao_id) AS reproducoes
FROM
    SpotifyClone.users AS users
    INNER JOIN SpotifyClone.users_play_history AS history ON users.usuario_id = history.usuario_id
    INNER JOIN SpotifyClone.planos AS planos ON planos.plano_id = users.plano_id
    AND (
        planos.plano = 'gratuito'
        OR planos.plano = 'pessoal'
    )
    INNER JOIN SpotifyClone.cancoes AS cancoes ON history.cancao_id = cancoes.cancao_id
GROUP BY
    nome;