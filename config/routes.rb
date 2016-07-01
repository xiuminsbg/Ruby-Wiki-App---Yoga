Rails.application.routes.draw do
  root 'pages#index'
  match ':controller(/:action(/:id))', :via => :get
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts
  get '/posts' => 'poses#index'
end
