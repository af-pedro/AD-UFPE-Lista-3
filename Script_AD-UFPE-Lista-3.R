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

install.packages("ffbase", dependencies = TRUE)

require(ffbase)

dim(TURMAS)

head(TURMAS) 

turmas_pe <- subset(TURMAS, TURMAS$CO_UF == "26")

#### Questao 5 ####

#### Questao 6 ####

require(ffbase)

Docentes_NE <- read.csv("DOCENTES_NORDESTE.CSV")

setwd(".")

dim(Docentes_NE)