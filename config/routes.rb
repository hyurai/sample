Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  }   

  devise_scope :user do
    get "user/:id", :to => "users/registrations#detail"
    get "signup", :to => "users/registrations#new"
    get "login", :to => "users/sessions#new"
    get "logout", :to => "users/sessions#destroy"
  end

  

  resources :users,only:[:show,:update] do
    resources :like,only:[:create,:destroy]
  end

  resources :tweets,only:[:index,:new,:create,:show,:destroy] do
    resources :comments,only:[:create,:destroy]
  end
end
