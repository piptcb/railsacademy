class Category < ActiveRecord::Base
	has_and_belongs_to_many :courses 
	
	def has_courses? 
		courses.count > 0
	end 

end
