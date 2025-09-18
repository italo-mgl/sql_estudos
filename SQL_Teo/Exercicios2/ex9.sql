SELECT 
    sum(QtdePontos) AS TotalPontos, 
    DtCriacao,
    COUNT(DISTINCT substr(DtCriacao, 1, 10)) AS QtdeDiasUnicos,

    SUM(QtdePontos)/ COUNT(DISTINCT substr(DtCriacao, 1, 10)) AS AVGPontoDia
FROM transacoes
WHERE QtdePontos > 0