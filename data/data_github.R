url <- "https://raw.githubusercontent.com/raymz1990/CE307-Projeto-Extensao/refs/heads/main/data/serie_a_2010_2024.csv"
dados <- read.csv(file = url,
                  header = TRUE,     
                  sep = ",",          
                  # quote = "",      
                  stringsAsFactors = FALSE) 
