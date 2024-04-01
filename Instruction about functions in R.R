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
colunasdeinteressse_1_2_3_4 <- select(coluna1, coluna2, coluna3, coluna4)
#Digamos que eram 10 colunas e vocês excluiu a coluna 5 até a 10
write.csv(colunasdeinteressse_1_2_3_4 , file=("C:\\PastaX\\PastaY\\PastaZ\\novonomedabase.csv")
          
# criar uma nova coluna - Ex.: com a soma dos valores da linha, ignorando valores maiores que 4 e preservar os valores NA
novonomedabase <- nomedasbasesjuntadas %>% rowwise() %>% mutate(nome_da_nova_coluna = sum(ifelse(c_across(coluna010:coluna090)<4, c_across(coluna010:coluna090), NA))) 
coluna_somada <- Banco_1_2_3_4 %>% rowwise() %>% mutate(nome_da_nova_coluna = sum(ifelse(c_across(coluna010:coluna090)<4, c_across(coluna010:coluna090), NA))) 
#[...] sum(ifelse(condição, verdadeira, ifelse (falsa))
          
#SIGNIFICADO DAS FUNÇÕES#
#rowwise: as operações que acontecerão depois serão feita de várias colunas e não uma só 
#mutate: para criar uma nova coluna, que vai tá na tabela nova, dentro do parêntese 
#result: nome da coluna nova
#sum: somar os valores 
#ifelse: testar uma condição da resposta, ele averigua qual somar, somando apenas abaixo de 4 e descartando acima de 3 
#c_across: está indicando que deseja aplicar uma operação a várias colunas ao mesmo tempo, especificando essas colunas como argumentos para c_across()
#%>% (Pipe-Operator): para avalair várias funções de uma só vez, todas as coisas depois dele serão na mesma tabela (para não repetir) 

#Importante salvar em csv
write.csv(coluna_somada, file="C:\\PastaX\\PastaY\\PastaZ\\coluna_somada.csv") 

#criar nova coluna com variavel binaria (1 se a pessoa tem condição X (soma >9) ou 0 se não tem condição X)
nomedanovabase <-  nomedabaseantiga %>% rowwise() %>% mutate(Depressao = ifelse(Result > 9, 1, ifelse(Result <= 9, 0, NA))) 
base_1(yes)_0(no or NA) <-  coluna_somada %>% rowwise() %>% mutate(nomedanovacoluna = ifelse(Result > 9, 1, ifelse(Result <= 9, 0, NA))) 
##Aqui talvez seja apenas < 9 
#salvar nova tabela
write.csv(base_1(yes)_0(no or NA), file="C:\\PastaX\\PastaY\\PastaZ\\base_1(yes)_0(no or NA).csv")
        
#Learning how to use Rmarkdown 
install.packages("rmarkdown")  
install.packages("knitr")
