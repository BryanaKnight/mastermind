class Guess
  attr_reader :combo

  def initialize(combo)
    @combo = combo
  end

  def too_short?
    combo.length < 4
  end

  def too_long?
    combo.length > 4
  end
end
