class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :status
      t.timestamps
    end
  end
end
