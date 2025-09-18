SELECT 
    IdProduto,
    COUNT(*)
FROM transacao_produto
GROUP BY IdProduto