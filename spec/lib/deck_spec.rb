require "spec_helper"

RSpec.describe Deck do
  # Your tests here
  let(:deck1) { Deck.new }

  describe '#initialize' do
  	it 'is a deck' do
      expect(deck1).to be_a(Deck)
  	end
  	it 'has 52 cards in it' do
  	  expect(deck1.cards.length).to eq(52)
  	end
  end

  describe '#deal' do
    player = Hand.new("player")
    computer = Hand.new("computer")
    it 'deals a card to the player' do
      deck1.deal(player)
      expect(player.hand.length).to eq(1)
    end
    it 'deals a card to the computer' do
      deck1.deal(computer)
      expect(computer.hand.length).to eq(1)
    end
  end
end
