url <- "https://raw.githubusercontent.com/andersonara/datasets/master/aval_carros_nota.txt"
dados <- read.table(file = url,
                    header = TRUE,
                    sep = "\t",
                    quote = "",
                    stringsAsFactors = FALSE)