SELECT
    t2.DescCateogriaProduto,
    COUNT(t1.IdProduto) AS QuantidadeVendas
FROM transacao_produto AS t1
LEFT JOIN produtos AS t2
ON t1.IdProduto = t2.IdProduto
GROUP BY t1.IdProduto
ORDER BY QuantidadeVendas DESC



 