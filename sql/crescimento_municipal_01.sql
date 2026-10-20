
SELECT TOP 15
    c.cod_municipio,
    c.nome_municipio,
    p22.pib_mil_reais AS pib_2022,
    p23.pib_mil_reais AS pib_2023,

    -- Função para calcular a variação percentual do PIB entre os anos, arredondado para 2 casas decimais, evitando divisão por 0.
    ROUND(
    (p23.pib_mil_reais - p22.pib_mil_reais)
        * 100.0 / NULLIF(p22.pib_mil_reais, 0), 2 
        ) AS crescimento_percentual,

    -- Indicadores complementares 
    p23.pib_per_capita AS pib_per_capita_2023,
    c.rendimento_medio_mensal,
    c.rendimento_mediano_mensal

FROM pib_municipios AS p22

INNER JOIN dados_censo AS c
    ON c.cod_municipio = p22.cod_municipio

INNER JOIN pib_municipios AS p23  -- Self Join para permitir a comparação entre os dados de anos diferentes.
    ON p22.cod_municipio = p23.cod_municipio

WHERE p22.ano = 2022   --|--> Define o ano para comparar 2022 e 2023.
    AND p23.ano = 2023 --|
    AND p23.pib_mil_reais > p22.pib_mil_reais
    AND p23.pib_per_capita > p22.pib_per_capita

ORDER BY crescimento_percentual DESC;
