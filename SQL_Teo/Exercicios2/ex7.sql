SELECT 
    IdProduto,
    COUNT(*) AS Quantidade
    
FROM transacao_produto AS tb
LEFT JOIN transacoes ts on tb.IdTransacao = ts.IdTransacao
WHERE DtCriacao <= '2025-15-08'
GROUP BY IdProduto
ORDER BY Quantidade DESC
LIMIT 3