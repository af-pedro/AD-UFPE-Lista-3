#### Questao 1 ####

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

setwd('..') # move wd para n?vel anterior 
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe") 

save.ffdf(TURMAS, dir = "./TURMAS", overwrite = TRUE) # Salvando em formato FFDF
rm(list =ls())

setwd('..') # move wd para n?vel anterior
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe")

load.ffdf(dir = "./TURMAS") # arregando a base

TURMAS_PE <-subset(TURMAS, CO_UF==26) # Filtrando para Pernambuco
dim(TURMAS_PE) # Conferindo a partir da dimens?o se foi feito o filtro

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

#### Questao 6 ####

install.packages("ffbase", dependencies = TRUE) # Instalando pacote

require(ffbase) # Carregando pacote 

setwd('..') # move wd para n?vel anterior 
setwd("C:/Users/Pedro/Desktop/Mestrado/Analise de Dados/Material_R/Dados_encontro_1_ufpe/dados_encontro_1_ufpe")

Docentes_NE <- read.csv2(file = "DOCENTES_NORDESTE.CSV", sep = "|")


View(Docentes_NE)
dim(Docentes_NE)


