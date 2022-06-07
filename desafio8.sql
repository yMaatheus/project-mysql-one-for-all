SELECT
    artists.artista AS artista,
    albuns.album AS album
FROM
    SpotifyClone.artists AS artists
    INNER JOIN SpotifyClone.albuns AS albuns ON artists.artista_id = albuns.artista_id
WHERE artista = 'Walter Phoenix'
GROUP BY
    artists.artista,
    albuns.album
ORDER BY
    album;