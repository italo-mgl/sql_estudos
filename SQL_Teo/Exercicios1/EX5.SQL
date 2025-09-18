SELECT
    IdCliente,
    COUNT(*) AS Transacoes
FROM transacoes
WHERE DtCriacao >= '2024-01-01' 
AND DtCriacao <= '2024-12-31'
GROUP BY IdCliente
ORDER BY Transacoes DESC
LIMIT 10