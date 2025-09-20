SELECT
    t3.DescProduto,
    COUNT(DISTINCT  t1.IdCliente) AS QTDClientes 
FROM transacoes AS t1
LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao
LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto
WHERE t3.DescProduto = 'Lista de presença'
AND substr(t1.DtCriacao,1,10) = '2025-08-25'
GROUP BY t3.DescProduto

