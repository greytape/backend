require 'pry'

PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WHO_GOES_FIRST =  'Computer'

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def initialise_board
  brd = {}
  (1..9).each { |i| brd[i] = '_' }
  brd
end

def joinor(arr, delim, final_delim)
  
  if arr.length == 1
    arr[0].to_s
  else final = arr.pop.to_s
    new_arr = arr.map do |num|
      num.to_s + delim
    end
    new_arr.push(final_delim + ' ' + final + ' ')
    new_arr.join
  end
end

def empty_squares(brd)
  brd.keys.select { |square| brd[square] == "_" }
end

def board_full?(brd)
  empty_squares(brd) == []
end

def spot_threat(brd, marker1, marker2)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(marker1) == 2 && brd.values_at(line[0], line[1], line[2]).count(marker2) == 0
      small_brd = brd.select { |k, v| k == line[0] || k == line[1] || k == line[2] }
      return small_brd.key('_')
    end
  end
  nil
end

def display_board(brd)
  system 'clear'
  puts "  1 2 3"
  puts "1 #{brd[1]}|#{brd[2]}|#{brd[3]}"
  puts "2 #{brd[4]}|#{brd[5]}|#{brd[6]}"
  puts "3 #{brd[7]}|#{brd[8]}|#{brd[9]}"
end

def user_makes_move(brd)
  square = ''
  loop do
    puts "Select a square: #{joinor(empty_squares(brd),', ','or')}"
    square = gets.chomp.to_i
    unless empty_squares(brd).include?(square)
      puts "Sorry, that's not a valid choice."
      next
    end
    break
  end
  brd[square] = PLAYER_MARKER
end

def computer_makes_move(brd)
  if spot_threat(brd, COMPUTER_MARKER, PLAYER_MARKER)
    square = spot_threat(brd, COMPUTER_MARKER, PLAYER_MARKER)
  elsif spot_threat(brd, PLAYER_MARKER, COMPUTER_MARKER)
    square = spot_threat(brd, PLAYER_MARKER, COMPUTER_MARKER)
  elsif brd[5] == '_'
    square = 5
  else 
    square = empty_squares(brd).sample
  end
  brd[square] = COMPUTER_MARKER
end

def someone_won?(brd)
  !!determine_winner(brd)
end

def determine_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(line[0], line[1], line[2]).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(line[0], line[1], line[2]).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

player_wins = 0
computer_wins = 0

loop do
  
  board = initialise_board

  display_board(board)

  if WHO_GOES_FIRST == 'Choose'
    input = ''
    loop do
      puts "Who should go first? Please enter either 'Player' or 'Computer'"
      input = gets.chomp.downcase
      unless input == 'Player' || input == 'Computer'
        puts "That is not a valid choice, please enter either 'Player' or 'Computer'"
        next
      end
      break
    end
  end

  case WHO_GOES_FIRST
  when 'Player'
    loop do
      user_makes_move(board)
      display_board(board)
      computer_makes_move(board)
      display_board(board)
      break if someone_won?(board) || board_full?(board)
    end
  when 'Computer'
    loop do
      computer_makes_move(board)
      display_board(board)
      user_makes_move(board)
      display_board(board)
      break if someone_won?(board) || board_full?(board)
    end
  end 

  case determine_winner(board)
  when "Computer"
    computer_wins += 1
  when "Player"
    player_wins += 1
  end

  if determine_winner(board)
    puts "The #{determine_winner(board)} won."
  else 
    puts "It's a tie!"
  end
  puts "The score is computer: #{computer_wins}, player: #{player_wins}"
  puts "Would you like to play again? (y/n)"

  if computer_wins == 5 
    puts "The Computer has won the series!"
    break
  elsif player_wins == 5
    puts "The Player has won the series!"
    break
  end

  break unless gets.chomp.downcase == 'y'
end
