Rails.application.routes.draw do

  # You can have the root of your site routed with "root"
  root 'meteors#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
    resources :meteors, only: [:index, :create, :show]
    resources :users, except: :index
    resources :addresses, except: [:edit, :update, :delete]

end
