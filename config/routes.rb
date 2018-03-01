Rails.application.routes.draw do
  post 'add_to_cart' => 'cart#add_to_cart'

  get 'view_order' => 'cart#view_order'

  get 'cart/remove_item'

  get 'cart/update_quantity'

  get 'checkout' => 'cart#checkout'

  get 'store' => 'storefront#all_items'

  get 'categorical' => 'storefront#items_by_category'

  post 'order_complete' => 'cart#order_complete'

  post 'remove_item' => 'cart#remove_item'

  post 'update_quantity' => 'cart#update_quantity'

  resources :products
  devise_for :users
  resources :comments
  resources :posts

  get 'posts' => 'post#index'

  root 'home#welcome'

  get 'about' => 'home#about'

  get '/:name' => 'posts#user_posts', as: :user_posts



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
