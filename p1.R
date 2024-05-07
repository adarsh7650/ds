#data frame and basic preprocessing PRACTICAL 1

library(jsonlite)
json_data <- fromJSON("D:\\tycs\\sem6_practicals\\ds\\ds\\prac1\\prac.json")

df <- as.data.frame(json_data)

#pre-processiong
df
df <- na.omit(df) # null values delete
df <- df[!duplicated(df),] #duplicate value to delete
head(df , 12)
summary(df)
unique(df$City)

#filtering 
fil_df <- subset(df , City== "New York" )
fil_df

#sorting
sdf <- df[order(-df$Age),]
sdf

#grouping
gdf <- aggregate(Name ~ Age , data = df , FUN = function(x) paste(x, collapse = ""))
gdf
