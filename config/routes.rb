Rails.application.routes.draw do
  get 'sessions/new'
  get '/' => 'home#top'
  resources :posts
  get 'login' => 'sessions#new'
  get 'logout' => 'sessions#destroy'
  resources :sessions

end
