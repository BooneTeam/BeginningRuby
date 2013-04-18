#Write four instance methods for rectangle:

#Rectangle#area, which returns the area of the rectangle
#Rectangle#perimeter, which returns the perimeter of the rectangle
#Rectangle#diagonal, which returns the length of the rectangle's diagonal as a Float
#Rectangle#square?, which returns true if the rectangle is a square and false otherwise
class Rectangle
	attr_accessor :height, :width

		def initialize(width,height)
			@width = width
			@height = height
		end

		def perimeter 
			(@width*2) + (@height*2)
		end

		def area
			@width * @height
		end

		def square?
			if @width == @height
				true
			else 
				false
			end
		end

		def diagonal
		x = @width**2 + @height**2  
		Math.sqrt(x).to_f
		end

end
x = Rectangle.new(3,5)
	puts x.perimeter
	puts x.area
	puts x.square?
	puts x.diagonal

