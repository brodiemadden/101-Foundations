#display welcome message
#GET loan amount from user
#GET annual percentage rate from user
#GET the loan duration from user
#perform calculation for monthly payments

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def valid_float?(num)
  num.to_f != 0.0
end


prompt("Welcome to the Car Loan Calculator!")

loop do #main loop
  prompt("What is your loan amount?")
  amount = ''
  loop do
  amount = gets.chomp

    if amount.empty? || amount.to_f < 0
      prompt("Must enter a positive number!")
    else
      break
    end
  end

  prompt("What is your annual percentage rate?")
  prompt("(Example: 5 for 5%, 10 for 10%)")
  interest_rate = ''
  loop do
  interest_rate = gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must enter a positive number!")
    else
      break
    end
  end


  prompt("What is the loan duration (in years)?")
  years = ''
  loop do
    years = gets.chomp

    if years.empty? || years.to_i < 0
      prompt("Enter a valid number!")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = years * 12

  monthly_payment = amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months.to_i())))

  prompt("Your monthly payment is: $#{format('%02.2f', monthly_payment)}")

  prompt("Would you like to perform another calculation? (Y/N)")
  answer = gets.chomp

  break unless answer.downcase.start_with?('Y')
end

prompt("Thankyou for using the Mortgage Calculator!")
prompt("Goodbye")
