#GRAPHS#

##################################
#carregamento de bibliotecas
##################################
library(readr)

##################################
#definindo diretorio de analise
##################################
getwd()
directory <- "/home/cleibson/projetos/opendata_aig_brazil/script"
setwd(directory)

##################################
#lendo os dados
##################################
oco <- read_delim("../data/all.csv", "~", escape_double = FALSE, trim_ws = TRUE)
attach(oco)

##################################
#Configuracoes gerais
##################################
paleta_cores=c("rosybrown3","gray69","palegoldenrod","paleturquoise3","palegreen2")

dia_compilacao = paste("Dados compilados em ", format(dia_extracao[1], format="%d/%m/%Y"))

graficolargura=800
graficoaltura=450

graficolargura1=600
graficoaltura1=350

##################################
#Classificação da Ocorrência
##################################
nomearquivo=paste("images/classificacao","001",".jpg",sep="_")
bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
barplot(table(ocorrencia_classificacao, deparse.level = ),
        main = paste("Total de Ocorrências entre ",
                     substring(min(ocorrencia_dia), 1, 4), 
                     "-", 
                     substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
        col = rainbow(length(table(ocorrencia_classificacao))), #cores das barras
        ylab = "Total de Ocorrências", #label do eixo y
        cex.names = 0.8, #tamanho do texto dos eixos
        axis.lty=1, #define padrão de linha do eixo x
        las=1, #rotaciona labels eixo x
        width=0.3,
        space=0.5
)
mtext(dia_compilacao, side=1, line=4, cex=1)
dev.off()
