dominion_path = File.expand_path('../', __FILE__)
$LOAD_PATH.unshift(dominion_path) unless $LOAD_PATH.include?(dominion_path)

puts "Starting up dominion randomizor"
puts "Here is your deck:"

class Dominion

  require 'dominion-basic-cards'
      
  attr_reader :number_of_cards
  attr_accessor :selected_cards

  def initialize(number_of_cards = 10)
    @number_of_cards = number_of_cards
    @selected_cards = []
    randomize_set
  end

  def randomize_set
    randomize 
    selected_cards.map { |card| puts "#{card[:name]} : #{card[:type]}" }
  end

  private

  def randomize
    i = 0
    while i < number_of_cards
      rand_obj = Random.new
      random_number = rand_obj.rand(basic_cards.keys.last)
      unless selected_cards.include?(basic_cards[random_number])
        if basic_cards[random_number] != nil
          selected_cards << basic_cards[random_number]
          i += 1
        end
      end
    end
  end

  def basic_cards
    DominionBasic::BASIC_CARDS
  end
end

Dominion.new

