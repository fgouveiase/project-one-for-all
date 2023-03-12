SELECT
c.nome AS cancao,
COUNT(hi.cancoes_id) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS hi
ON hi.cancoes_id = c.cancoes_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao LIMIT 2;