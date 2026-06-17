# myscript.R
# This script calculates the mean of a numeric vector

# Define a numeric vector
numbers <- c(10, 20, 30, 40, 50)

# Calculate the mean
mean_value <- mean(numbers)

# Print the result
cat("The mean is:", mean_value, "\n")
2. Running the Script
You can run it in several ways:
  
  From R Console
R

Copiar código
source("myscript.R")
From Terminal/Command Prompt
Bash

Copiar código
Rscript myscript.R
3. Adding Input and Error Handling
Here’s a more professional R script with input validation:
  
  R

Copiar código
# script_pro.R
# Usage: Rscript script_pro.R 10 20 30

args <- commandArgs(trailingOnly = TRUE)

# Validate input
if (length(args) == 0) {
  stop("Please provide at least one numeric value.")
}

# Convert to numeric and check for NA
nums <- as.numeric(args)
if (any(is.na(nums))) {
  stop("All inputs must be numeric.")
}

# Calculate statistics
mean_val <- mean(nums)
median_val <- median(nums)
sd_val <- sd(nums)

# Output results
cat("Numbers:", nums, "\n")
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Standard Deviation:", sd_val, "\n")

  