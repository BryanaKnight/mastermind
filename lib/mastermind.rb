require 'pry'
require './lib/game'
require './lib/input'

class Mastermind
  attr_reader :messages

  def initialize
    @messages = Messages
  end

  def execute
    input = Input.new(gets.chomp.downcase)
    while input.request != "q"
      input.play?
      puts messages.whats_your_guess
      guess = gets.chomp.downcase
      Game.new(guess)
    end
  end

end
