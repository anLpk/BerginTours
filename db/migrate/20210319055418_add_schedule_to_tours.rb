class AddScheduleToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :schedule, :text
  end
end
