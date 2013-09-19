class ObjectivesController < ApplicationController

	before_action :course_param, only: [:index, :destroy, :edit]
	def index
		@objectives = @course.objectives
	end

	def destroy
		@objective = Objective.find(params[:id])
		
		if @course.objectives.include?(@objective)
			@objective.destroy
		end
		redirect_to course_objectives_path(@course)
	end 

	private
	def course_param
		@course = Course.find(params[:course_id])
	end

end
