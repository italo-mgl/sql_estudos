-- WITH tb_clientes_janeiro AS (

--     SELECT *
--     FROM transacoes
--     WHERE DtCriacao >= '2025-01-01'
--     AND DtCriacao < '2025-02-01'
-- )

-- SELECT 
--     COUNT(DISTINCT t1.IdCliente),
--     COUNT(DISTINCT t2.IdCliente) 
-- FROM tb_clientes_janeiro AS t1

-- LEFT JOIN transacoes AS t2
-- ON t1.IdCliente = t2.IdCliente
-- AND t2.DtCriacao >= '2025-08-25'
-- AND t2.DtCriacao < '2025-08-30'

---------------------------------------
WITH tb_clientes_janeiro AS (

    SELECT DISTINCT (IdCliente)
    FROM transacoes
    WHERE DtCriacao >= '2025-01-01'
    AND DtCriacao < '2025-02-01'
),

tb_clientes_curso AS (

SELECT DISTINCT IdCliente
FROM transacoes
WHERE DtCriacao >= '2025-08-25'
AND DtCriacao < '2025-08-30'

)

SELECT 
    COUNT(t1.IdCliente) AS clienteJaneiro,
    COUNT(t2.IdCliente) AS clienteCurso

FROM tb_clientes_janeiro AS t1
LEFT JOIN tb_clientes_curso AS t2
ON t1.IdCliente = t2.IdCliente