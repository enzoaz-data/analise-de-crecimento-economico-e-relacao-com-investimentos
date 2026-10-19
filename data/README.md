# Dados do projeto
Esta pasta tem como objetivo demonstrar a organização dos dados utilizados na análise.

**Fonte dos Dados:**

- Instituto Brasileiro de Geografia e Estatística(IBGE)

Bases:

1 - Produto Interno Bruto dos Municípios

Utilização: analisar a variação do PIB entre os anos de 2022 e 2023.

Acesso: [PIB dos Municípios](https://www.ibge.gov.br/estatisticas/economicas/contas-nacionais/9088-produto-interno-bruto-dos-municipios.html)

2- Censo Demográfico 2022

Utilização: complementar a análise com indicadores de rendimento

Acesso: [Censo Demográfico 2022](https://www.ibge.gov.br/estatisticas/sociais/populacao/22827-censo-demografico-2022.html)

**Tratamento dos Dados:**

A base original foi tratada e preparada via Power Query; as principais mudanças foram:

- **Remoção de colunas:** foram retiradas as colunas de menor relevância para a análise.

- **Filtragem dos dados:** foi aplicado o filtro para manter os dados concentrados nos anos de 2022 e 2023, assim como para limitar o escopo a municípios do estado de São Paulo.

- **Ordenação dos dados:** o valor do PIB foi ordenado por ordem decrescente.

**Alterações:**

A coluna de código do município foi alterada de número para texto, evitando a perda de algum dígito.

O nome de algumas colunas foi alterado para facilitar o relacionamento entre as tabelas.