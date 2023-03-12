SELECT
COUNT(c.cancoes_id) AS cancoes,
COUNT(DISTINCT ar.artista_id) AS artistas,
COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.album AS al
ON al.album_id = c.album_id
INNER JOIN SpotifyClone.artista AS ar
ON ar.artista_id = al.artista_id;