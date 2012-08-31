ActionController::Routing::Routes.draw do |map|

  # resources
  map.resources :users
  map.resources :line_items
  map.resources :orders
  map.resources :products

  # root
  map.root :controller => "store"

  # catch-alls
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
