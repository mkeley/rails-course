Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  		get '/courses/new' => 'courses#new'
		post 'courses_path' => 'courses#create'
		get '/courses' => 'courses#index'
		#post 'courses/new' => 'courses#new'
		get '/courses/edit' => 'courses#edit'
		post '/courses/edit' => 'courses#update'
		get 'courses/delete' => 'courses#delete'
		
		resources :courses 
		
		get 'students/new' => 'student#new'
		post 'students' => 'student#create'
		get 'students' => 'student#index'
end
