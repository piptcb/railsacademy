Railsacademy::Application.routes.draw do

  get "categories/index"
 root "home#index"
 #root "courses#index"
 resources :courses do
 	resources :objectives
 end

 resources :categories do 
 	resources :courses 
 end 

end
