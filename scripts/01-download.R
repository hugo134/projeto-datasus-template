# ─────────────────────────────────────────────────────────────
# 01-download.R
# Baixa os microdados brutos e grava em dados/bruto/
#
# ENTRADA: nada
# SAÍDA:   dados/bruto/
#
# Rode este script uma vez. Depois disso, dados/bruto/ é
# SOMENTE LEITURA — nunca edite nada lá dentro, nem para
# corrigir um nome de coluna.
# ─────────────────────────────────────────────────────────────

library(microdatasus)

# ---- parâmetros -------------------------------------------
SISTEMA <- "SIM-DO"          # TODO: confira o valor correto em ?fetch_datasus
UF      <- "MG"              # TODO
ANO_INI <- 2010              # TODO
ANO_FIM <- 2023              # TODO

# ---- registro da data do download -------------------------
# NÃO APAGUE. Isto é o que te permite explicar divergência de
# números meses depois. Copie esta data para o README também.
DATA_DOWNLOAD <- Sys.Date()
writeLines(
  c(paste("sistema:", SISTEMA),
    paste("uf:", UF),
    paste("periodo:", ANO_INI, "-", ANO_FIM),
    paste("baixado_em:", DATA_DOWNLOAD)),
  "dados/bruto/_PROVENIENCIA.txt"
)

# ---- download ----------------------------------------------
dados <- fetch_datasus(
  year_start = ANO_INI,
  year_end   = ANO_FIM,
  uf         = UF,
  information_system = SISTEMA
)

saveRDS(dados, "dados/bruto/bruto.rds")

message("OK — ", nrow(dados), " registros gravados em dados/bruto/")
message("Baixado em: ", DATA_DOWNLOAD)
