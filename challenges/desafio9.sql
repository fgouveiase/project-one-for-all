SELECT
COUNT(hi.cancoes_id) AS musicas_no_historico
FROM SpotifyClone.historico AS hi
INNER JOIN SpotifyClone.usuario AS us
ON us.usuario_id = hi.usuario_id
WHERE us.nome = "Barbara Liskov";