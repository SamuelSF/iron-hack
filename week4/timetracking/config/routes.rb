Rails.application.routes.draw do

  get '/', to: 'site#home'

  get '/contact', to: 'site#contact'

  get '/user/:name', to: 'site#say_name'

  get '/calculator', to: 'site#calculator'

  post '/calculate', to: 'site#calculate'

  get '/projects', to: 'projects#index'

  get '/projects/new', to: 'projects#new'

  post '/projects/', to: 'projects#create'

  get '/projects/:id', to: 'projects#show'

  get '/projects/:project_id/time_entries', to: 'time_entries#index'

  get '/projects/:project_id/time_entries/new', to: 'time_entries#new'

  post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

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
