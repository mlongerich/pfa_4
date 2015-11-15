Rails.application.routes.draw do
  root to: 'static_pages#home'
  match '/donate', to: 'static_pages#donate', via: 'get'
  match '/thailand', to: 'static_pages#thailand', via: 'get'
  match '/sponsorship', to: 'static_pages#sponsorship', via: 'get'
  match '/india', to: 'static_pages#india', via: 'get'
#  match '/hopeofglory', to: 'static_pages#hopeofglory', via: 'get'
#  match '/sunshine', to: 'static_pages#sunshine', via: 'get'
#  match '/specialprojects', to: 'static_pages#specialprojects', via: 'get'
  match '/blog', to: 'static_pages#blog', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
#  get 'static_pages/about'
#  get 'static_pages/donate'
#  get 'static_pages/sponsorship'
#  get 'static_pages/hopeofglory'
#  get 'static_pages/sunshine'
#  get 'static_pages/specialprojects'
#  get 'static_pages/blog'
#  get 'static_pages/contact'

  # resources :static_pages
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
