SELECT
    FlEmail,
    COUNT(IdCliente) AS Quantidade
FROM clientes
GROUP BY FlEmail
LIMIT 10

