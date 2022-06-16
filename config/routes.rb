Rails.application.routes.draw do
  namespace :admin do
    resources :articles
  end
  resources :articles
  root "articles#index"
  get "article/id", to: "articles#show"

end
