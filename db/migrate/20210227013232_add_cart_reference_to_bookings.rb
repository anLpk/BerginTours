class AddCartReferenceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :cart, null: false, foreign_key: true
  end
end
