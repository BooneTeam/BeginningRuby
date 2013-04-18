class Die
  attr_accessor :sides
 
  def initialize(sides)
    @sides = sides
   	raise ArgumentError, "You must use 1 or more sides" if @sides <= 0
  end
  	
  def sides
  	@sides
  end

  def roll
  	@roll = 1 + rand( max = ( @sides + 1 ) - 1)
  end
end
rolling = Die.new(6)
puts rolling.roll
puts rolling.sides