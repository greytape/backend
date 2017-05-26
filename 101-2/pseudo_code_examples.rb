=begin
 
 START
  PRINT "enter two numbers"
  GET number1
  GET number2
  number1 + number2
 END 

START 
  array
  SET sum = ''
  FOR EACH |element| in array
    sum += element
  SUM
END

START
  array
  SET new_array = [] 
  FOR EACH |element| in new_array
    IF index of element % 2 == 0
      new_array << element
  new_array 
END


=end