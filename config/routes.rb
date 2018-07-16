Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :activities
  resources :examination_types
  resources :students
  resources :coordinators
  get 'home/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'activities#index'

end
