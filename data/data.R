data <- read.csv('./data/mundo_transfermarkt_competicoes_brasileirao_serie_a.csv')

colnames(data)

library(tidyverse)
data <- data %>%
  select(ano_campeonato,
         data,
         rodada,
         estadio,
         publico,
         time_mandante,
         time_visitante,
         tecnico_mandante,
         tecnico_visitante,
         colocacao_mandante,
         colocacao_visitante,
         valor_equipe_titular_mandante,
         valor_equipe_titular_visitante,
         idade_media_titular_mandante,
         idade_media_titular_visitante,
         gols_mandante,
         gols_visitante,
         gols_1_tempo_mandante,
         gols_1_tempo_visitante) %>%
  filter(ano_campeonato > 2009)

write.csv(data, "./data/serie_a_2010_2024.csv", row.names = FALSE)

