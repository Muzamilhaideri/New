Rails.application.routes.draw do
  resources :articles
  root "articles#index"
  get "article/id", to: "articles#show"
end
