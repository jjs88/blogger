Blogger::Application.routes.draw do
  get "tags/show"
resources :articles do 
	resources :comments
end
resources :tags

root to: 'articles#index'


end
