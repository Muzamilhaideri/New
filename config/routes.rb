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
  get "article/id", to: "articles#show", as: :post
  match 'article/id', to: 'articles#show', via: [:post, :get]
  get 'article/id', to: 'articles#show', constraints: {id: /[A-Z]\d{5}/ }
  direct :homepage do
    "https://guides.rubyonrails.org/v6.0/routing.html"
  end
  resources :articles, controller: 'images'
  resources :articles, as: 'posts'
  resources :articles, only: [:create, :index]
end
