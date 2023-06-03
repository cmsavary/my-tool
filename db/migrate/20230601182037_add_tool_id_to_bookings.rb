class AddToolIdToBookings < ActiveRecord::Migration[7.0]
  def change
    add_reference :bookings, :tool, null: false, foreign_key: true
  end
end
