DigistoreApi::Application.routes.draw do

  defaults format: :json do
    get "/products", to: "products#index"
    get "/items",    to: "items#index"
    get "/orders",   to: "orders#index"
    get "/carts",    to: "carts#index"
  end

end
