describe 'Tunes API' do 
	
	before(:each) {Tune.create(artist: 'Blah', title: 'Blahh', blog: 'Blah Blah')}

	it 'sends a list of tunes' do
		get '/tunes.json'
		expect(response).to be_success
		json = JSON.parse(response.body)
		expect(json.length).to eq(1)
	end

end