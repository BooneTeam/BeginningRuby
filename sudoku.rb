class Sudoku

	def initialize(array)
		@array = array
		@length = array.length
	end

	def empty_spots

	end

	def how_many
		@row1 = []
		row = 0
		while row < @array.length
		@array.map { |i| @row1 << i[row]}
		row = row + 1 
	end

	end

	def solvingrows
		against = [1,2,3,4]
	 	@b1 = against - @array[0]
		@b2 = against - @array[1]
		@b3 = against - @array[2]
		@b4 = against - @array[3]
		print @b1,@b2,@b3,@b4
	end


	def solvingcolumns
		against = [1,2,3,4]
		@a1 = against - @row1.slice(0..3)
		@a2 = against - @row1.slice(4..7)
		@a3 = against - @row1.slice(8..11)
		@a4 = against - @row1.slice(12..15)
		print @a1,@a2,@a3,@a4
	end


	def newrows
		
	end
end

puzzle = Sudoku.new([
	[1,0,3,0],
	[0,1,0,3],
	[2,0,4,0],
	[0,4,0,2]])
puts puzzle.how_many
print puzzle.solvingrows
puts "\n"
print puzzle.solvingcolumns
print puzzle.newrows