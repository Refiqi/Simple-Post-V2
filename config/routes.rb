Rails.application.routes.draw do
	root 'posts#index'
 get 'signup' => 'users#new'
 get 'login' => 'sessions#new'
 post 'login' => 'sessions#create'
 get 'logout' => 'sessions#destroy'
 delete 'comment/:id' => 'comments#destroy', as: 'delete'
 resources :users
 
 resources :posts do 
 	resources :comments
 	end

end