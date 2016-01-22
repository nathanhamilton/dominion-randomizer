require 'test/unit'
require_relative '../randomize'

class RandomizeTest < Test::Unit::TestCase

  include DominionBasic

  def setup
    @cards ||= Randomize.new
  end

  def test_count_of_cards
    assert_equal @cards.number_of_cards, @cards.selected_cards.length
  end

  def test_uniqueness_of_cards
    @cards.selected_cards.each do |card|
      assert_equal 1, @cards.selected_cards.count(card)
    end
  end
end
