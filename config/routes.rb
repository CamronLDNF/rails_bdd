Rails.application.routes.draw do
  get 'articles/index'

  resources :articles do
    resources :comments
  end

  root controller: :articles, action: :index
end