class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.integer :ticket_number
      t.string :issue
      t.string :traget_date
      incident :user_it_code
      t.timestamps
    end
  end
end
