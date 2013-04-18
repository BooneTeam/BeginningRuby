
def destroy_message(string)
	if string.include? ":" 
		puts string
	end
end

def destroy_message!(string)
	words = []
	newwords = []
	words << string.split(" ")
	words.each do |x|
		if x
			newwords << x
		end
		print newwords
	end
end

destroy_message!("This is a string to destroy: this")
destroy_message("This is a string that shouldnt be destroyed: even with")

