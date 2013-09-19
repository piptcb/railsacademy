class Categorisation < ActiveRecord::Base
	has_many :categories 
	has_many :courses 
end
