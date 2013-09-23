class CoursesController < ApplicationController
	def index
		@courses = Course.all 
	end

	def edit
		@course = Course.find(params[:id])
	    @category = @course.categories 
	    @category_course = @course.categories.build 

	    @textbook = @course.textbooks
		@textbook_course = @course.textbooks.build
		 
	end

	def update
		
		@course = Course.find(params[:id])
		if @course.update(course_params)
			redirect_to course_path(@course)
		else 
			render :edit 
		end 
	end

	def new
		@course = Course.new	
	    @category = Category.all
	    @category_course = @course.categories.build 

	    @textbook = Textbook.all
		@textbook_course = @course.textbooks.build	
	end

	def create
		
	end


	def show 
		@course = Course.find(params[:id])
	end 

private

def course_params

	course_params = params.require(:course).permit(:title, :short_title, :duration, :cost_per_day, :summary, :published)
end 

end
