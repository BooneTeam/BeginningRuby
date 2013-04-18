#Create a method get_grade that accepts an Array of test scores. 
#Each score in the array should be between 0 and 100, where 100 is the max score.
def get_grade(grades=[])
 total = 0
 grades.each { |x| total+=x }
 average = total / grades.count
  if average >= 90
   puts "A"
  elsif average >= 80 && average < 90
    "B"
  elsif average >= 70 && average < 80
    "C"
  elsif average >= 60 && average  < 70
    "D"
  elsif  average >= 50 && average < 60
    "F"
  end
end

get_grade([90,96,95])