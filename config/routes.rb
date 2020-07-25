Rails.application.routes.draw do
  # Top to Bottom --> Specific to Less Specific
  get '/welcome', to: "welcome#home", as: "welcome_page"
  root to: "welcome#home"
  delete '/routine_exercise_delete/:routine_id/:id', to: "routine_exercises#destroy", as: "delete_routine_exercise"
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  resources :routines
  resources :exercises



  resources :routines, only: [:show] do
    resources :exercises, only: [:show, :index, :edit, :update, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
