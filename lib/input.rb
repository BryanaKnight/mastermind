class Input
  attr_reader :request

  def initialize(request)
    @request = request
  end

  def play?
    request == "p" || request == "play"
  end

  def quit?
    request == "q"|| request == "quit"
  end
end
