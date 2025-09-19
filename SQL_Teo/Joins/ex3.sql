
SELECT

    t3.DescCateogriaProduto
    COUNT(t1.IdTransacao) AS QTD
FROM  transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE DtCriacao >= '2024-01-01' AND DtCriacao <='2024-12-31'
AND t3.DescCateogriaProduto = 'lovers'
GROUP BY QTD


