SpicyData::Application.routes.draw do
  devise_for :users
  resources :tenacities

  resources :tenacityparams

  resources :admintreatmentopticals

  resources :adminreferencetypes

  resources :admindetectiontypes

  resources :admintreatmentprocesstypes

  resources :admintreatmentmechanicals

  resources :admintreatmentfumigations

  resources :admintreatmentsteams

  resources :admintreatmenttemperatures

  resources :adminagentspecs

  resources :adminagentgenus

  resources :adminagentfamilies

  resources :adminmatrixproductforms

  resources :adminmatrixstorageforms

  resources :adminmatrixplantparts

  resources :adminmatrixspecs

  resources :adminmatrixgenus

  resources :adminagentnames

  resources :adminmatrixnames

  get "home/index"
  get "home/insertdata"
  get "home/showdata"
  get "home/editdata"
  get "home/informations"
  get "home/discussions"
  get "home/help"
  get "home/agentinfo"
  get "home/matrixinfo"
  get "home/methodinfo"
  get "home/treatinfo"
  get "home/general_functions"
  get "home/how_insertions"
  get "home/how_search"
  get "home/what_info"
  get "home/join_discuss"
  get "home/change_profile"
  get "home/admin"
  get "home/impressum"
  get "contaminationstatuses/clone"


  resources :results

  resources :contaminationstatuses 

  resources :references

  resources :culdetecs

  resources :detections

  resources :samplepreparations

  resources :spikingparams

  resources :spikings

  resources :treatments

  resources :agentparams

  resources :agents

  resources :matrices

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root "home#index"

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
