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

# Antes, faremos uma correção em nossa base de dados, para apresentar uma uniformidade nos nomes dos times.

library(tidyverse)

data <- dados %>%
  mutate(time_mandante = case_when(
    time_mandante == "Atlético-PR" ~ "Athletico-PR",
    time_mandante == "Goiás EC" ~ "Goiás",
    time_mandante == "Santos FC" ~ "Santos",
    time_mandante == "EC Bahia" ~ "Bahia",
    time_mandante == "EC Vitória" ~ "Vitória",
    TRUE ~ time_mandante
  ))

data <- dados %>%
  mutate(time_visitante = case_when(
    time_visitante == "Atlético-PR" ~ "Athletico-PR",
    time_visitante == "Goiás EC" ~ "Goiás",
    time_visitante == "Santos FC" ~ "Santos",
    time_visitante == "EC Bahia" ~ "Bahia",
    time_visitante == "EC Vitória" ~ "Vitória",
    TRUE ~ time_visitante
  ))

write.csv(dados, "./data/serie_a_2010_2024.csv", row.names = FALSE)

