Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
        get '/incidents/new' => 'incidents#new'
		post '/incidents' => 'incidents#create'
		get '/incidents' => 'incidents#index'
		get '/incidents/edit' => 'incidents#edit'
		post '/incidents/edit' => 'incidents#update'
		get 'incidents/delete' => 'incidents#delete'
  
  
end
