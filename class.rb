print 2.class
print 2.class.ancestors
print Kernel.methods.sort
print Kernel.class
print Kernel.methods.include?(:puts)
print Kernel.methods.count
p "hi"
Kernel.puts("Hi")
p "The Godfather".length

def teenager(age)
	case age
	 when 13..19; "your a teen"
	else
		"not a teen"
end
end
puts teenager(20)

def bw(num)
	print "This number is between 12 and 18" if num > 12 && num < 18; "not in between"	
end
puts bw(15)

def bwmethod(num)
	num.between?(12,18)
end
puts bwmethod(15)

0.step(100,5) { |number| puts number }

0.upto(10) { |num| puts num }

puts 4.to_f

Max = 10
puts Max.inspect

puts "a".ord

puts 120.chr

x = 5
y = 7
puts "#{x} + #{y} = #{x + y}"

string = "foobar"
puts string.sub("bar","moo")
string = "foobar foobar"
puts string.gsub("bar","moo")

string = "this is a test"

puts string.sub(/^../,"hello")
puts string.sub(/..$/,"hello")
#string.split("").each { |x| puts x }

string = "This is a test"
puts string.scan(/[a-m]/)

string = "this is a test"
#puts "String with vowels" if string.scan.include?(/[aeiou]/)

x = [1,2,3,4,5]
x.insert(3,2)
print x


x = [1,2,3,4,5]
x[2] += 2
print x

x = %w( Word Play Fun )
print x.join(",").is_a?(String)

x = "This is a test"
print x.split(" ")
#or
print %w"This is a test"

x = "Short sentence. Another. No more"
print x.split(".")

[1, 2, 3, 4].each {|num| puts "#{num}x"}

puts [1,2,3,4,5].collect! { |num| num + 3 }

puts [1,2,3,4,5].map { |num| num + 3 }

puts x = [].empty?

puts x = [1,2,3,"y"].include?("y")

def this
x = [1,2,3,4]
return x.last
end
puts this

x = [1,2,3,4]
x.last
x[-1]

x = [1,2,3]
puts x[0..1].join('-')


animals = { :cat => "feline animal", :dog => "canine" }
puts animals.length
animals[:cat] = "fluffy"
puts animals[:cat]

x = { :a => 1, :b => 2 }
x.each { |x,y| puts "#{x} equals #{y}"}
p x.keys

x.delete(:a)
puts x

x = { :a => 100, :b => 25 }
x.each { |k,v| if v > 50; x.delete(k) end }
puts x

puts "bob".to_sym.inspect

puts rand(0-5)

if ["a" - "z"].include?([/aeiou/]); delete end



