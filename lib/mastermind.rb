require 'pry'

class Mastermind
  attr_reader :messages

  def initialize
    @messages = Messages
  end

  def execute
    input = Input.new(gets.chomp.downcase)
    if input.play?
      puts messages.whats_your_guess
      guess = gets.chomp.downcase
      GuessSecretEvaluator.new(guess)
    elsif input.quit?
      quit
    end
  end

  def quit
    puts messages.goodbye
    exit
  end

end
