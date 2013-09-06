require_relative '../lib/airport.rb'

describe Airport do 

	let(:plane) {Plane.new}
	let(:airport) {Airport.new(20, plane)}

	it 'contains a collection of planes' do
		plane = double :plane
		airport = Airport.new(20, plane)

		expect(airport).to have_planes
	end

	it 'a new airport will begin as a sunny airport' do
		
		airport = Airport.new(20, plane)
		expect(airport.weather).to eq('Sunny')
	end


	it 'can update today\'s weather at that airport' do
		airport.weather_update
		result = airport.weather
		expect(result).to be_a(String)
	end


	context 'when weather is sunny' do

		it 'will allow landing' do

			(airport.landing_allowed?).stub (:is_stormy?) {false}

			expect(airport.landing_allowed?).to be_true
		
		end

		it 'can allow a plane to land' do
			plane = double :plane
			airport = Airport.new(20, plane)

			# (airport.landing_allowed?).stub (:is_stormy?) {false}
			(airport.landing_allowed?).stub (:is_stormy?) {false}
			
			expect(airport.plane_land(plane)).to equal(airport.airport_planes)

		end
		

	end

	context 'weather is stormy' do

	

		it 'can prevent a plane from taking off' do
			plane = double :plane
			airport = Airport.new(20, plane)

			(airport.clear_for_takeoff?).stub(:is_stormy?) {true}

			expect(airport.plane_take_off).to eq("No taking off allowed!") 

		end

		it 'can prevent a plane from landing' do
			plane = double :plane
			airport = Airport.new(20, plane)

			(airport.landing_allowed?).stub(:is_stormy?) {true}

			expect(airport.plane_land(plane)).to eq("Landing not allowed!") 
		end

	end

	it 'can show the capacity of the airport' do
		expect(airport.capacity).to eq(20)
	end

	it 'can determine if the airport is full based on planes and capacity' do
		expect(airport.airport_is_full?).to be_false
	end

	it 'can prevent a plane from landing if the airport is full' do
		plane = double :plane
		airport = Airport.new(20, plane)

		(airport.landing_allowed?).stub (:airport_is_full?) {true}

		expect(airport.plane_land(plane)).to eq("Landing not allowed!")

	end



end

