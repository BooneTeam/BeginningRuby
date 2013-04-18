class House
	def initialize(init_temp,min,max)
		@init_temp = init_temp
		@min = min
		@max = max
	end

	def update_temperature!(heat_or_air)
		if heat_or_air == "heater"
			@init_temp += 1
			puts @init_temp
			if @init_temp == @max+1
				puts "That is as hot as we can go, turning on Air!"
				return update_temperature!("air")
			end
			puts "The house is #{@init_temp} degrees"
		elsif heat_or_air == "air"
			@init_temp -= 2
			puts @init_temp
			if @init_temp < @min
				puts "That is as cold as we can go, turning on Heat!"
				return update_temperature!("heater")
			end
			puts "The house is #{@init_temp} degrees"
		else
			puts "The Thermostat can't do that! Choose heater or air."
		end
	end

	def air_on
		@init_temp -= 2
			puts @init_temp
			if @init_temp < @min
				puts "That is as cold as we can go, turning on Heat!"
				return heat_on
			else
				sleep 2
				if @init_temp <= @min
					return heat_on
				else 
					return air_on
				end
			end
			puts "The house is #{@init_temp} degrees"
	end

	def heat_on
		@init_temp += 1
			puts @init_temp
			if @init_temp >= @max+1
				puts "That is as hot as we can go, turning on Air!"
				return air_on
			else
				sleep 2
				if @init_temp >= @max+1
					return air_on
				else 
					return heat_on
				end
			end
			puts "The house is #{@init_temp} degrees"
	end
end
temp = House.new(66,65,80)
=begin temp.update_temperature!("heater")
temp.update_temperature!("heater")
temp.update_temperature!("heater")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("air")
temp.update_temperature!("bananas")
=end
temp.air_on


