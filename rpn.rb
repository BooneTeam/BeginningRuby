#Create an RPNCalculator class which can evaluate expressions written in Reverse Polish notation.
#It should have an evaluate instance method which takes as its input a valid RPN expression 
#and returns its evaluation. Your calculator only needs to handle addition, multiplication, and subtraction (not division).
#Operators and numbers should be separated by a single space.

class RPNCalculator

		

	def evaluate(array)
		prob = []
		sub = []
		add = []
		divide = []
		multiply = []
		array.split(" ").each do|i| 
			if i =~ (/\-/)
			sub << i
		elsif 
			i =~ (/\+/)
			add << i
		elsif i =~ (/\//)
			divide << i
		elsif i =~ (/\*/)
			multiply << i
			
		else
			 prob << i.to_i
			end
		end
		puts prob.inspect
		puts sub
		puts add
		puts multiply
		puts divide

		
	end

end

calc = RPNCalculator.new

calc.evaluate('70 10 4 + 5 * -')

