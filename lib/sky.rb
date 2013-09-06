class Sky

	def initialize
		@sky = []
	end

	def receive(plane)
	  	@sky.push(plane)
	end 

	def return
		@sky.pop
	end

	def planes_in_sky
		@sky
	end


end