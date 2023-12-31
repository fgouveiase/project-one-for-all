SELECT
FORMAT(MIN(pl.valor_plano), 2) AS faturamento_minimo,
FORMAT(MAX(pl.valor_plano), 2) AS faturamento_maximo,
FORMAT(AVG(pl.valor_plano), 2) AS faturamento_medio,
FORMAT(SUM(pl.valor_plano), 2) AS faturamento_total
FROM SpotifyClone.plano AS pl
INNER JOIN SpotifyClone.usuario AS us
ON pl.plano_id = us.plano_id;