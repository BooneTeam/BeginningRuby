# Determine whether a string contains a Social Security number.
def has_ssn?(string)
	string.split(/\b(\d{3}-{1}\d{2}-{1}\d{4})\b/)
end

# Return the Social Security number from a string.
def grab_ssn(string)
	
end

# Return all of the Social Security numbers from a string.
def grab_all_ssns(string)

end

def hide_all_ssns(string)
	
end

def format_ssns

end


print has_ssn?("my social is 933-32-8942")
puts grab_ssn("my social is 593-32-8942")
puts grab_all_ssns("my social is 593-32-8942 and my buddies is 654-43-2345")
puts hide_all_ssns("my social is 593-32-8942 and my buddies is 654-43-2345")