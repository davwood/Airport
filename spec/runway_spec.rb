require_relative '../lib/runway.rb'

describe Runway do 
	
		before do
			runway = Runway.new
		end

		it 'can have planes enter the runway' do

			airport = double :airport, :plane_on_runway
			expect(runway.plan_enters_runway(airport)).to eq(plane_on_runway)

		end

		it 'can have planes leave the runway' do
	
			airport = double :airport
			sky = double :sky, receive: :plane_on_runway
			
			runway.plane_enters_runway(airport)
			expect(sky).to receive(:receive).with(:plane_on_runway)

			runway.plane_leaves_runway(sky)

		end

	
end