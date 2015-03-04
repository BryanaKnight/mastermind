require './lib/mastermind'
require './lib/messages'
include Messages

mastermind = Mastermind.new

puts Messages.welcome
puts Messages.first_question

input = ""

while input != "q"
  print "> "
  mastermind.execute
  puts Messages.goodbye
  input = "q"
end
