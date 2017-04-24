#Leitura e Visualização dos Dados

#Leitura dos Dados
library(readr)
oco <- read_delim("data/all.csv", 
                  "~", escape_double = FALSE, trim_ws = TRUE)
names(oco)
attach(oco)

#Carregando Pacotes
library(ggplot2)
library(magrittr)
library(dplyr)
library(forcats)
library(readr)
library(tidyr)

#Total de Acidentes
classificacao <- table(oco$ocorrencia_classificacao)
