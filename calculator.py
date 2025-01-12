def calculate_simple_interest(principal, monthly_rate, months):
    interest = principal * (monthly_rate / 100) * months
    return interest

# Prompt the user for the necessary values
principal = float(input("Enter the principal amount: "))
monthly_rate = float(input("Enter the monthly interest rate (in %): "))
months = int(input("Enter the time (in months): "))

# Calculate simple interest
interest = calculate_simple_interest(principal, monthly_rate, months)
print(f"The simple interest is: {interest:.2f}")
