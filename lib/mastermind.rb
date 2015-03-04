require 'pry'
require './lib/game'
require './lib/input'

class Mastermind
  include Messages

  def execute
    input = Input.new(gets.chomp.downcase)
    while input.request != "q"
      input.play?
      puts Messages.whats_your_guess
      guess = gets.chomp.downcase
      Game.new(guess)
    end
  end

end
