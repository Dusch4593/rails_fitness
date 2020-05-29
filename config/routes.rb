Rails.application.routes.draw do
  resources :routine_exercises
  resources :exercises
  resources :routines
  root to: "welcome#home"
  devise_for :users

  resources :routines do
    resources :exercises
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
