class CreateEngineers < ActiveRecord::Migration[5.2]
  def change
    create_table :engineers do |t|
      t.integer :engineer_id
      t.string :engineer_status
      t.string :engineer_location
      t.string :engineer_picture
      t.timestamps
    end
  end
end
