queimadas01 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q1_2024.csv")
queimadas02 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q2_2024.csv")
queimadas03 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q3_2024.csv")
system.time(queimadasTeste = fread("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q3_2024.csv"))
#o fread parece que é mais rápido que o read.csv e ainda detecta o separador
#o tibble permite colocar nomes com espaço, desde que seja com aspas simples (crase)
#mais indicado ainda para ser variáveis de saída
#não consegue salvar uma lista inteira porque ela não é tabular
#dá para indexar por [[2]] para pegar o segundo elemento
queimadasTeste
queimadasTotal = rbind(queimadas01, queimadas02, queimadas03)



#summary(queimadasTotal)

#str(queimadasTotal)

#head(queimadasTotal, n = 9)
#tail(queimadasTotal, n = 4)

unique(queimadasTotal$bioma)

#abc = factor(queimadasTotal$bioma)
factor(queimadasTotal$bioma)

nlevels(factor(queimadasTotal$bioma))
levels(factor(queimadasTotal$estado))
estadosSelecionados = c("PARANÁ", "SANTA CATARINA", "RIO GRANDE DO SUL")
qSul = subset(queimadasTotal, estado == "PARANÁ")
qSul

require(data.table)
#teste