class Airport

	attr_accessor :weather

	def initialize(capacity, *planes)
		@airport_planes = planes
		@weather = 'Sunny'
		@capacity = capacity.to_i
	end

	def weather_update
		return @weather = "Stormy" if rand(0..1) == 0 
		else @weather = 'Sunny'
	end

	def weather
		@weather
	end

	def is_stormy?
		if @weather == 'Stormy' then true
		else false end
	end

	def plane_take_off
		return @airport_planes.pop if clear_for_takeoff?
		return "No taking off allowed!"
	end

	def clear_for_takeoff?
		return false if is_stormy? == true
		return false if bomb_scare? == true
		return true
	end

	def plane_land(landingplane)
		return @airport_planes.push(landingplane) if landing_allowed? 
		return "Landing not allowed!"
	end

	def landing_allowed?
		return false if is_stormy?
		return false if airport_is_full?
		return false if bomb_scare?
		return true
	end 

	def airport_is_full?
		capacity == plane_count
	end

	def airport_planes
		@airport_planes
	end

	def capacity
		@capacity
	end

	def plane_count
		@airport_planes.length
	end

	def has_planes?
		!@airport_planes.nil?
	end

	def bomb_scare!
		@bomb_scare = true
	end

	def bomb_scare?
		@bomb_scare
	end

	def call_off_bomb_scare
		@bomb_scare = nil
	end
	
end