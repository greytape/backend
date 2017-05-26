require 'yaml'

MESSAGES = YAML.load_file("calculator_messages.yml")




def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_f.to_s == num || num.to_i.to_s == num 
end

def operator_to_message(op)
  op_decision = case op
                when '1'
                  'Adding'
                when '2'
                  'Subtracting'
                when '3'
                  'Multiplying'
                when '4'
                  'Dividing'
                end
  op_decision
end

prompt(MESSAGES['welcome'])

name = ''

loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt("Please enter your name.")
  else break
  end
end

prompt("Hi #{name}")

loop do
  number1 = ''
  number2 = ''

  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp
    if valid_number?(number1)
      break
    else prompt(MESSAGES['valid_name'])
    end
  end

  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp
    if valid_number?(number2)
      break
    else prompt(MESSAGES['valid_name'])
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) addition
    2) subtraction
    3) multiplication
    4) division
  MSG
  prompt(operator_prompt)

  operator = ''

  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      Kernel.puts("That's not a valid response.")
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers.")

  result =  case operator
            when '1'
              number1.to_f() + number2.to_f()
            when '2'
              number1.to_f() - number2.to_f()
            when '3'
              number1.to_f() * number2.to_f()
            when '4'
              number1.to_f() / number2.to_f()
            end

  prompt("The answer is " + result.to_s)
  prompt("Would you like to go again? Y/N?")
  again = gets.chomp.downcase
  if again == 'n'
    prompt("Thanks for using the calculator #{name}!")
    break
  end
end
