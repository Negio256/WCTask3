Rails.application.routes.draw do
	get '/top' => 'root#top'
	get '/about/bookers' => 'root#about' ,as: 'abouts'
	get '/top' => 'posts#top'
	devise_for :users
  # For details on the DSL available within this file,
  # see http://guides.rubyonrails.org/routing.html
	resources :posts
	resources :users, only: [:show, :index, :edit, :update]
end
