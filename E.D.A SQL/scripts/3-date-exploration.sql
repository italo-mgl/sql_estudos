-- Exploração de DATAS

-- Encontrando a data do primeiro e ultimo pedido
-- Quantos anos de vendas estão disponíveis
SELECT
MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(YEAR,MIN(order_date), MAX(order_date)) AS order_range_years
FROM [gold.fact_sales]

-- Encontrando o cliente mais novo e mais velho
SELECT
MIN(birthdate) AS oldest,
DATEDIFF(YEAR,MIN(birthdate), GETDATE()) AS Oldest_Age,
MAX(birthdate) AS younger,
DATEDIFF(YEAR,MAX(birthdate), GETDATE()) AS Youngest_Age
FROM [gold.dim_customers]