Rails.application.routes.draw do
  resources :technologies
  resources :projects
  resources :skill_types
  resources :skills
  resources :user_types
  resources :social_networks
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
