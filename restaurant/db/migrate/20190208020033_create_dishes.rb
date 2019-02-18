class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.string :picture
      t.float :price
      t.timestamps
    end
  end
end
