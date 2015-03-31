class TunesController < ApplicationController
	respond_to :json

	def index
		@tunes = Tune.all
		respond_with @tunes.to_json
	end

end
