class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def lizard?
    @value == 'lizard'
  end

  def spock?
    @value == 'spock'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
      (rock? && other_move.lizard?) ||
      (lizard? && other_move.spock?) ||
      (lizard? && other_move.paper?) ||
      (scissors? && other_move.paper?) ||
      (scissors? && other_move.lizard?) ||
      (paper? && other_move.rock?) ||
      (paper? && other_move.spock?) ||
      (spock? && other_move.rock?) ||
      (spock? && other_move.scissors?)
  end

  def <(other_move)
    (scissors? && other_move.rock?) ||
      (lizard? && other_move.rock?) ||
      (spock? && other_move.lizard?) ||
      (paper? && other_move.lizard?) ||
      (paper? && other_move.scissors?) ||
      (lizard? && other_move.scissors?) ||
      (rock? && other_move.paper?) ||
      (spock? && other_move.paper?) ||
      (rock? && other_move.spock?) ||
      (scissors? && other_move.spock?)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name, :score
  def initialize
    @move = nil
    @score = 0
    set_name
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts "Choose either rock, paper, scissors, lizard or spock."
      choice = gets.chomp
      break if ['rock', 'paper', 'scissors', 'lizard', 'spock'].include?(choice)
      puts "Sorry. Invalid choice."
    end
    self.move = Move.new(choice)
  end

  def set_name
    puts "What is your name?"
    self.name = gets.chomp
  end
end

class Computer < Player
  def choose
    self.move = Move.new(Move::VALUES.sample)
  end

  def set_name
    self.name = ['C3PO', 'Hal', 'Robbie', 'Holly'].sample
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    system "clear"
    puts "Hello #{human.name}. Welcome to Rock, Paper, Scissors, Lizard, Spock."
    puts "Today you will be playing against #{computer.name}."
    puts "The winner is the first player to win 10 rounds."
  end

  def display_goodbye_message
    puts "Thank you for playing. Goodbye!"
  end

  def display_moves
    system "clear"
    puts "#{human.name} chose: #{human.move}."
    puts "#{computer.name} chose: #{computer.move}."
  end

  def display_winner
    if human.move > computer.move
      puts "#{human.name} won."
    elsif human.move < computer.move
      puts "#{computer.name} won."
    else
      puts "It's a tie."
    end
    puts ""
  end

  def update_scores
    if human.move > computer.move
      human.score += 1
    elsif human.move < computer.move
      computer.score += 1
    end
  end

  def display_scores
    puts "#{computer.name} has score of #{computer.score}."
    puts "#{human.name} has score of #{human.score}."
    puts ""
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_moves
      display_winner
      update_scores
      display_scores
      if computer.score > 9
        puts "#{computer.name} won the match!"
        break
      elsif human.score > 9
        puts "#{human.name} won the match!"
        break
      end
    end
    display_goodbye_message
  end
end

RPSGame.new.play

class Rule
  def initialize; end
end

def compare(move1, move2); end
