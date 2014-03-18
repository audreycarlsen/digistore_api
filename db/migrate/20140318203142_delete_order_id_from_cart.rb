class DeleteOrderIdFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :order_id
  end
end
