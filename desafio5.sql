SELECT
    cancoes.cancao AS cancao,
    COUNT(*) AS reproducoes
FROM
    SpotifyClone.cancoes AS cancoes
    INNER JOIN SpotifyClone.users_play_history AS history ON cancoes.cancao_id = history.cancao_id
GROUP BY
    cancoes.cancao_id
ORDER BY
    reproducoes DESC,
    cancoes.cancao
LIMIT
    2;