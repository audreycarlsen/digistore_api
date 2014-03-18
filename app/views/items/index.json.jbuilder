json.items @items do |item|
  json.extract! item, :id, :current_price, :quantity, :cart_id, :product_id, :created_at, :updated_at
end