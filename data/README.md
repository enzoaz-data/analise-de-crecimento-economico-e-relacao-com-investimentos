# Dados do projeto
Esta pasta tem como objetivo demonstrar a organização dos dados utilizados na análise.

**Fonte dos Dados:**

- Instituto Brasileiro de Geografia e Estatística (IBGE)

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

**PIB** - A coluna de código do município foi alterada de número para texto, evitando a perda de algum dígito.

Alterações de variáveis:

Ano --> ano

Sigla da Unidade da Federação --> uf

Código do Município --> cod_municipio

Nome do Município --> nome_municipio

Produto Interno Bruto, a preços correntes (R$ 1.000) --> pib_mil_reais

Produto Interno Bruto per capita, a preços correntes (1,00) --> pib_per_capita


**Censo** - Foram removidas as variáveis estatísticas não utilizadas na análise.

Alterações de variáveis:

CD_MUN --> cod_municipio

NM_MUN --> nome_municipio

V06001 --> qtd_responsaveis

V06002 --> qtd_moradores

V06004 --> rendimento_medio_mensal

V06006 --> rendimento_mediano_mensal

**Observações e limitações**

Os arquivos desta pasta são versões processadas dos dados originais; consulte as fontes oficiais para acessar os dados de origem e seus metadados.

O PIB municipal e os dados do Censo possuem níveis geográficos diferentes: municipal e setor censitário, respectivamente.

O código do município é utilizado para relacionar as bases. Como cada município pode conter vários setores censitários, a junção direta pode repetir os valores municipais do PIB em várias linhas.

Os rendimentos do Censo são valores nominais e se referem ao período de referência do levantamento; não representam automaticamente valores corrigidos pela inflação.

A seleção e a transformação das variáveis foram realizadas para fins educacionais e de análise de dados.