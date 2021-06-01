class AddKidToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :kid, null: false, foreign_key: true
  end
end
