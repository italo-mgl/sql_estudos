SELECT *
FROM transacao_produto AS t1
WHERE t1.IdProduto IN (
    SELECT *
    FROM produtos
    WHERE DescProduto = 'Resgatar Ponei'
)