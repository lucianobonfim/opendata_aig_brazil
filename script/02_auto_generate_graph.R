#GRAPHS#

##################################
#carregamento de bibliotecas
##################################
library(readr)
library(tools) #capitalize texto

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
barplot(table(ocorrencia_classificacao),
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

##################################
#Ocorrências por mês
##################################
ocorrencia_mes = substring(ocorrencia_dia, 6, 7)
ocorrencia_ano = substring(ocorrencia_dia, 1, 4)
temp_class = unique(ocorrencia_classificacao)
temp_ano = unique(ocorrencia_ano)
table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE'))
table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE' & ocorrencia_ano == '2006'))
sum(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE' & ocorrencia_ano == '2006')))

for(i in temp_class){
  nomearquivo = paste("images/por_mes_", tolower(i),".jpg", sep="")
  bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
  barplot(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)),
          main = paste("Total de ", toTitleCase(tolower(i)), "s", " por Mês entre ",
                       substring(min(ocorrencia_dia), 1, 4), 
                       "-", 
                       substring(max(ocorrencia_dia), 1, 4), sep=""), #título do gráfico
          col = rep(rainbow(1), length(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)))), #cores das barras
          ylab = paste("Total de ", toTitleCase(tolower(i)), "s", sep=""), #label do eixo y
          xlab = "Mês", #label do eixo x
          cex.names = 0.8, #tamanho do texto dos eixos
          axis.lty=1, #define padrão de linha do eixo x
          las=1, #rotaciona labels eixo x
          width=0.3, #largura das barras
          space=0.5 #espaço entre as barras
  )
  mtext(dia_compilacao, side=1, line=4, cex=1)
  dev.off()
  for(j in temp_ano){
    nomearquivo = paste("images/por_mes_", tolower(i), "_ano_", j, ".jpg", sep="")
    bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
    barplot(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i & ocorrencia_ano == j)),
            main = paste("Total de ", toTitleCase(tolower(i)), "s", " por Mês no Ano de ", j, sep=""), #título do gráfico
            col = rep(rainbow(1), length(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == i)))), #cores das barras
            ylab = paste("Total de ", toTitleCase(tolower(i)), "s", sep=""), #label do eixo y
            xlab = "Mês", #label do eixo x
            cex.names = 0.8, #tamanho do texto dos eixos
            axis.lty=1, #define padrão de linha do eixo x
            las=1, #rotaciona labels eixo x
            width=0.3, #largura das barras
            space=0.5 #espaço entre as barras
    )
    mtext(dia_compilacao, side=1, line=4, cex=1)
    dev.off() 
  }
  }


# nomearquivo=paste("images/por_mes_acidente",".jpg",sep="_")
# bmp(nomearquivo,width=graficolargura1,height=graficoaltura1)
# barplot(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE')),
#         main = paste("Total de Acidentes por Mês entre ",
#                      substring(min(ocorrencia_dia), 1, 4), 
#                      "-", 
#                      substring(max(ocorrencia_dia), 1, 4)), #título do gráfico
#         col = rep(rainbow(1), length(table(subset(ocorrencia_mes, subset = ocorrencia_classificacao == 'ACIDENTE')))), #cores das barras
#         ylab = "Total de Ocorrências", #label do eixo y
#         xlab = "Mês", #label do eixo x
#         cex.names = 0.8, #tamanho do texto dos eixos
#         axis.lty=1, #define padrão de linha do eixo x
#         las=1, #rotaciona labels eixo x
#         width=0.3,
#         space=0.5
# )
# mtext(dia_compilacao, side=1, line=4, cex=1)
# dev.off()