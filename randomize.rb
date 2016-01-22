require_relative 'dominion-basic-cards'

class Randomize

  include DominionBasic

  attr_reader :number_of_cards
  attr_accessor :selected_cards

  def initialize(number_of_cards = 10)
    @number_of_cards = number_of_cards
    @selected_cards = []
    randomize_set
  end

  def randomize_set
    select_cards
    selected_cards.map { |card| puts "#{card[:name]} : #{card[:type]}" }
  end

  private

  def select_cards
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
end
