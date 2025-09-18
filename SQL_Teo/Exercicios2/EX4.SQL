SELECT
    IdCliente,
    SUM(QtdePontos) AS SomaPontos
FROM transacoes
WHERE QtdePontos >=0
GROUP BY IdCliente
HAVING  DtCriacao >= '2025-05-01' 
AND DtCriacao <= '2025-05-31'
ORDER BY SomaPontos DESC
LIMIT 10

SELECT
    IdCliente,
    SUM(QtdePontos) AS SomaPontos
FROM transacoes
WHERE QtdePontos >=0
AND DtCriacao >= '2025-05-01' 
AND DtCriacao <= '2025-05-31'
GROUP BY IdCliente
ORDER BY SomaPontos DESC
LIMIT 10