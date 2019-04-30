#### Questao 1 ####

## Versionamento no github

#### Questao 2 ####

x <- 2

y <- 3

z <- (x + y)

cpf <- (8885746497)

z * cpf

#### Questao 3 ####

head(mtcars)

summary(mtcars) # 1. Resumo descritivo

dim(mtcars) # 2. O numero de dimensões da base

str(mtcars) # 3. Uma descricao dos tipos de variáveis

mtcars[ ,3] # 4. Imprimindo a terceira coluna
            # coluna sera sempre o segundo elemento nos colchetes

mtcars[2, ] # 5. Imprimindo a segunda coluna

mtcars$cyl[4] # 6. O quarto elemento presente na variável

#### Questao 4 ####

install.packages("ffbase", dependencies = TRUE) # Instalando pacote

require(ffbase) # Carregando pacote 

setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe") # Definindo diret?rio

TURMAS <- read.csv2.ffdf(file = "TURMAS.CSV",  sep = "|") # Carregando dados

setwd('..') # move wd para nivel anterior 
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe") 

save.ffdf(TURMAS, dir = "./TURMAS", overwrite = TRUE) # Salvando em formato FFDF

setwd('..') # move wd para nivel anterior
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe")

load.ffdf(dir = "./TURMAS") # arregando a base

TURMAS_PE <-subset(TURMAS, CO_UF==26) # Filtrando para Pernambuco
dim(TURMAS_PE) # Conferindo a partir da dimensao se foi feito o filtro

TURMAS_PE <- as.data.frame(TURMAS_PE) # Transformando em Data Frame

setwd('..') # move wd para n?vel anterior
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe")

save(TURMAS_PE, file = "turmas_pe_censo_escolar_2016.RData") #Salvando em Rdata
View(TURMAS_PE) # Conferindo a tabela do filtro

#### Questao 5 ####

setwd('..')
setwd("./dados_encontro_1_ufpe/")

install.packages("magrittr")
library(magrittr)

load("turmas_pe_censo_escolar_2016.RData")
View(TURMAS_PE)

library(tidyverse)

setwd('..')
setwd("./dados_encontro_1_ufpe/")

load("turmas_pe_censo_escolar_2016.RData")

filter(N)

mean(TURMAS_PE$NU_MATRICULAS)

median(TURMAS_PE$NU_MATRICULAS)

sd(TURMAS_PE$NU_MATRICULAS)

boxplot(TURMAS_PE$NU_MATRICULAS)

plot(TURMAS_PE$NU_MATRICULAS)

barplot(TURMAS_PE$NU_MATRICULAS)

####Questão 6####

#A

install.packages("ffbase", dependencies = TRUE) #instalando pacote
require(ffbase) #carregando pacote 

setwd('..')
setwd("./dados_encontro_1_ufpe/") #puxando repositório

DOCENTES_NE <- read.csv2(file = "DOCENTES_NORDESTE.csv",  sep = "|") #carregando dados

View(DOCENTES_NE) #analisando tabela

docentes_pe <- subset(DOCENTES_NE, CO_UF == "26") #extraindo os docentes de PE
docentes_pe <- as.data.frame(docentes_pe) #transformando em dataframe

dim(docentes_pe) #buscando a dimensão

table(docentes_pe$TP_COR_RACA) #vizualizando a tabela

prop.table(table(docentes_pe$TP_COR_RACA))*100 #encontrando a porcentagem

plot(prop.table(table(docentes_pe$TP_COR_RACA))*100) #gerando gráficos por brincadeira

install.package ("tidyverse")
require(tidyverse) #requerendo tidyverse

ggplot(docentes_pe, aes(prop.table(docentes_pe$TP_COR_RACA)*100))+geom_bar() #outro gráfico

#B
  
install.packages("ffbase", dependencies = TRUE) #instalando pacote
require(ffbase) #carregando pacote 
 
setwd("./dados_encontro_1_ufpe/") #puxando diretório

View(DOCENTES_NE) #analisando dados

prop.table(table(docentes_pe$TP_COR_RACA))*100 #encontrando a porcentagem

Soma_pretos_pardos <- 3.6 + 27.8 #soma das porcentagens de pretos e pardos
Soma_pretos_pardos #resultado da soma


