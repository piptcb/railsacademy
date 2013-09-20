class Course < ActiveRecord::Base

	has_and_belongs_to_many :categories  
	has_and_belongs_to_many :textbooks  
	has_many :objectives, dependent: :destroy
	
	validates :title, :duration, presence: true 
	validates :cost_per_day, numericality: { greater_than_or_equal_to: 0 }
	validates :summary, length: { minimum: 25}

	DURATION = (1..10).to_a
	
	def free?
		cost_per_day.zero?
	end 

end
