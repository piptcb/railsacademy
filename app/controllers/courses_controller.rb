class CoursesController < ApplicationController
	def index
		@courses = Course.all 
	end

	def edit
		@course = Course.find(params[:id])

	end

	
	def update
		course_params = params.require(:course).permit(:title, :short_title, :duration, :cost_per_day, :summary, :published)
		@course = Course.find(params[:id])
		if @course.update(course_params)
			redirect_to courses_path
		else 
			render :edit 
		end 
	end

	def new
		@course = Course.new		
	end

	def create
		
	end


	def show 
		@course = Course.find(params[:id])
	end 
end
