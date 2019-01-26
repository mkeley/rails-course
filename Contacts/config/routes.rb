Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get '/contacts' => 'contacts#index'
    get 'contacts/new' => 'contacts#new'
    get '/contacts/edit' => 'contacts#edit'#sends a form back to the browser it does not update any information
    post '/contacts' => 'contacts#create'
    post '/contacts/edit' => 'contacts#update'
    get '/search' => 'contacts#search'


end
