Blogger::Application.routes.draw do
  get "author_sessions/new"
  get "authorsessions/new"
  get "tags/show"
resources :articles do 
	resources :comments
end
resources :tags
resources :authors

resources :author_sessions, only: [ :new, :create, :destroy ]

get 'login'  => 'author_sessions#new'
get 'logout' => 'author_sessions#destroy'

root to: 'articles#index'


end
