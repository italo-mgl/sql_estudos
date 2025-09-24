-- SELECT
--     substr(DtCriacao,1,10) AS dtDia,
--     COUNT(DISTINCT IdCliente) as qtdCliente
-- FROM transacoes
-- WHERE substr(DtCriacao,1,10) >= '2025-08-25'
-- AND substr(DtCriacao,1,10) <= '2025-08-29'
-- GROUP BY dtDia

WITH tb_clientes_d1 AS (
    SELECT 
    DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),

tb_join AS (

SELECT 
    substr(t2.DtCriacao,1,10) AS dtDia,
    COUNT(DISTINCT t1.IdCliente) AS qtdCliente,
    1.*COUNT(DISTINCT t1.IdCliente) / (SELECT COUNT(*) from tb_clientes_d1) AS pctRetencao,
    1-(1.*COUNT(DISTINCT t1.IdCliente) / (SELECT COUNT(*) from tb_clientes_d1)) AS churn 

FROM tb_clientes_d1 AS t1
LEFT JOIN transacoes AS t2
ON t1.IdCliente = t2.IdCliente

WHERE substr(t2.DtCriacao,1,10) >= '2025-08-25'
AND substr(t2.DtCriacao,1,10) <= '2025-08-29'
GROUP BY dtDia
)

SELECT * FROM tb_join 
