dominion_path = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(dominion_path) unless $LOAD_PATH.include?(dominion_path)

require 'randomize'

puts "Starting up dominion randomizor"
puts "Here is your deck:"

Randomize.new

