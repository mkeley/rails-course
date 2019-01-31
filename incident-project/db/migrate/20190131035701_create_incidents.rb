class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.integer :ticket_number
      t.string :issue
      t.string :target_date
      t.string :user_IT_code
      t.timestamps
    end
  end
end
