Rails.application.routes.draw do
  namespace :admin do
    resources :articles
  end
  scope module: 'admin' do
    resources :articles
  end
  resources :articles do
    resources :comments, shallow: true
  end
  root "articles#index"
  get "article/id", to: "articles#show"

end
