Rails.application.routes.draw do
  namespace :admin do
    resources :articles
  end
  scope module: 'admin' do
    resources :articles
  end
  concern :commentable do
    resources :comments
  end
  resources :articles, concerns: :commentable, shallow: true
  root "articles#index"
  get "article/id", to: "articles#show"
  resources :articles do
    collection do
      get 'search'
    end
  end
  resources :articles do
    member do
      get'search'
    end
  end
  get 'article(/:id)', to: "articles#show"
  get "article/id", to: "articles#show"
end
