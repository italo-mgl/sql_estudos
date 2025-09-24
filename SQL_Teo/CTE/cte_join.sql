-- Quem participou da 1° aula
WITH tb_primeiro_dia AS (
    SELECT DISTINCT IdCliente
    FROM transacoes
    WHERE substr(DtCriacao,1,10) = '2025-08-25'
),

-- Quem participou do curso inteiro
tb_dias_curso AS (

    SELECT 
        DISTINCT IdCliente, 
        substr(DtCriacao,1,10) AS presenteDia
    FROM transacoes
    WHERE substr(DtCriacao,1,10) >= '2025-08-25'
    AND substr(DtCriacao,1,10) <= '2025-08-30'
    
    ORDER BY IdCliente, presenteDia

),

-- Contando quantas vezes quem participou do primeiro dia, voltou
tb_cliente_dias AS (
    SELECT 
        t1.IdCliente,
        COUNT(DISTINCT t2.presenteDia) as qtdDias
    FROM tb_primeiro_dia AS t1
    LEFT JOIN tb_dias_curso AS t2
    ON t1.IdCliente = t2.IdCliente

    GROUP BY t1.IdCliente
)

-- calculando a média
SELECT
    avg(qtdDias)
FROM tb_cliente_dias
