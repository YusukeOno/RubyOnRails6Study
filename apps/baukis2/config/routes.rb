Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :staff, path: "" do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
  end

  namespace :admin do
    root "top#index"
    get "login" => "sessions#new", as: :login
    post "session" => "sessions#create", as: :session
    delete "session" => "sessions#destroy"
    resources :staff_members
  end

  namespace :customer do
    root "top#index"
  end
end
