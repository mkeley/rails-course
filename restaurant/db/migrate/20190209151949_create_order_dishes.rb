class CreateOrderDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :order_dishes do |t|
      t.integer :order_id
      t.integer :dish_id
      t.timestamps
    end
  end
end
