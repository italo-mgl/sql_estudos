SELECT 
    DtCriacao, 
    substr(DtCriacao, 1, 19) AS DTsubstring,
    datetime(substr(DtCriacao,1, 19)) as DATA,
    strftime('%w',datetime(substr(DtCriacao,1, 19))) as Dia_da_Semana

FROM clientes
LIMIT 10
