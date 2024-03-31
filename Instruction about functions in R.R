#Ler dados#
library(foreign)
##Dados-a seta é de atribuição-as aspas seguido do TAB é pra encontrar o caminho
nomebase <- read.xport("C:\\PastaX\\PastaY\\PastaZ\\nomedofile.XPT")
#Importante salvar em csv
write.csv(nomebase, file="C:\\PastaX\\PastaY\\PastaZ\\nomedofile.csv") 
#a função vai reescrever o arquivo em outro formato (csv), atribui a ele, e indica a pasta ou caminho

#Juntar os quatro banco/base de dados#
library(dplyr)
#Juntar bancos/bases
novonomedobanco <- bind_rows(banco1, banco2) 
Banco_1_2 <- bind_rows(banco1, banco2)
Banco_3_4 <- bind_rows(banco3, banco4)
Banco_1_2_3_4 <- bind_rows(banco1, banco2, banco3, banco4)
#Importante salvar em csv
write.csv(nomebase, file="C:\\PastaX\\PastaY\\PastaZ\\nomedofile.csv") 
write.csv(Banco_1_2_3_4, file="C:\\PastaX\\PastaY\\PastaZ\\nomedofile.csv") 

#Transformar dados#
library(dplyr)

#Selecionar apenas colunas de interesse
novonomedabase <- select(coluna1, coluna2, coluna3, coluna4)
#Digamos que eram 10 colunas e vocês excluiu a coluna 5 até a 10
write.csv(novonomedabase, file=("C:\\PastaX\\PastaY\\PastaZ\\novonomedabase.csv")
          