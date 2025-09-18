SELECT 
    IdCliente,
    SUM(QtdePontos)

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY IdCliente

ORDER BY SUM(QtdePontos) DESC
 