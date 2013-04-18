class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError,  "Need 1 side or more" if @labels.length <= 0
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.shuffle.first
  end
end
rolling = Die.new( %w(Bananas Corn Apple Pie))
puts rolling.sides
puts rolling.roll