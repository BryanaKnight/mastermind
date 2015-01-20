require 'pry'
class GuessSecretEvaluator

  attr_reader :guess

  def initialize(guess)
    @guess = guess
    evaluate
  end

  def secret
    "rrgb"
  end

  def evaluate
    puts Messages.too_short if guess.too_short?
    puts Messages.too_long if guess.too_long?
    if guess.combo != secret
      puts Messages.wrong_guess(guess.combo.upcase, number_letters_correct, number_letters_correct_place)
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
