a = [ 1,2,3 ]
b = %w{ a b c }

p array = [[""] * 3]*3
#or 
p Array.new(3) {Array.new(3) {""}}

a = [ 1,2,3 ]
b = %w{ a b c }

p a.zip(b)

c = [[1,"a"],[2,"b"],[3,"c"]]
p c.flatten

h = {}
a.each_with_index do |number, index|
	h[number] = b[index]
end
p h

p Hash[a.zip(b)]

a = [["matt","plumber"],["phil", "baker"]]
a.map! { |x,y| "name: " + x  + " occupation: " + y }
p a
#better 
a = [["matt","plumber"],["phil", "baker"]]
a.map { |name,occupation| p "name: #{name} occupation: #{occupation}" }

a = [["row",3],["your",1],["boat",1]]
p a.map { |word,times|  ((word + " ") * times).split(" ").flatten}
#better
a = [["row",3],["your",1],["boat",1]]
p a.map { |word,times| [word].cycle(times).to_a }.flatten

a = [1,2,3,4]
p a[0..2]
p a[0...3]
p a.keep_if { |x| x <= 3 }

p Math.sqrt(64)
#or
include Math
p sqrt 64

a = [1,2,3,4]
p a.delete_if { |x| x <= 2 }

a = [1,2,3,4] 
a.each do |x| 
	if x > 2
	Array.new << x 
	end
	end
p a
#or
p a.select { |x| x > 2 }

a.each { |x| x.shift until x <= 3}


