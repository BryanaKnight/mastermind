module GuessSecretEvaluator
  extend self

  def number_letters_correct(guess, secret)
    guess.split("").select { |letter| secret.include?(letter) }.uniq.count
  end

  def number_letters_correct_place(guess, secret)
    pairs = guess.split("").zip(secret.split(""))
    pairs.count { |p| p[0] == p[-1] }
  end
end
