class Skill < ActiveRecord::Base
	
	has_and_belongs_to_many :tutors

	def has_tutors? 
		tutors.count > 0
	end 
end
