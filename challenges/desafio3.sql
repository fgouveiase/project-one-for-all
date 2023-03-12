SELECT
us.nome AS pessoa_usuaria,
COUNT(hi.cancoes_id) AS musicas_ouvidas,
ROUND(SUM(c.duracao_segundos / 60  ), 2) AS total_minutos
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS hi
ON hi.usuario_id = us.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancoes_id = hi.cancoes_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;