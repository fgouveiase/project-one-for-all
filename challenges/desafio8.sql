SELECT 
ar.nome AS artista,
al.nome AS album
FROM SpotifyClone.album as al 
INNER JOIN SpotifyClone.artista AS ar
ON ar.artista_id = al.artista_id
WHERE ar.nome = "Elis Regina"
ORDER BY album;