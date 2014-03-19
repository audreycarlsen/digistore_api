json.cart do
  json.id @cart.id
  json.items @cart.items.pluck(:id)
end