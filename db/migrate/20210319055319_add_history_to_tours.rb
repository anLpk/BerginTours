class AddHistoryToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :history, :text
  end
end
