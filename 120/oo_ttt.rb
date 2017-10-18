require 'pry'

class Board
  WINNING_LINES = [[1, 2, 3],
                   [1, 4, 7],
                   [1, 5, 9],
                   [2, 5, 8],
                   [3, 5, 7],
                   [3, 6, 9],
                   [4, 5, 6],
                   [7, 8, 9]]

  attr_accessor :squares

  def initialize
    @squares = {}
    clear_board
  end

  def draw
    puts " ___ ___ ___"
    puts "|   |   |   |"
    puts "| #{@squares[1]} | #{@squares[2]} | #{@squares[3]} |"
    puts "|___|___|___|"
    puts "|   |   |   |"
    puts "| #{@squares[4]} | #{@squares[5]} | #{@squares[6]} |"
    puts "|___|___|___|"
    puts "|   |   |   |"
    puts "| #{@squares[7]} | #{@squares[8]} | #{@squares[9]} |"
    puts "|___|___|___|"
    puts ""
  end

  def []=(num, marker)
    @squares[num].marker = marker
  end

  def [](num)
    @squares[num].marker
  end

  def unmarked_keys
    @squares.select { |_, sq| sq.square_free? }.keys
  end

  def full?
    unmarked_keys.empty?
  end

  def clear_board
    (1..9).each { |key| @squares[key] = Square.new }
  end

  def winning_marker
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      if three_identical_markers?(squares)
        return squares.first.marker
      end
    end
    nil
  end

  def which_square_under_threat
    WINNING_LINES.each do |line|
      squares = @squares.values_at(*line)
      squares_with_numbers = @squares.select {|k,v| line.include?(k)}
      if potential_winning_line?(squares)
        squares_with_numbers.each do |location, square| 
          square.square_free? ? (return location) : nil
        end
      end
    end
    nil
  end

  private

  def potential_winning_line?(squares)
    markers = squares.select(&:marked?).map(&:marker)
    markers.uniq.size == 1 && markers.size == 2
  end

  def three_identical_markers?(squares)
    markers = squares.select(&:marked?).collect(&:marker)
    return false if markers.size != 3
    markers.uniq.size == 1
  end
end

class Square
  attr_accessor :marker

  INITIAL_MARKER = ' '

  def initialize(marker=INITIAL_MARKER)
    @marker = marker
  end

  def marked?
    marker != INITIAL_MARKER
  end

  def square_free?
    @marker == INITIAL_MARKER
  end

  def to_s
    @marker
  end
end

class Player
  attr_reader :marker
  attr_accessor :score

  def initialize(marker)
    @marker = marker
    @score = 0
  end
end

class TTTGame
  attr_reader :board, :human, :computer
  attr_accessor :turn_move, :current_player
  HUMAN_MARKER = 'X'
  COMPUTER_MARKER = 'O'

  def initialize
    @board = Board.new
    @human = Player.new(HUMAN_MARKER)
    @computer = Player.new(COMPUTER_MARKER)
    @current_player = human
    @turn_move = 1
  end

  def display_welcome_message
    puts "Welcome to tic-tac-toe."
    puts "First player to 5 wins the game."
  end

  def display_goodbye_message
    puts "Thanks for playing tic-tac-toe. Goodbye!"
  end

  def clear_screen
    system 'clear'
  end

  def display_board
    puts "You're an #{human.marker}, computer is an #{computer.marker}."
    board.draw
  end

  def display_board_and_clear_screen
    clear_screen
    display_board
  end

  def print_unmarked_squares(array_of_squares, delimiter = ', ', final_word = 'or ')
    string_of_squares = ''
    while array_of_squares.size > 0 
      if array_of_squares.size == 1 
        string_of_squares << final_word + array_of_squares.shift.to_s + "." 
      else
        string_of_squares << array_of_squares.shift.to_s + delimiter
      end
    end
    string_of_squares
  end

  def human_moves
    puts "Choose a square: #{print_unmarked_squares(board.unmarked_keys)}"
    square = nil
    loop do
      square = gets.chomp.to_i
      break if board.unmarked_keys.include?(square)
      puts "Sorry, that is not a valid choice."
    end
    board[square] = human.marker
  end

  def increment_turn_move
    self.turn_move += 1
  end

  def computer_moves
    if board.which_square_under_threat
      square = board.which_square_under_threat
    elsif
      square = board.unmarked_keys.sample
    end
    board[square] = computer.marker
  end

  def display_result
    clear_screen
    if board.winning_marker == HUMAN_MARKER
      puts "Congratulations, you won!"
    elsif board.winning_marker == COMPUTER_MARKER
      puts "The computer won!"
    else
      puts "Tie game! Everybody wins."
    end
    board.draw
  end

  def update_score
    if board.winning_marker == HUMAN_MARKER
      human.score += 1
    elsif board.winning_marker == COMPUTER_MARKER
      computer.score += 1
    end
  end

  def current_player_moves
    if current_player == human
      human_moves
      self.current_player = computer
    else
      computer_moves
      self.current_player = human
    end
  end

  def someone_won?
    !!board.winning_marker
  end

  def display_match_tally
    puts "The computer has #{computer.score} points."
    puts "The human has #{human.score} points."
  end

  def reset_board
    board.clear_board
    turn_move = 1
    self.current_player = human
  end

  def match_winner
    if human.score >= 5
      return "human"
    elsif computer.score >= 5
      return "computer"
    end
    nil
  end

  def confirm_continuation
    puts "Press any key to continue."
    gets.chomp
    clear_screen
  end

  def play
    clear_screen
    display_welcome_message
    loop do #series_loop
      loop do #match_loop 
        display_board
        loop do #game_loop
          increment_turn_move
          current_player_moves
          break if board.full? || someone_won?
          display_board_and_clear_screen if current_player == human && turn_move > 1
        end
        display_result
        update_score
        display_match_tally
        confirm_continuation
        break if match_winner
        reset_board
      end
      puts "The #{match_winner} won the match!"
      puts "Would you like to play again? (y/n)"
      break unless gets.chomp.downcase[0] == 'y'
    end
    display_goodbye_message
  end
end

game = TTTGame.new
game.play
