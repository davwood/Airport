require_relative '../lib/air_controller.rb'

describe AirController do 

	it 'can respond to a plane requesting to take off' do
		ac = AirController.new
		expect(ac.give_clearance?).to be_true
	end
	
end