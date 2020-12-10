#Félix Carle-Milette 2020-11-03
Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'accueil#menu'

  get '/mesrecettes', to: 'recettes#show'

  get '/modifier/recettes', to: 'recettes#modifier'

  resources :recettes

  namespace :admin do
    get '/recettes/:is_admin', to: 'user#show'
    get '/recettes/:id/:is_admin', to: 'recette#recette'
  end
  
end                            
