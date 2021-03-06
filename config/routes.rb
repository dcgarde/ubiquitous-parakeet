Rails.application.routes.draw do
  resources :projects
  resources :teams
  
  as :user do 
    put '/user/confirmation' => 'confirmations#update', :via => :path, :as => :update_user_confirmation
  end

  devise_for :users, controllers: {
    registrations: 'registrations',
    confirmations: 'confirmations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "home#index"
end
