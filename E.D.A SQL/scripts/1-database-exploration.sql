/*
============================================
Exploração do banco de dados
============================================
Finalidade:
	- Explorar a estrutura do banco de dados, incluindo a lista de tabelas e seus schemas;
	- Inspecionar as colunas e metadados de tabelas específicas;

Tabela usadas:
	- INFORMATION_SCHEMA.TABLES
	- INFORMATION_SCHEMA.COLUMNS
*/

SELECT DISTINCT
category
FROM [gold.dim_products]

SELECT DISTINCT
sales_amount
FROM [gold.fact_sales]
