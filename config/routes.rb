EchidnaQq::Application.routes.draw do
  authenticated :user do
    root :to => 'users#friends'
  end
  root :to => "home#index"
  
  match "/friends" => "users#friends", via: :get
  match "/friends/:openid" => "users#del_friend", via: :delete, as: 'del_friend'

  devise_for :users do
    get "/users/login" => "users#new"
    get "/users/callback" => "users#callback"
    delete '/users/logout' => "users#logout"
  end
  
  resources :users
end