class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.string :row
      t.string :column

      t.timestamps
    end
  end
end
