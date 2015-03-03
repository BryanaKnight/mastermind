require './lib/mastermind'
require './lib/messages'

mastermind = Mastermind.new
messages = Messages

puts messages.welcome
puts messages.first_question

input = ""

while input != "q"
  print "> "
  mastermind.execute
  puts messages.goodbye
  input = "q"
end
