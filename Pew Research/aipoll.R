library(haven)
library(dplyr)
library(ggplot2)
library(tibble)

data <- read_sav("aipoll.sav")

summary(data)
str(data)

# Assuming your data is stored in a variable called `data`
column_names <- names(data)

# Print the column names to the console
print(column_names)
column_names <- colnames(data)
print(column_names)

# View the first few rows of the dataset
head(data)

# Get a summary of each variable
summary(data)

# The structure of your data - shows data types and first few entries
str(data)

# Convert factors, if necessary
data$var <- as.factor(data$var)

# Handle missing values
data <- na.omit(data)  # Removes rows with any missing values