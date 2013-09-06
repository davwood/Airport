require_relative '../lib/plane.rb'

describe Plane do

	let(:plane) {Plane.new} 


	it 'can take off from an airport' do
		airport = double :airport
		
		expect(airport).to receive(:plane_take_off)
		
		plane.take_off_from(airport)
	end

	it 'can land at an airport' do
		airport = double :airport
		
		expect(airport).to receive(:plane_land)

		plane.land_at(airport)
	end


end