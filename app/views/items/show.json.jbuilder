json.item do
  json.extract! @item, :id, :current_price, :quantity
  json.cart @item.cart_id
  json.product @item.product_id
end