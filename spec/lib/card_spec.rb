require "spec_helper"

RSpec.describe Card do
  # Your tests here
  let(:card1) { Card.new('spades', 5) }
  let(:card2) { Card.new('clubs', 'J') }
  let(:card3) { Card.new('diamonds', 'A') }
  let(:card4) { Card.new('hearts', 'A') }
  describe '#initialize' do
  	it 'is a card' do
  	  expect(card1).to be_a(Card)
  	end
  	it 'has a suit' do
  	  expect(card1.suit).to eq('spades')
  	  expect(card2.suit).to eq('clubs')
  	  expect(card3.suit).to eq('diamonds')
  	  expect(card4.suit).to eq('hearts')
  	end
  	it 'has a rank' do
  	  expect(card1.rank).to eq(5)
  	  expect(card2.rank).to eq('J')
  	  expect(card3.rank).to eq('A')
  	  expect(card4.rank).to eq('A') 
  	end
  	it 'has a point value' do
  	  expect(card1.points).to eq(5)
  	  expect(card2.points).to eq(10)
  	  expect(card3.points).to eq(11)
  	  expect(card4.points).to eq(11)
  	end 
  end
end
