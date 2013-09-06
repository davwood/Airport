require_relative '../lib/sky.rb'

describe Sky do
	
	let(:sky) {Sky.new}

	it 'once a plane takes off it should now be in the sky' do
		plane = double :plane
		expect(sky.receive(plane)).to eq([plane])

	end

	it 'a plane from the sky will land and be returned' do
		plane = double :plane

		sky.receive(plane)
		expect(sky.return).to eq(plane)
	end

	it 'when a plane lands it will be out of the sky'  do
		plane = double :plane

		sky.receive(plane)
		sky.return
		expect(sky.planes_in_sky).to eq([])
	end

end