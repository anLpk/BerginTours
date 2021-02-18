class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :last_name
      t.string :number_of_adult
      t.string :number_of_children
      t.string :number_of_infant
      t.datetime :start_date
      t.string :mobile_number
      t.string :language
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.references :tour, null: false, foreign_key: true

      t.timestamps
    end
  end
end
