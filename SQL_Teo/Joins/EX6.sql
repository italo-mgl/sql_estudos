SELECT 
    t1.IdCliente,
    SUM(t1.QtdePontos) AS TotalPontos

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE t3.DescCateogriaProduto = 'lovers'

GROUP BY IdCliente

ORDER BY TotalPontos ASC 

LIMIT 5
