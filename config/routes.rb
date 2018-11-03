Rails.application.routes.draw do
 root 'posts#index', as: :home
 get 'posts' => 'posts#new'
 get 'index/id' => 'posts#new' , as: :new
 get 'posts/:id' => 'posts#show' , as: :post
 resources :posts

end