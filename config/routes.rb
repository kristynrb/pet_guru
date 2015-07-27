Rails.application.routes.draw do
  root 'static#landing'

  resources :users do
    resources :pets, shallow: true
  end

  post '/users/:user_id/pets', to: 'pets#create', as: 'newpet'

  get 'questionnaire', to: 'static#questionnaire', as: 'questionnaire'
  get 'questionnaire-edit/:pet_id', to: 'static#questionnaireEdit', as: 'questionnaireEdit'

  get 'dashboard', to: 'static#dashboard', as: 'dashboard'
  post 'pets/:pet_id', to: 'static#dashboard', as: 'pet-edit'
  patch '/dashboard', to: 'pets#update', as: 'pet-update'

  get '/static/care/:pet_id', to: 'care#show', as: 'care'
  get 'static/care/:pet_id/new', to: 'care#new', as: 'care-new'
  post 'static/care/:pet_id', to: 'care#create', as: 'care-create'
  get 'care-edit/:care_id', to: 'care#edit', as: 'care-edit'
  patch 'care-update/:care_id', to: 'care#update', as: 'care-update'

  get '/static/play/:pet_id', to: 'play#show', as: 'play'
  get 'static/play/:pet_id/new', to: 'play#new', as: 'play-new'
  post 'static/play/:pet_id', to: 'play#create', as: 'play-create'
  get 'play-edit/:play_id', to: 'play#edit', as: 'play-edit'
  patch 'play-update/:play_id', to: 'play#update', as: 'play-update'

  get '/static/medical/:pet_id', to: 'medical#show', as: 'medical'
  get 'static/medical/:pet_id/new', to: 'medical#new', as: 'medical-new'
  post 'static/medical/:pet_id', to: 'medical#create', as: 'medical-create'
  get 'medical-edit/:medical_id', to: 'medical#edit', as: 'medical-edit'
  patch 'medical-update/:medical_id', to: 'medical#update', as: 'medical-update'

  resource :session, only: [:new, :create, :destroy]


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
