class Sudoku

	def initialize(array)
		@array = array
	end

	def sudoku_size
		@test = []
		start = 1
			while start < @array.length + 1 
				@test << start
				start = start + 1 
			end
		@test
	end

	def missing_nums_in_rows
		@missing = []
		@missing << @array.collect { |x| @test - x }
	end

	def missing_nums_in_columns
		@missing2 = []
		@missing2 << @array.transpose.collect { |x| @test - x}
	end

	def solving
		columns = []
		rows = []
		if @array.transpose.each do |x|
			if !x.include?(@missing2.flatten(1)[0][1])
			columns << x
			end		
		end &&
		@array.each do |x|
			if !x.include?(@missing2.flatten(1)[0][1])
			rows << x
			end		
		end

	end
	if columns[0].include?(0) && rows.map { |x| x[0] == 0 }
		columns[0].delete_at(1)
		columns[0].insert(1,4)
	end
	return columns,rows
	end

	def crfind
		@columns = []
		@rows = []
		if @array.transpose.each do |x|
			if !x.include?(@missing2.flatten(1)[0][1])
			@columns << x
			end		
		end &&
		@array.each do |x|
			if !x.include?(@missing2.flatten(1)[0][1])
			@rows << x
			end		
		end
			return @columns,@rows
	end
	end

	def crinsert
	if @columns[0].include?(0) && @rows.map { |x| x[0] == 0 }
		@columns[0].delete_at(1)
		@columns[0].insert(1,4)
	end
	end



end

puzzle = Sudoku.new([
	[1,0,3,0],
	[0,1,0,3],
	[2,0,4,0],
	[0,4,0,2]])
print puzzle.sudoku_size
puts "\n"
print puzzle.missing_nums_in_rows
puts "\n"
print puzzle.missing_nums_in_columns
puts "\n"
print puzzle.crfind
puts "\n"
print puzzle.crinsert