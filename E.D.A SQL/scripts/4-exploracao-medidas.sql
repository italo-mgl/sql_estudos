-- EXPLORAÇÃO DE MEDIDAS


-- ENCONTRANDO TOTAL DE VENDAS
SELECT SUM(sales_amount) AS total_sales FROM [gold.fact_sales]

-- QUANTIDADE DE ITENS VENDIDOS
SELECT SUM(quantity) AS total_quantity  FROM [gold.fact_sales]

-- MÉDIA DE PREÇO DE VENDA
SELECT AVG(price) AS avg_price FROM [gold.fact_sales]

-- QUANTIDADE DE PEDIDOS
SELECT COUNT(order_number) AS total_orders FROM [gold.fact_sales]
SELECT COUNT(DISTINCT order_number) AS total_orders FROM [gold.fact_sales]

-- QUANTIDADE DE PRODUTOS
SELECT COUNT (product_key) AS total_product FROM [gold.dim_products]
SELECT COUNT(DISTINCT product_key) AS total_product FROM [gold.dim_products]

-- QUANTIDADE DE CLIENTES 
SELECT COUNT(customer_id) AS total_customers FROM [gold.dim_customers]

-- QUANTIDADE DE CLIENTES QUE FIZERAM UM PEDIDO
SELECT COUNT(DISTINCT customer_key) AS total_costumers_orders FROM [gold.fact_sales]

-- GERANDO RELATÓRIO QUE MOSTRA TODAS AS KEY METRICS DO NEGÓCIO
SELECT 'Total Sales' AS nome_medida, SUM(sales_amount) AS total_sales FROM [gold.fact_sales]
UNION ALL
SELECT 'Total Quantity' AS nome_medida, SUM(quantity) AS total_sales FROM [gold.fact_sales]
UNION ALL
SELECT 'Average Price', AVG(price) FROM [gold.fact_sales]
UNION ALL
SELECT 'Total N. Orders', COUNT(DISTINCT order_number)FROM [gold.fact_sales]
UNION ALL
SELECT 'Total N. Products', COUNT(product_name) FROM [gold.dim_products]
UNION ALL
SELECT 'Total N. Customers', COUNT(customer_key) FROM [gold.dim_customers]
