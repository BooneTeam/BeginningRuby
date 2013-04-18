def palindrome?(sentence)
  newsentence = sentence.downcase.split(" ").join("")
	sentence = newsentence.reverse 
  if newsentence == sentence
  	true
  end

end