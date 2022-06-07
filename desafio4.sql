SELECT
    users.usuario AS usuario,
    IF (
        (
            SELECT
                DISTINCT YEAR(data_play)
            FROM
                SpotifyClone.users_play_history
            WHERE
                users.usuario_id = usuario_id
                AND YEAR(data_play) = 2021
        ) IS NULL,
        'Usuário inativo',
        'Usuário ativo'
    ) AS condicao_usuario
FROM
    SpotifyClone.users AS users
GROUP BY
    users.usuario,
    condicao_usuario;