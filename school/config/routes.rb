Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  		get '/courses/new' => 'courses#new'
		post '/courses' => 'courses#create'
		get '/courses' => 'courses#index'
		get '/courses/edit' => 'courses#edit'
		post '/courses/edit' => 'courses#update'
		get 'courses/delete' => 'courses#delete'

end
