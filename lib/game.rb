require 'pry'
require './lib/guess'
require './lib/messages'
require './lib/guess_secret_evaluator'
class Game

  attr_accessor :guess

  def initialize(guess)
    @guess = Guess.new(guess)
    play
  end

  def secret
    "rrgb"
  end

  def play
    while guess.combo != "q" do
      if guess.too_short?
        puts Messages.too_short
        get_next_guess
      elsif guess.too_long?
        puts Messages.too_long
        get_next_guess
      elsif guess.combo != secret
        num_correct = GuessSecretEvaluator.number_letters_correct(guess.combo, secret)
        num_in_place = GuessSecretEvaluator.number_letters_correct_place(guess.combo, secret)
        puts Messages.wrong_guess(guess.combo.upcase, num_correct, num_in_place)
        get_next_guess
      end
    end
  end

  def get_next_guess
    @guess = Guess.new(gets.chomp.downcase)
  end

end
