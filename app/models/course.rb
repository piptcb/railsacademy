class Course < ActiveRecord::Base

	#attr_accessbile :title 
	has_and_belongs_to_many :categories 
	 
	has_and_belongs_to_many :textbooks  
	has_many :objectives, dependent: :destroy
	belongs_to :course
	
	validates :title, :duration, presence: true 
	validates :cost_per_day, numericality: { greater_than_or_equal_to: 0 }
	validates :summary, length: { minimum: 25}

	accepts_nested_attributes_for :textbooks, :categories 

	DURATION = (1..10).to_a
	
	def free?
		cost_per_day.zero?
	end 



end
