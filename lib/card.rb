class Card
  attr_reader :suit, :rank
  attr_accessor :points
  def initialize(suit, rank)
  	@suit = suit
  	@rank = rank
  	if (@rank == "Q") || (@rank == "K") || (@rank == "J")
      @points = 10
    elsif (@rank == "A") 
      @points = 11
    else 
      @points = @rank
    end
  end
end