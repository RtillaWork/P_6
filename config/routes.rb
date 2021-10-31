Rails.application.routes.draw do
  
  get 'activities/by_categories', to: 'activities#by_categories'
  
  resources :activities
  resources :activity_types
  
  # Naura: Customize Devise controller route after its updated
  # devise_for :users, controllers: {  sessions: 'users/sessions' }
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # Naura: add /start and /stop routes for Controller#start and Controller#stop methods
  
  get 'welcome/home'
  get 'welcome/about'

  root to: 'welcome#home'
  
end
