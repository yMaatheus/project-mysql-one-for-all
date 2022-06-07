SELECT
    MIN(planos.valor_plano) AS faturamento_minimo,
    MAX(planos.valor_plano) AS faturamento_maximo,
    ROUND(AVG(planos.valor_plano), 2) AS faturamento_medio,
    ROUND(SUM(planos.valor_plano), 2) AS faturamento_total
FROM
    SpotifyClone.users AS users
    INNER JOIN SpotifyClone.planos AS planos ON users.plano_id = planos.plano_id;