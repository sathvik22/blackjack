require "spec_helper"

RSpec.describe Hand do
  # Your tests here
  let(:hand1) { Hand.new("player") }


  describe '#initialize' do 
  	it 'is a hand' do
  	  expect(hand1).to be_a(Hand)
    end
    it 'has a person attached to it' do
      expect(hand1.role).to eq("player")
    end
    it 'holds cards' do
      hand1.hand << Card.new("suits", "A")
      expect(hand1.hand[0].rank).to eq("A")
    end
  end

  describe '#calculate_score' do
    it 'calculates the score' do
      hand1.hand = [Card.new('spades', 'Q'), Card.new('spades', 'A'), Card.new('spades', 'A'), Card.new('spades', 3), Card.new('spades', 4), Card.new('spades', 'A')]
      expect(hand1.calculate_score).to eq(20)
    end
  end
end
