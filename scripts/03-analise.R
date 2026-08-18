# ─────────────────────────────────────────────────────────────
# 03-analise.R
# Análise principal e figuras
#
# ENTRADA: dados/processado/analitico.rds
# SAÍDA:   saidas/figuras/, saidas/tabelas/
#
# Tudo em saidas/ é descartável: apagar a pasta inteira e
# rodar este script de novo tem que reproduzir exatamente o
# mesmo conteúdo.
# ─────────────────────────────────────────────────────────────

library(dplyr)
library(ggplot2)

dados <- readRDS("dados/processado/analitico.rds")

# ---- 1. denominadores --------------------------------------
# TODO: população IBGE, série e versão declaradas.
#       Se for comparar lugares ou décadas, padronize por idade.

# ---- 2. análise principal ----------------------------------
# TODO: exatamente o que foi declarado no plano de análise
#       pré-registrado. Se você mudou de ideia, registre o
#       adendo no OSF antes de rodar.

# ---- 3. análises de sensibilidade --------------------------
# TODO

# ---- 4. saídas ---------------------------------------------
# write.csv(tabela1, "saidas/tabelas/tabela1.csv", row.names = FALSE)
# ggsave("saidas/figuras/figura1.png", fig1, width = 8, height = 5, dpi = 300)

# ---- 5. sessão ---------------------------------------------
# Registre o ambiente junto com o resultado.
writeLines(capture.output(sessionInfo()), "saidas/sessionInfo.txt")
message("OK — saídas geradas")
