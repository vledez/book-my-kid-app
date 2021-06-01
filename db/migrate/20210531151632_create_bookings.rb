class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :date
      t.integer :hour
      t.string :need

      t.timestamps
    end
  end
end
