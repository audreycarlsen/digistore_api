DigistoreApi::Application.routes.draw do

  defaults format: :json do
    get "/products",    to: "products#index"
    get "/product/:id", to: "products#show"
  end

end
