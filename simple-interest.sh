#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
  local principal=$1
  local monthly_rate=$2
  local months=$3
  local interest=$(echo "$principal * ($monthly_rate / 100) * $months" | bc -l)
  echo "$interest"
}

# Prompt the user for the required values
read -p "Enter the principal amount: " principal
read -p "Enter the monthly interest rate (in %): " monthly_rate
read -p "Enter the time (in months): " months

# Calculate the simple interest
interest=$(calculate_simple_interest "$principal" "$monthly_rate" "$months")

# Display the result
printf "The simple interest is: %.2f\n" "$interest"
