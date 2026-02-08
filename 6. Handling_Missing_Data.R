# Cleaning Messy Data
install.packages("tidyverse")

library(dplyr)
library(tidyr)

# Install if you haven't already
# install.packages("tidyverse")

#df <- read.csv("D:\\YouTube\\1. Raw Videos\\R Series\\Files\\Messy_Dataset.csv",
#               na.strings = c("", "NA"))
df <- read.csv(file.choose(), na.strings = c("", "NA"))
#file_path <- file.choose()
#df <- read.csv(file_path, na.strings = c("", "NA"))
View(df)







colSums(is.na(df))

# Remove Rows when no email is present
df_cleaned <- df %>% drop_na("Email")

#Populate null Numeric Values
df_cleaned$Transaction_Amount[is.na(df_cleaned$Transaction_Amount)] <- 0

#populate with mean value


df_cleaned$Transaction_Amount[is.na(df_cleaned$Transaction_Amount)] <- mean(df_cleaned$Transaction_Amount, na.rm = TRUE)

# Populating Character Columns
df_cleaned$Customer_Name[is.na(df_cleaned$Customer_Name)] <- "Unknown"












