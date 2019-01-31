class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :it_code
      t.integer :ticket_id 
      t.timestamps
    end
  end
end
