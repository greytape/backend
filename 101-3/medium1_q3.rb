def factors(number)
  if number <= 0
    puts "Please enter a positive integer."
    return
  end 
  dividend = number
  divisors = []
  begin
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end until dividend == 0
  divisors
end

print factors(-12)