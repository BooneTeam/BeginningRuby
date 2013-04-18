class Monk
  ["life", "the_universe", "everything"].each do |action|
    define_method("meditate_on_#{action}") do |argument|
      "I know the meaning of #{argument}"
  	end
  end
  # put your code here
end
monk = Monk.new
puts monk.meditate_on_life("life")
puts monk.meditate_on_the_universe("the unviverse")
puts monk.meditate_on_everything("everything")
