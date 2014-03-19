DigistoreApi::Application.routes.draw do

  defaults format: :json do
    resources :products
    resources :items   
    resources :orders  
    resources :carts   
  end

end
