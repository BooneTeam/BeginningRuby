# Determine whether a string contains a Social Security number.
def has_ssn?(string)
	ssns = string.scan(/\b(\d{3}-{1}\d{2}-{1}\d{4})\b/)
	if ssns.empty?
		nil
	else
		true
	end
end

# Return the Social Security number from a string.
def grab_ssn(string)
	ssns = string.scan(/\b(\d{3}-{1}\d{2}-{1}\d{4})\b/)
	if ssns.empty?
		nil
	else 
		ssns.join(",")
	end
	
end

# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)
	ssns = string.scan(/\b(\d{3}-{1}\d{2}-{1}\d{4})\b/)
	ssns.flatten
end

def hide_all_ssns(string)
	newhidden = []
	hidden = string.scan(/\b(\d{3}-{1}\d{2}-{1}\d{4})\b/)
	hidden.flatten.each { |x| newhidden << x.to_s.gsub(/\d{3}-\d{2}/, "XXX-XX") }
	if newhidden.empty?
		string
	else
	newhidden.flatten.collect! { |x| x.to_s }
	newhidden.join(', ')
	end
end

def format_ssns(string)
	newhidden = []
	hidden = string.scan(/\b(\d{3}[-?|\D?]{1}\d{2}[-?|\D?]{1}\d{4}|\d{9})\b/)
	hidden.flatten.each { |x| newhidden << x.to_s.gsub(/\b(\D)\b/,"-") }
	if newhidden.empty?
		string
	else
	newhidden.flatten.collect do |x|
		if x.length == 9
			x.insert(3,"-")
			x.insert(6,"-")
		end
	end
	newhidden.join(', ')
end
end


puts has_ssn?("my social is 933-32-8942")
puts grab_ssn("my social is 593-32-8942")
puts grab_all_ssns("my social is 593-32-8942 and my buddies is 654-43-2345")
puts hide_all_ssns("my social is 593-32-8942 and my buddies is 654-43-2345")
puts format_ssns("my social is 593-32-8942 and my buddies is 654.43,2345 so is this 546343211")
puts format_ssns("my social is 5432343213").inspect