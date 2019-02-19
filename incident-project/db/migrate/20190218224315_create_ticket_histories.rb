class CreateTicketHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :ticket_histories do |t|
      t.string :user_id
      t.string :ticket_id
      t.date :create_at
      t.string :accepted
      t.string :reviewed
      t.string :notated
      
      t.timestamps
    end
  end
end
