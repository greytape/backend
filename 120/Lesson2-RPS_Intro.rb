class Move
  VALUES = ['rock', 'paper', 'scissors']

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

  def >(other_move)
    case @value
    when 'rock'
      return true if other_move.scissors?
      return false if other_move.paper?
    when 'scissors'
      return true if other_move.paper?
      return false if other_move.rock?
    when 'paper'
      return true if other_move.rock?
      return false if other_move.scissors?
    end
  end

  def <(other_move)
    case @value
    when 'rock'
      return false if other_move.scissors?
      return true if other_move.paper?
    when 'scissors'
      return false if other_move.paper?
      return true if other_move.rock?
    when 'paper'
      return false if other_move.rock?
      return true if other_move.scissors?
    end
  end
end

class Player
  attr_accessor :move, :name
  def initialize
    @move = nil
    set_name
  end
end

class Human < Player
  def choose
    choice = nil 
    loop do 
      puts "Choose either rock, paper or scissors."
      choice = gets.chomp
      break if ['rock', 'paper', 'scissors'].include?(choice)
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
    self.name = ['C3PO', 'Hal'].sample
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts "Welcome to Rock, Paper, Scissors."
  end

  def display_goodbye_message
    puts "Thank you for playing. Goodbye!"
  end

  def display_winner
    puts "#{human.name} chose: #{human.move}."
    puts "#{computer.name} chose: #{computer.move}."
    
    if human.move > computer.move
      puts "#{human.name} won."
    elsif human.move < computer.move
      puts "#{computer.name} won."
    else 
      puts "It's a tie."
    end 
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_winner
      display_goodbye_message
      puts "Would you like to play #{computer.name} again? (Y/N)"
      break unless gets.chomp.downcase[0] == 'y'
    end
  end
end

RPSGame.new.play

class Rule
  def initialize

  end
end

def compare(move1, move2)

end