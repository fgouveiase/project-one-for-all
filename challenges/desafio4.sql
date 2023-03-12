SELECT
us.nome AS pessoa_usuaria,
IF(MAX(YEAR(hi.data_reproducao)) >= 2021, "Ativa", "Inativa") AS status_pessoa_usuaria
FROM SpotifyClone.usuario AS us
INNER JOIN SpotifyClone.historico AS hi
ON hi.usuario_id = us.usuario_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;