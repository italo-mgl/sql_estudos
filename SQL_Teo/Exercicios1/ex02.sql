SELECT
    *,
    DATE(substr(DtCriacao, 1, 19)) AS DataNova,
    strftime('%w', DATE(substr(DtCriacao, 1, 19))) AS Data_Novas
FROM
    transacoes
WHERE
    Data_Novas IN ('6','7')