class Subgenre < ActiveRecord::Base
	belongs_to :genre
	has_many :tunes, :through => :genre
end
