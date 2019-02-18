Rails.application.routes.draw do
 
  #devise_for :orders
  #devise_for :dishes
  #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  devise_for :users 
  resources :dishes
  resources :orders do
     member do # sepcifies id needed to add to the order
      get 'prepare'
      post 'add'
      delete 'remove'
       #'/orders/:id prepare'
      put 'submit'
    end
  end  
     root 'orders#index'
end
