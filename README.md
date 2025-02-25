# Olist SQL Project 🔍 🗃️

Este projeto é uma análise de dados usando o banco de dados SQLite, a partir de um conjunto de dados do Olist. Ele inclui a importação de dados CSV para o banco de dados SQLite e a execução de consultas SQL para analisar e manipular os dados.

## 📂 Estrutura do Projeto

### 1. **Importação de Dados** 🚀  
O projeto começa com a criação de um banco de dados SQLite e a importação dos dados de diversos arquivos CSV para o banco de dados. Os arquivos CSV contêm informações sobre clientes, pedidos, produtos, vendedores, geolocalização e mais.

### 2. **Consultas SQL** 📊  
Diversas consultas SQL são realizadas para obter insights dos dados:

- **Consulta de produtos por categoria e quantidade de fotos**: Seleciona produtos de determinadas categorias com uma quantidade mínima de fotos.  
- **Análise de peso dos produtos**: Calcula o maior, menor e peso médio de produtos por categoria.  
- **Preenchimento de categorias faltantes**: Substitui valores nulos ou categorizados de forma inconsistente.  
- **Vendedores e estados**: Relaciona vendedores e seus estados com informações de pedidos aprovados antes de uma data específica.  
- **Receita por estado e categoria**: Calcula a receita total por estado e categoria de produto.  
- **Melhores categorias**: Identifica as três categorias mais vendidas.  
- **Auditoria de vendas de vendedores**: Calcula o tempo desde a última venda dos vendedores e determina aqueles que não venderam nos últimos 90 dias.  

### 3. **Tabelas Criadas** 📈  
O projeto cria tabelas como `audiencia_venda` e `avg_compra_seller` para, por exemplo, realizar auditorias de vendas e calcular o tempo médio de venda de cada vendedor.
