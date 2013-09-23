class ObjectivesController < ApplicationController

	before_action :course_param, only: [:index, :destroy, :edit, :new]
	def index
		@objectives = @course.objectives
		@objective = Objective.new
	end

	def destroy
		@objective = Objective.find(params[:id])
		
		if @course.objectives.include?(@objective)
			@objective.destroy
		end
		redirect_to course_objectives_path(@course)
	end 

	def new
		
		@objective = Objective.new(params[:objective])

	end

	def create 
		
		@objective = Objective.new(params[:objective])
			if @objective.save 
				redirect_to :action => 'index'
			else 
				render :action => 'index'
			end 
	end 
	
	def edit 

	end 

	private
	def course_param
		@course = Course.find(params[:course_id])
	end

end
