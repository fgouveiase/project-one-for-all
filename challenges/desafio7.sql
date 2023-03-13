SELECT
ar.nome AS artista,
al.nome AS album,
COUNT(s.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS ar
INNER JOIN SpotifyClone.album AS al
ON ar.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguindo AS s
ON ar.artista_id = s.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista, album;