Railsacademy::Application.routes.draw do

  get "tutors/index"
  get "categories/index"
 root "home#index"
 #root "courses#index"
 resources :courses do
 	resources :objectives
 end

 resources :categories do 
 	resources :courses 
 end 

 resources :tutors do 
 	resources :languages
 end 

end
