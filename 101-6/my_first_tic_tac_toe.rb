# Display the Board

board_contents = [[1,nil,nil,nil],[2,nil,nil,nil],[3,nil,nil,nil]]

game_over = false

def determine_winner(current_board)
  winner = ''
  current_board.each do |row|
    if row[1..3].all? {|e| e == 'O'}
      puts 'The computer has won!'
      return true
    elsif row[1..3].all? {|e| e == 'X'}
      puts 'You have won!'
      return true
    end
  end
  if current_board[0][1] == 'X' && current_board[1][1] == 'X' && current_board[2][1] == 'X'
      puts 'You have won!'
      return true
  elsif current_board[0][1] == 'O' && current_board[1][1] == 'O' && current_board[2][1] == 'O'
      puts 'The computer has won!'
      return true
  elsif current_board[0][2] == 'X' && current_board[1][2] == 'X' && current_board[2][2] == 'X'
      puts 'You have won!'
      return true
  elsif current_board[0][2] == 'O' && current_board[1][2] == 'O' && current_board[2][2] == 'O'
      puts 'The computer has won!'
      return true
  elsif current_board[0][3] == 'X' && current_board[1][3] == 'X' && current_board[2][3] == 'X'
      puts 'You have won!'
      return true
  elsif current_board[0][3] == 'O' && current_board[1][3] == 'O' && current_board[2][3] == 'O'
      puts 'The computer has won!'
      return true
  elsif current_board[0][1] == 'X' && current_board[1][2] == 'X' && current_board[2][3] == 'X'
      puts 'You have won!'
      return true
  elsif current_board[0][1] == 'O' && current_board[1][2] == 'O' && current_board[2][3] == 'O'
      puts 'The computer has won!'
      return true
    elsif current_board[0][3] == 'X' && current_board[1][2] == 'X' && current_board[2][1] == 'X'
      puts 'You have won!'
      return true
  elsif current_board[0][3] == 'O' && current_board[1][2] == 'O' && current_board[2][1] == 'O'
      puts 'The computer has won!'
      return true
  end
  false
end

def print_board(current_board)
  print "  1 2 3\n"
  current_board.each do |row|
    row.each do |element|
      if element
        print element
      else
        print "_"
      end
      print '|'
    end
    print "\n"
  end
end

# Get user input
def make_user_move(current_board)
  loop do
    puts "Please enter the row you would like to select (1 to 3)"
    row = gets.chomp.to_i
    puts "Please enter the column you would like to select (1 to 3)"
    column = gets.chomp.to_i
    unless (1..3).include?(row) ||  (1..3).include?(column)
      puts "Please only select number between 1 and 3."
      next
    end
    if current_board[row - 1][column] != nil
      puts "That square is already taken, please choose again."
      next
    else
      current_board[row - 1][column] = 'X'
      break
    end
  end
end

def make_computer_move(current_board)
  loop do 
    chosen_row = rand(1..3)
    chosen_column = rand(1..3)
    chosen_square = current_board[chosen_row][chosen_column]
    if chosen_square == nil
      current_board[chosen_row][chosen_column] = 'O'
      break
    end
  end 
  current_board
end

loop do
  print_board(board_contents)
  make_user_move(board_contents)
  print_board(board_contents)
  if determine_winner(board_contents)
    break
  end
  make_computer_move(board_contents)
  print_board(board_contents)
  if determine_winner(board_contents)
    break
  end
  if board_contents.all? {|row| row.all?}
    puts "The game is a tie."
    break
  end
  system "clear" or system "cls"
end

# Determine computer input
# Determine winner
# Determine if board is full