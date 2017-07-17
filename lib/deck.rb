require_relative "card"

class Deck
  attr_accessor :cards
  
  def initialize
  	@cards = []
  	suits = ['spades', 'clubs', 'hearts', 'diamonds']
    ranks = ['A',2,3,4,5,6,7,8,9,10,'J','Q','K']
    suits.each do |suit|
      ranks.each do |rank|
      	new_card = Card.new(suit, rank)
      	@cards << new_card
      end
    end
    @cards.shuffle!
  end

  def deal(person)
    new_card = @cards.pop
    person.hand << new_card
    puts "#{person.role} was dealt #{new_card.rank} of #{new_card.suit}"
    puts "#{person.role} score: #{person.calculate_score}"
  end 
end