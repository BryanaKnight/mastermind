module Messages
  extend self

  def welcome
    "Welcome to Mastermind"
  end

  def first_question
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def whats_your_guess
    "I have generated a beginner sequence with four elements made up of: (r)ed,
    (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.
    What's your guess?"
  end

  def you_win
    "You win!"
  end

  def goodbye
    "Goodbye"
  end

  def too_short
    "Guess is too short. Try again!"
  end

  def too_long
    "Guess is too long. Try again!"
  end

  def wrong_guess(guess, num_correct, num_correct_position)
    "#{guess} has #{num_correct} of the correct elements with #{num_correct_position} in the correct positions. Try again!"
  end

end
