class Category < ActiveRecord::Base
	has_many :categorisations 
	has_many :courses, through: :categorisations
end
