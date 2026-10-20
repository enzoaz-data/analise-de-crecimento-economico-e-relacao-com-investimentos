# Consultas SQL

## Objetivo

Utilizar SQL Server para comparar o Produto Interno Bruto (PIB) dos municípios do estado de São Paulo entre 2022 e 2023 e relacionar os resultados aos indicadores de rendimento do Censo Demográfico de 2022.

A consulta busca identificar municípios que apresentaram crescimento tanto no PIB total quanto no PIB per capita no período analisado.

## Consulta desenvolvida

O arquivo contém a consulta utilizada para relacionar as bases e calcular o crescimento percentual do PIB municipal.

### Etapas da consulta

1. **Relacionamento entre as bases:** utilização de `INNER JOIN` para relacionar os dados do PIB aos indicadores de rendimento do Censo por meio do código do município.
2. **Comparação entre anos:** utilização de `SELF JOIN` para relacionar a tabela de PIB a ela mesma e comparar os valores de 2022 e 2023.
3. **Filtragem:** seleção dos municípios que apresentaram crescimento tanto no PIB total quanto no PIB per capita.
4. **Cálculo do crescimento percentual:** comparação dos valores do PIB nos dois anos, com arredondamento para duas casas decimais.
5. **Prevenção de divisão por zero:** utilização de `NULLIF()` para retornar `NULL` quando o PIB de 2022 for zero, evitando um erro no cálculo percentual.
6. **Ordenação:** organização dos resultados do maior para o menor crescimento percentual.

## Observações sobre a análise

O crescimento calculado é nominal, ou seja, não considera o efeito da inflação.

Os indicadores de rendimento correspondem ao Censo Demográfico de 2022 e são utilizados para contextualizar o perfil econômico dos municípios. Esses dados, isoladamente, não permitem estabelecer uma relação causal entre rendimento e crescimento econômico.

Os resultados podem auxiliar na identificação inicial de mercados potenciais para investimentos em publicidade, mas não são suficientes, por si só, para determinar o potencial de consumo ou o retorno de um investimento publicitário.

## Resultado esperado

Uma tabela contendo:

- Código e nome do município;
- PIB de 2022 e PIB de 2023;
- Crescimento percentual do PIB;
- PIB per capita de 2023;
- Rendimento médio mensal;
- Rendimento mediano mensal.

