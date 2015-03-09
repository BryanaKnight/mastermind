require './lib/mastermind'
require './lib/messages'
include Messages

mastermind = Mastermind.new

puts Messages.welcome
puts Messages.first_question

print "> "
mastermind.execute
