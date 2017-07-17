require_relative "card"
require_relative "deck"
require_relative "hand"

player = Hand.new("Player")
computer = Hand.new("Dealer")
card_bank = Deck.new

puts "Welcome to Blackjack!"  

def move(deck, person)
  if person.calculate_score < 21
  	puts ""
  	puts "Hit or Stand (H/S)"
  	your_move = gets.chomp
  	if your_move == 'h' || your_move == 'H'
      deck.deal(person)
  		move(deck, person)
  	elsif your_move == 's' || your_move == 'S'
  	  puts "#{person.role} score: #{person.calculate_score}"
  	else 
  	  move(deck, person)
  	end
  elsif person.calculate_score > 21
  	puts "BUST YOU LOSE!"
  	abort
  end
end

2.times do 
  card_bank.deal(player)
end

move(card_bank, player)

print "\n\n\n"

2.times do 
  card_bank.deal(computer)
end

while computer.calculate_score < 17 
  card_bank.deal(computer)
end

if computer.calculate_score <= 21
  puts ""
  puts "Dealer stands."
elsif computer.calculate_score > 21
  puts ""
  puts "DEALER BUSTS! YOU WIN!"
  abort
end

if player.calculate_score > computer.calculate_score
  puts ""
  puts "YOU WIN!"
elsif player.calculate_score < computer.calculate_score
  puts ""
  puts "YOU LOSE!"
else
  puts ""
  puts "IT'S A TIE!"
end