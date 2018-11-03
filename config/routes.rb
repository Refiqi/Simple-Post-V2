Rails.application.routes.draw do
 root 'posts#index', as: :home
 
 resources :posts

end