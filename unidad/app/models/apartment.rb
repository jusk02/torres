class Apartment < ActiveRecord::Base
	belongs_to :tower
	has_many :users
end
