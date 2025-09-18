SELECT
    *,
    (CASE 
        WHEN QtdePontos < 10 THEN 'Baixo'
        WHEN QtdePontos < 500 THEN 'Médio'
        ELSE 'Alto'
    END) AS GRUPO
FROM transacoes
