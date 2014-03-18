DigistoreApi::Application.routes.draw do

  defaults format: :json do
    resources :products, defaults: {format: :json}
    resources :items   , defaults: {format: :json}
    resources :orders  , defaults: {format: :json}
    resources :carts   , defaults: {format: :json}
  end

end
