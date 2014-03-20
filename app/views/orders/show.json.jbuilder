json.order do
  json.extract! @order, :id, :name, :email, :zipcode, :exp_date, :cvv, :status
  json.cart @order.cart_id
end