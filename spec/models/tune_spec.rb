require 'rails_helper'

describe 'Tune' do

	context 'Creating new tunes' do

		before(:each) {Tune.create(artist: 'Blah', title: 'Blahh', blog: 'Blah Blah')}

		it 'should be able to be created' do			
			expect(Tune.count).to eq(1)
		end

		it 'should be able to retrieve artist' do
			tune = Tune.first
			expect(tune.artist).to eq('Blah')
		end

		it 'should be able to retrieve title' do
			tune = Tune.first
			expect(tune.title).to eq('Blahh')
		end

		it 'should be able to retrieve blog post' do
			tune = Tune.first
			expect(tune.blog).to eq('Blah Blah')
		end
	end
end
