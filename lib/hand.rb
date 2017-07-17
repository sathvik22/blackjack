class Hand
  attr_accessor :hand
  attr_reader :role
  def initialize(role)
  	@hand = []
  	@role = role
  end

  def calculate_score
    ace_count = 0
    @hand.each do |card|
       if card.rank == "A"
         ace_count += 1
       end
    end
    score = 0
    @hand.each do |card|
      score += card.points
    end
    while score > 21 && ace_count > 0
      score -= 10
      ace_count = ace_count - 1
    end
    return score
  end
end