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
ggplot(oco) + 
  geom_bar(data = oco, mapping = aes(oco$ocorrencia_classificacao)) +
  xlab("Classificação") +
  ylab("Total")

#Total por Tipo
oco %>%
  ggplot() + 
  geom_bar(data=oco, mapping = aes(oco$aeronave_tipo_motor)) +
  xlab('Tipo do Motor') +
  ylab('Total')

#Total por Localidade
