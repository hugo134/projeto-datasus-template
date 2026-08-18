# [Título do seu estudo]

> Substitua tudo que estiver entre colchetes. Apague as instruções em citação, como esta,
> conforme for preenchendo. Um README com instrução de template ainda dentro é sinal de
> que o repositório não foi terminado.

---

## O que é isto

[Uma ou duas frases sobre a pergunta do estudo. Não é o resumo do artigo — é o que
alguém precisa saber para entender o que este repositório faz.]

**Status:** [em andamento / submetido / publicado]
**Pré-registro:** [link do OSF, ou "não aplicável"]
**Artigo:** [DOI, quando existir]

---

## Dados

| | |
|---|---|
| Sistema | [SIM / SINASC / SIH / SIA / SINAN / CNES] |
| Recorte geográfico | [Brasil / MG / município] |
| Período | [2010–2023] |
| **Baixado em** | **[AAAA-MM-DD]** |
| Script de download | `scripts/01-download.R` |

> **A data do download não é firula.** O SINAN é reescrito conforme os casos são
> investigados e encerrados — o mesmo ano baixado em datas diferentes dá números
> diferentes. Sem esta linha, você não consegue explicar por que os seus números não
> batem com os de outra pessoa. Preencha mesmo quando o sistema não for o SINAN.

Os dados brutos **não** estão versionados neste repositório (ver `.gitignore`).
Rode `scripts/01-download.R` para reconstruí-los.

---

## Como rodar

```r
# 1. Abra projeto-datasus.Rproj (não abra os scripts soltos)
# 2. Reconstrua o ambiente:
renv::restore()

# 3. Rode na ordem:
source("scripts/01-download.R")
source("scripts/02-limpeza.R")
source("scripts/03-analise.R")
```

**Requisitos:** R [versão] e git. Nada mais.

---

## O que cada script faz

| Script | Entrada | Saída |
|---|---|---|
| `01-download.R` | — | `dados/bruto/` |
| `02-limpeza.R` | `dados/bruto/` | `dados/processado/` |
| `03-analise.R` | `dados/processado/` | `saidas/` |

O fluxo é de mão única. Nada volta, e nada é editado à mão: se achou erro no dado
processado, corrija o **script** que gerou e rode de novo.

---

## Quebras de série tratadas

> Preencha a partir do formulário de linha do tempo (material de apoio 01).
> Se estiver vazio, o revisor vai perguntar.

| Ano | O que mudou | Como foi tratado |
|---|---|---|
| [1996] | [CID-9 → CID-10] | [série começa em 1997] |
| [2020–2022] | [pandemia] | [modelado como interrupção] |

---

## Decisões metodológicas

> As três ou quatro decisões que mudariam o resultado se fossem outras. Não é a
> seção de métodos inteira — é o que outra pessoa precisa saber para não achar
> que você errou.

- **Denominador:** [população IBGE, série X, versão Y]
- **Padronização:** [direta, população-padrão OMS / não padronizado, porque ...]
- **Município:** [residência / ocorrência] — [justificativa em uma linha]
- **Unidade de análise:** [pessoa / registro / município-ano]

---

## Reprodutibilidade

Este repositório deve passar no teste de aceitação: máquina limpa, `git clone`,
`renv::restore()`, scripts na ordem, mesmos números — sem ninguém explicando nada.

Se você encontrar um passo que exige explicação verbal, é um defeito. Abra uma issue.

---

## Como citar

[Autor. Título. Repositório. Ano. URL / DOI do Zenodo]

## Licença

Código: [MIT]. Dados: públicos, DATASUS/Ministério da Saúde.
