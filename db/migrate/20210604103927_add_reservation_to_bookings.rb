class AddReservationToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :reservation, :string
  end
end
