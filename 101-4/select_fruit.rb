def select_fruit(foodstuff)
  counter = 0
  selected_fruits = {}
  loop do 

    if foodstuff.values[counter] == 'Fruit'
      selected_fruits.update({foodstuff.keys[counter] => foodstuff.values[counter]})
    end
    counter += 1
    break if counter == foodstuff.size
  end
  selected_fruits
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

puts select_fruit(produce)