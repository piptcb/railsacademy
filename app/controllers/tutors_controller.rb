class TutorsController < ApplicationController
  def new 
  	@tutor = Tutor.new 
  	@language = @tutor.languages
	@tutor_language = @tutor.languages.build
  end 


  def create 
  	@tutor = Tutor.new (params[:tutor])
  	 if @tutor.save 
  	 	redirect_to new_tutor.path 
  	 end 
  end 

end
