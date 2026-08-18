# ─────────────────────────────────────────────────────────────
# 02-limpeza.R
# Limpa, harmoniza e grava em dados/processado/
#
# ENTRADA: dados/bruto/bruto.rds
# SAÍDA:   dados/processado/analitico.rds
#
# Toda decisão de limpeza vira uma linha de código comentada
# aqui. Nenhuma vira uma edição manual no arquivo.
# ─────────────────────────────────────────────────────────────

library(dplyr)

bruto <- readRDS("dados/bruto/bruto.rds")

# ---- 1. auditoria inicial ----------------------------------
# Sempre olhe antes de mexer.
cat("registros:", nrow(bruto), "\n")
cat("colunas:  ", ncol(bruto), "\n")
# TODO: proporção de ignorados nas variáveis que você vai usar
# bruto |> summarise(across(everything(), ~mean(is.na(.)))) |> print()

# ---- 2. seleção de registros -------------------------------
# TODO: critérios de inclusão e exclusão, um por linha,
#       cada um com o motivo no comentário.
analitico <- bruto
n_inicial <- nrow(analitico)

# analitico <- analitico |> filter(...)   # motivo:

# ---- 3. harmonização ---------------------------------------
# TODO: recodificações, compatibilização entre anos,
#       tratamento de quebras de série identificadas na
#       linha do tempo do sistema.

# ---- 4. deduplicação ---------------------------------------
# Obrigatório no SINAN. Recomendado sempre que a unidade do
# banco não for a pessoa.
# TODO

# ---- 5. registro das perdas --------------------------------
cat("entraram:", n_inicial, "| ficaram:", nrow(analitico),
    "| perda:", n_inicial - nrow(analitico), "\n")

saveRDS(analitico, "dados/processado/analitico.rds")
message("OK — dados/processado/analitico.rds")
