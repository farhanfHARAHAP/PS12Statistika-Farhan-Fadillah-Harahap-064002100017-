#Latihan Pertama
df_harahap = read.delim("clipboard")
head(df_harahap)
model_reg = lm(df_harahap$Y~df_harahap$X)
summary(model_reg)

#Latihan Kedua
#1
df_harahap2 = read.delim("clipboard")
df_harahap2$brick_dummy <- ifelse(df_harahap2$Brick == "Yes", 1, 0)
df_harahap2$N_dummy1 <- ifelse(df_harahap2$Neighborhood == "West", 1, 0)
df_harahap2$N_dummy2 <- ifelse(df_harahap2$Neighborhood == "North", 1, 0)
model = lm(df_harahap2$Price~df_harahap2$SqFt + 
             df_harahap2$Bedrooms + 
             df_harahap2$Bathrooms + 
             df_harahap2$brick_dummy + 
             df_harahap2$N_dummy1 + 
             df_harahap2$N_dummy2)
summary(model)

#2
by(df_harahap2$Price, df_harahap2$Neighborhood, mean)
by(df_harahap2$Price, df_harahap2$Brick, mean)