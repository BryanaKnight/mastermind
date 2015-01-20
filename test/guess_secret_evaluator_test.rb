require 'minitest/autorun'
require './lib/mastermind'
require './lib/guess_secret_evaluator'

class GuessSecretEvaluatorTest < Minitest::Test

  def test_it_counts_number_of_letters_correct
    gse = GuessSecretEvaluator.new("rgrr")
    assert_equal 2, gse.number_letters_correct
  end

  def test_it_counts_number_of_letters_in_correct_spot
    gse = GuessSecretEvaluator.new("rgrr")
    assert_equal 1, gse.number_letters_correct_place
  end
end
