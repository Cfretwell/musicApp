Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:new, :create, :show]
  # resources :bands 
  resources :albums, only: [:create, :edit, :show, :update, :destroy]
   
  resources :bands do 
    resources :albums, only: :new     
  end
    

  resource :session, only: [:create, :destroy, :new]


  root to: redirect( "/users/new")

end
