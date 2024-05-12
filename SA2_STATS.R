# Load the required library
library(readr)

# Load your Ethereum returns data
ethereum_returns <- read_csv("C:/Users/johnd/Desktop/JC Probability/archive/ethereum_returns.csv")

# Assuming your data has a column named 'timestamp' containing the timestamps
# Convert 'timestamp' column to proper date-time format
ethereum_returns$timestamp <- as.POSIXct(ethereum_returns$timestamp, format = "%Y-%m-%d %H:%M:%S")

# Filter the data for the specified time range
ethereum_returns_filtered <- ethereum_returns %>%
  filter(timestamp >= as.POSIXct("2015-08-07") & timestamp <= as.POSIXct("2024-04-15"))

# Perform the Shapiro-Wilk test
shapiro_test_result <- shapiro.test(ethereum_returns_filtered$returns)

# Print the test statistic and p-value
print("Shapiro-Wilk Test Result:")
print(shapiro_test_result)

