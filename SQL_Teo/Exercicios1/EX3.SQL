SELECT
    IdCliente,
    SUM(QtdePontos) AS SomaPontos
FROM transacoes
WHERE DtCriacao >= '2025-07-01' 
AND DtCriacao <= '2025-07-31'
GROUP BY IdCliente
ORDER BY SomaPontos DESC
LIMIT 1
