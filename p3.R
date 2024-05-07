#hypothesis testing practical 3


#one smaple testing 
csv_data <- read.csv("D:\\tycs\\sem6_practicals\\ds\\ds\\prac3\\onesample.csv")
df <- as.data.frame(csv_data)
t.test(df$Time , alternative = "greater" , mu=90)

#two sample testing 
csv_data <- read.csv("D:\\tycs\\sem6_practicals\\ds\\ds\\prac3\\twosample.csv")
df <- as.data.frame(csv_data)
t.test(df$Time1 , df$Time2)

#paired sample testing 
csv_data <- read.csv("D:\\tycs\\sem6_practicals\\ds\\ds\\prac3\\pairedsample.csv")
df <- as.data.frame(csv_data)
t.test(df$Time_Before , df$Time_After , alternative = "less" , paired = TRUE)

