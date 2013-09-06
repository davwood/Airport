class Runway

	def initialize
	end

	def plane_enters_runway(airport) 
		@plane_on_runway =  airport.plane_take_off
	end

	def plane_leaves_runway(sky)
		sky.receive(@plane_on_runway)
		@plane_on_runway = nil
	end

	def plane_taking_off_runway(airport, sky)
		plane_enters_runway(airport)
		plane_leaves_runway(sky)
	end

end