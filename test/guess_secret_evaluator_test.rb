require 'minitest/autorun'
require './lib/mastermind'
require './lib/game'

class GuessSecretEvaluatorTest < Minitest::Test

  def test_it_counts_number_of_letters_correct
    guess = "rgrr"
    secret = "rrgb"
    gse = GuessSecretEvaluator
    assert_equal 2, gse.number_letters_correct(guess, secret)
  end

  def test_it_counts_number_of_letters_in_correct_spot
    guess = "rgrr"
    secret = "rrgb"
    gse = GuessSecretEvaluator
    assert_equal 1, gse.number_letters_correct_place(guess, secret)
  end

  def test_it_counts_another_number_of_letters_correct
    guess = "ygbr"
    secret = "rbgy"
    gse = GuessSecretEvaluator
    assert_equal 4, gse.number_letters_correct(guess, secret)
  end

  def test_it_counts_another_number_of_letters_in_correct_spot
    guess = "ygbr"
    secret = "rbgy"
    gse = GuessSecretEvaluator
    assert_equal 0, gse.number_letters_correct_place(guess, secret)
  end
end
