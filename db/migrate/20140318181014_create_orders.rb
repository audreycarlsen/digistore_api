class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :cart_id
      t.string :name
      t.string :email
      t.string :zipcode
      t.string :exp_date
      t.string :cvv

      t.timestamps
    end
  end
end
