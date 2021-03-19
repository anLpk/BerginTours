class AddExcludeToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :exclude, :text
  end
end
