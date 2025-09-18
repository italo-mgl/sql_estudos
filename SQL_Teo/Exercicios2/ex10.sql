SELECT
    strftime('%w', substr(DtCriacao, 1, 10)) AS DiaSemana,
    COUNT(IdTransacao) AS QuantidadeTransacoes
FROM transacoes
WHERE substr(DtCriacao, 1, 4) = '2025'
GROUP BY DiaSemana
ORDER BY QuantidadeTransacoes DESC