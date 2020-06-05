Rails.application.routes.draw do
  # Top to Bottom --> Specific to Less Specific
  get '/welcome', to: "welcome#home", as: "welcome_page"

  resources :routines

  resources :routines, only: [:show] do
    # nested resource for exercises
    resources :exercises, only: [:show, :index]
  end


  resources :exercises


  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  root to: "welcome#home"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
