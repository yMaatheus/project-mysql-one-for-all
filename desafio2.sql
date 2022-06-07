SELECT
    COUNT(DISTINCT can.cancao_id) AS cancoes,
    COUNT(DISTINCT art.artista_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM
    SpotifyClone.cancoes AS can
    JOIN SpotifyClone.artists AS art
    JOIN SpotifyClone.albuns AS alb;