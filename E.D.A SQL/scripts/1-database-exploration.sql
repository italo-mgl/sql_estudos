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

--EXPLORANDO TODOS OS OBJETOS DO BANCO DE DADOS
SELECT *
FROM INFORMATION_SCHEMA.TABLES

--EXPLORANDO TODAS AS COLUNAS 
SELECT* FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'gold.dim_customers'
