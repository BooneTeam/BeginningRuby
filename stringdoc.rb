class String_change

attr_accessor :strings

def initialize(strings)
	self.strings = strings
end

def make_caps
	self.strings.upcase
end

def undo_caps
	self.strings.downcase
end

def front_to_back
	self.strings.swapcase
end

end

sentence = String_change.new("Here is A string")
puts sentence.make_caps
puts sentence.undo_caps
puts sentence.front_to_back


