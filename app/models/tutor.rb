class Tutor < ActiveRecord::Base
	has_many :courses 
	has_many :languages 
	has_and_belongs_to_many :skills

	validates :firstname, :lastname, presence: true 

    validates :daily_rate, numericality: { greater_than_or_equal_to: 0 }
	
	DESIGNATORY = ["BEng", "MSc", "MBA"]
	TITLE = ["Mr", "Ms", "Dr"]
end
