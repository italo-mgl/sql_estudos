SELECT 
    DescCateogriaProduto,
    COUNT(*)
FROM produtos
GROUP BY DescCateogriaProduto