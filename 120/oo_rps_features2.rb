require 'pry'

def mode(array)
  hash = Hash.new(0)
  array.each do |i|
    hash[i]+=1
  end
  hash.key(hash.values.max)
end

class Move
  VALUES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

  def to_s
    self.class.to_s
  end
end

class Rock < Move
  def >(other_move)
    (other_move.class == Scissors) || (other_move.class == Lizard)
  end

  def <(other_move)
    (other_move.class == Paper) || (other_move.class == Spock)
  end  
end

class Paper < Move
  def >(other_move)
    (other_move.class == Rock) || (other_move.class == Spock)
  end

  def <(other_move)
    (other_move.class == Scissors) || (other_move.class == Lizard)
  end 
end

class Scissors < Move
  def >(other_move)
    (other_move.class == Paper) || (other_move.class == Lizard)
  end

  def <(other_move)
    (other_move.class == Spock) || (other_move.class == Rock)
  end 
end

class Lizard < Move
  def >(other_move)
    (other_move.class == Paper) || (other_move.class == Spock)
  end

  def <(other_move)
    (other_move.class == Scissors) || (other_move.class == Rock)
  end 
end

class Spock < Move
  def >(other_move)
    (other_move.class == Rock) || (other_move.class == Scissors)
  end

  def <(other_move)
    (other_move.class == Lizard) || (other_move.class == Paper)
  end 
end

class Player
  attr_accessor :move, :name, :score, :move_history
  def initialize
    @move_history = []
    @move = nil
    @score = 0
    set_name
  end

  def create_move(choice)
    case choice
    when 'Rock'
      self.move = Rock.new
    when 'Paper'
      self.move = Paper.new
    when 'Scissors'
      self.move = Scissors.new
    when 'Lizard'
      self.move = Lizard.new
    when 'Spock'
      self.move = Spock.new
    end
    self.move_history << self.move.class.to_s
  end
end

class Human < Player
  def choose
    choice = nil
    loop do
      puts "Choose either Rock, Paper, Scissors, Lizard or Spock."
      choice = gets.chomp.capitalize
      break if ['Rock', 'Paper', 'Scissors', 'Lizard', 'Spock'].include?(choice)
      puts "Sorry. Invalid choice."
    end
    create_move(choice)
  end

  def set_name
    puts "What is your name?"
    self.name = gets.chomp
  end
end

class Computer < Player
  BEST_RESPONSE = {"Rock"=>"Paper",
                   "Paper"=>"Scissors", 
                   "Scissors"=>"Spock", 
                   "Lizard"=>"Rock", 
                   "Spock"=>"Lizard"}

  def choose
    choice = BEST_RESPONSE[mode($m.human.move_history)]
    create_move(choice)
  end

  def set_name
    self.name = ['C3PO', 'Hal', 'Robbie', 'Holly'].sample
  end
end

class RPSGame
  attr_accessor :human, :computer, :game

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
    puts "#{computer.name} moves so far:"
    p computer.move_history
    puts "#{human.name} moves so far:"
    p human.move_history
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

$m = RPSGame.new
$m.play
