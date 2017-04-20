#Leitura e Visualização dos Dados

#Leitura dos Dados
library(readr)
oco <- read_delim("data/all.csv", 
                  "~", escape_double = FALSE, trim_ws = TRUE)
view(oco)

