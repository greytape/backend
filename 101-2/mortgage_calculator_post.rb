# *Inputs*
# loan amount
# annual percentage rate
# loan duration

# *Outputs*
# Monthly interest rate
# Loan duration in months

# m = p * ( j / (1 - ( 1 + j ) ** (-n)))

# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# *Assumptions*
# Initial loan duration set in years
# Initial interest rate also annual
# Need to convert these into monthly figures
# interest rates should be in decimals (ie floats)

# *High Level Pseudocode*
# Ask for user to input different elements
# - loan amount
# - APR
# - years of loan
# Convert APR and years of loan to j and n
# Calculate m from formula

# *Detailed Pseudocode
# START
#   PRINT 'Please enter the amount of money you would like to borrow.'
#   GET and SET loan_amount
#   PRINT 'What annual interest rate have you been quoted? Please enter '
#   GET and SET apr
#   PRINT 'How many years would you like loan to be for?'
#   GET and SET years_of_loan
#   SET months = years_of_loan * 12.0
#   SET interest_rate = apr * (1/12)
#   SET monthly = formula
# END

def prompt(text)
  puts ">>>#{text}"
end

loop do
  prompt 'Please enter the amount of money'
  prompt 'you would like to borrow in pounds.'
  loan_amount = gets.chomp.to_f
  apr = nil
  loop do
    prompt 'What annual interest rate have you been quoted?'
    prompt 'Please enter 5 percent as 0.05'
    apr = gets.chomp.to_f
    if apr < 1.0 && apr > 0.0
      break
    else
      prompt "Please enter a number between 1 and 0."
    end
  end
  prompt 'How many years would you like the loan to be for?'
  years_of_loan = gets.chomp.to_f
  months = years_of_loan * 12.0
  interest_rate = apr * (1.0 / 12.0)
  monthly = loan_amount * (interest_rate / (1 - (1 + interest_rate)**-months))
  prompt 'The monthly payment that would be required is'
  prompt "£#{format('%0.2f', monthly)}"
  prompt("Would you like to perform another calulation? (press Y to repeat)")
  again = gets.chomp.downcase
  unless again == 'y'
    break
  end
end
