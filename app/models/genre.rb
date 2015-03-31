class Genre < ActiveRecord::Base
	has_many :subgenres
	has_many :tunes
end
