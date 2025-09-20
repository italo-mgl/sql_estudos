SELECT 
    t1.IdCliente, 
    CAST(
    julianday('now') - julianday(substr(t1.DtCriacao, 1, 19))
    AS INT) AS Idade_Base,
    COUNT(t2.IdTransacao) QTDTransacoes
FROM clientes AS t1
LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente
GROUP BY t1.IdCliente, Idade_Base
