class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :user_id
      t.string :ticket_id
      t.date :issue_date
      t.date :target_date
      t.date :completion_date
      t.string :user_it_code
      t.string :description
      t.timestamps
    end
  end
end
