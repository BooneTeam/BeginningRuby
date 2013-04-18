def madlib(story)
	story.split(" ").each do |i|
		case i
		when "(noun)"
			 i = "what"
		end
		
	end
puts story
end

madlib("There once was a (noun) named (name). He (verb) on a (noun) .")