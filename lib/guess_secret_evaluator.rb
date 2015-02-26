require 'pry'
class GuessSecretEvaluator

  attr_accessor :guess

  def initialize(guess)
    @guess = Guess.new(guess)
    evaluate
  end

  def secret
    "rrgb"
  end

  def evaluate
    loop do
      if guess.combo == "q"
        Mastermind.new.quit
      elsif guess.too_short?
        puts Messages.too_short
        @guess = Guess.new(gets.chomp.downcase)
      elsif guess.too_long?
        puts Messages.too_long
        @guess = Guess.new(gets.chomp.downcase)
      elsif guess.combo != secret
        puts Messages.wrong_guess(guess.combo.upcase, number_letters_correct, number_letters_correct_place)
        @guess = Guess.new(gets.chomp.downcase)
      end
    end
  end

  def number_letters_correct
    guess.combo.split("").select { |letter| secret.include?(letter) }.uniq.count
  end

  def number_letters_correct_place
    pairs = guess.combo.split("").zip(secret.split(""))
    pairs.select { |p| p[0] == p[-1] }.count
  end

end
