require './lib/mastermind'
require './lib/messages'
require './lib/input'
require './lib/guess_secret_evaluator'
require './lib/guess'

mastermind = Mastermind.new
messages = Messages

puts messages.welcome
puts messages.first_question

input = ""

while input != "q"
  print "> "
  mastermind.execute
end

