player_score = 0

def increase_score(number)
  number += 1
end

3.times do 
  player_score = increase_score(player_score)
end


puts player_score