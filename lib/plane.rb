class Plane

	attr_accessor :pilot, :copilot, :steward1, :steward2, :steward3

	def initialize(pilot, copilot, steward1, steward2, steward3)
		@pilot = pilot
		@copilot = copilot
		@steward1 = steward1
		@steward2 = steward2
		@steward3 = steward3
	end

	def take_off_from(runway, airport, sky, traffic_controller)
		return (runway.plane_taking_off_runway(airport,sky)) if air_traffice_clearance(traffic_controller) == true
		return "No permission to take-off"
	end

	def land_at(airport, sky)
		airport.plane_land(sky.return)
	end

	def air_traffic_clearance(traffic_controller)
		traffic_controller.give_clearance?
	end

	def crew
		@crew = %w(@pilot @copilot @steward1 @steward2 @steward3)
	end

end