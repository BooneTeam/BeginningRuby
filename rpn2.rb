class RPNCalculator

		
	def evaluate(problem)
		problem = problem.split(" ")
		eval = []
			problem.each do |i|
			if i =~ (/[0-9]+/) 
			
			 eval << i.to_f 

			elsif i =~ (/[\+\-\*\/]/) 
				op = i
				
				num2 = eval.pop 
				num1 = eval.pop 

				eval << case op 
				when '+'
					num1 + num2
				when '-'
					num1 - num2
				when '*'
					num1 * num2
				when '/'
					num1 / num2
				end

			end
			end
		
		p eval.first.to_f
	
	end
end
calc = RPNCalculator.new
p calc.evaluate('1 1 + ')

