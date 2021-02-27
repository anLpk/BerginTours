class RemoveUserReferenceFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_reference :bookings, :user, null: false, foreign_key: true
  end
end
