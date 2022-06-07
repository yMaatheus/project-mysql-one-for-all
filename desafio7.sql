SELECT
    artists.artista AS artista,
    albuns.album AS album,
    COUNT(follow.usuario_id) AS seguidores
FROM
    SpotifyClone.artists AS artists
    INNER JOIN SpotifyClone.albuns AS albuns ON artists.artista_id = albuns.artista_id
    INNER JOIN SpotifyClone.users_follow_artists AS follow ON artists.artista_id = follow.artista_id
GROUP BY
    artists.artista,
    albuns.album
ORDER BY
    seguidores DESC,
    artista,
    album;