#Features Scalinig and Dummification PRCATICAL 2

library(jsonlite)
library(fastDummies)
library(scales)

json_data <- fromJSON("D:\\tycs\\sem6_practicals\\ds\\ds\\prac2\\data.json")
df <- as.data.frame(json_data)

columns_to_std <- c("Sales" , "Cost" , "Profit")

#std
df[columns_to_std] <- scale(df[columns_to_std])
df

#norm 
df[columns_to_std] <- lapply(df[columns_to_std] , rescale , to = c(0,1))
df

#dummy
dummy_cols(df , select_columns = c("Product"))
