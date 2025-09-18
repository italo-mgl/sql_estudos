SELECT
    IdProduto,
    SUM(VlProduto) AS TotalPontos
FROM transacao_produto

GROUP BY VlProduto
ORDER BY TotalPontos DESC