#Write a method reverse_words which takes a sentence as a string and reverse each word in it.
def reverse_words(str)
 x = str.split.map { |x| x.reverse }
 puts x.join(" ")
end
	reverse_words("I am a silly boy")