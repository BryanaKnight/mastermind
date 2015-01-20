require 'pry'

class Mastermind
  attr_reader :secret, :messages

  def initialize
    @secret = "rrgb"
    @messages = Messages
  end

  def execute
    loop {
      input = Input.new(gets.chomp.downcase)
      if input.play?
        puts messages.whats_your_guess
        guess = Guess.new(gets.chomp.downcase)
        GuessSecretEvaluator.new(guess)
      elsif input.quit?
        puts messages.goodbye
        return
      end
    }
  end

end
