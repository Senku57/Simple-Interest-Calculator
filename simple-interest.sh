
#!/bin/bash

# Simple Interest Calculator

echo "================================"
echo "     SIMPLE INTEREST CALCULATOR"
echo "================================"

# Accept user inputs
read -p "Enter Principal Amount: " principal
read -p "Enter Rate of Interest (% per annum): " rate
read -p "Enter Time Period (in years): " time

# Calculate Simple Interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total=$(echo "scale=2; $principal + $interest" | bc)

# Display results
echo ""
echo "---------- RESULT ----------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time years"
echo "Simple Interest  : $interest"
echo "Total Amount     : $total"
echo "----------------------------"
