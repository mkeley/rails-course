Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  		get '/courses/new' => 'courses#new'
		post '/courses' => 'courses#create'
		get '/courses' => 'courses#index'
		get '/courses/:id' => 'courses#edit'
		post '/courses/edit' => 'courses#update'
		get '/courses/delete' => 'courses#delete'
		get '/courses/show' => 'courses#show'
		
		resources :courses
		
		get 'students/new' => 'student#new'
		post 'students' => 'student#create'
		get 'students' => 'student#index'
		
		get '/' => 'courses#index'
		
end
