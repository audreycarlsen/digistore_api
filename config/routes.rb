DigistoreApi::Application.routes.draw do

  defaults format: :json do
    get "/products", to: "products#index"
    root to: "products#index"
  end

end
