WITH tb_cliente_primeiro_dia AS (

    SELECT 
        DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'

),

tb_clientes_ultimo_dia AS (

    SELECT 
    DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-29'
),

tb_join AS (

    SELECT
        t1.IdCliente AS PrimCliente,
        t2.IdCliente AS UltCliente
    FROM tb_cliente_primeiro_dia AS t1
    LEFT JOIN tb_clientes_ultimo_dia AS t2
    ON  t1.IdCliente = t2.IdCliente

)

SELECT 
    COUNT(PrimCliente),
    COUNT(UltCliente),
    1.*COUNT(UltCliente) / COUNT(PrimCliente)
FROM tb_join
