/*
======================================
Explora��o de colunas dimens�es
======================================
Finalidade:
	- Explorar a estrutura das tabelas dimens�es

Fun��es SQL:
	- DISTINCT;
	- ORDER BY;
======================================
*/

-- Explorar todos os paises que de onde os clientes s�o
SELECT DISTINCT country
FROM [gold.dim_customers]

-- Explorar todas as categorias de " Major Divisions"
SELECT DISTINCT category, subcategory, product_name
FROM [gold.dim_products]
ORDER BY 1,2,3
