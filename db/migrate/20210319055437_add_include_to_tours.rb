class AddIncludeToTours < ActiveRecord::Migration[6.0]
  def change
    add_column :tours, :include, :text
  end
end
