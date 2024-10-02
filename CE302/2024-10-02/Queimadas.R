queimadas01 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q1_2024.csv")
queimadas02 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q2_2024.csv")
queimadas03 = read.csv("~/LAB_Aulas/CE302/2024-10-02/data/Dataset_FireWatch_Brazil_Q3_2024.csv")

queimadasTotal = rbind(queimadas01, queimadas02, queimadas03)

summary(queimadasTotal)
#teste