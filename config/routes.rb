Rails.application.routes.draw do

  get 'vibe_codes/test'

  get 'vibe_codes/new'

  get 'vibe_codes/index'

  # resources :users

resources :users do
  resources :wallet do
    resources :vibe_codes
  end
  resources :skills
  resources :posts
end
  patch 'user/update', to: 'users#update'
  get 'user/show', to: 'users#show', as: 'show_profile'
  get 'user/:user_id/post/:post_id', to: 'posts#show', as: 'show_post'

  get 'user/:id', to: 'users#show_other', as: 'show_other_profile'

  get 'skills/all/show', to: 'skills#index', as: 'skills_index'

  post 'vibes/redeem', to: 'vibe_codes#redeem'
  # get 'skills/show'
  #
  # get 'skills/index'
  #
  # get 'test', to: "static_pages#test"
  root 'static_pages#home'
  #
  # get 'static_pages/home'
  #
  # get 'pages/aboute' => 'high_voltage/pages#show', id: 'about'

  #
  # get 'users/index'
  #
  # get 'users/show'
  #
  # get 'user/index'
  #
  # get 'user/show'

  # get 'editprofile', to: 'users#edit', as: 'dongle'
  #above way means: edit profile goes to users/edit, but is referenced as dongle in the code
  #ie it would be dongle_path not editprofile_path

  get 'user/edit', to: 'users#edit', as: 'edit_profile'



  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products
  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
