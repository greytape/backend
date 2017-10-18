=begin

staff1 = Staff.new({:name => 'Paul Barry', :interests => ['Programming', 'Networking', 'Security', 'Open Source', 'Frameworks']})
staff2 = Staff.new({:name => 'Chris Meudec', :interests => ['Testing', 'Safety Systems', 'Formal Systems', 'Programming']})

1. Write a Staff class Method to store the above data.
2. Write an instance method to display each lecturer's final area of interest.
3. Write an instance method to display each lecturer's name together with the number of areas of interest
that they have.
4. Rewrite the initialize method to replace the area of interest “Programming” in each lecturer's list with the
words “Software Engineering”. 
5. Rewrite the initialize method to sort and display each lecturer's list in alphabetical order. [Make sure
your code changes the data within the data structure].


=end


class Staff

  def initialize(details)
    @name = details[:name]
    @interests = details[:interests]
  end

  def final_interest
    @interests[-1]
  end 

  def number_of_interests
    @interests.size
  end

  def name_and_number_of_interests
    "#{@name}: #{number_of_interests}"
  end

end

staff1 = Staff.new({:name => 'Paul Barry', :interests => ['Programming', 'Networking', 'Security', 'Open Source', 'Frameworks']})
staff2 = Staff.new({:name => 'Chris Meudec', :interests => ['Testing', 'Safety Systems', 'Formal Systems', 'Programming']})
puts staff1.final_interest
puts staff2.name_and_number_of_interests
