
satlevel <- read.csv("D:\\tycs\\sem6_practicals\\DATA_SCIENCE\\prac7_anova\\csv2.csv")
a <- aov(formula = satindex ~ dept , data = satlevel)
summary(a)

satlevel <- read.csv("D:\\tycs\\sem6_practicals\\DATA_SCIENCE\\prac7_anova\\csv3.csv")
a <- aov( formula = satindex ~ dept + exp + dept * exp , data = satlevel)
summary(a)
