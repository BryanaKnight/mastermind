require 'pry'
require './lib/game'
require './lib/input'

class Mastermind
  include Messages

  def execute
    loop do
      input = Input.new(gets.chomp.downcase)
      if input.play?
        puts Messages.whats_your_guess
        guess = gets.chomp.downcase
        Game.new(guess)
      else
        exit_game
      end
    end
  end

  def exit_game
    puts Messages.goodbye
    exit
  end

end
