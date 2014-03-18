json.product @products do |product|
  json.extract! product, :id, :name, :price, :description, :image
end